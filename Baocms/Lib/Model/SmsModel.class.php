<?php

/*
 * 软件为合肥生活宝网络公司出品，未经授权许可不得使用！
 * 作者：baocms团队
 * 官网：www.baocms.com
 * 邮件: youge@baocms.com  QQ 800026911
 */

class SmsModel extends CommonModel {
        protected $pk = 'sms_id';
        protected $tableName = 'sms';
        protected $token = 'bao_sms';
        public function send_yun($mobile, $randstring) {
        }

        function send($ch, $data) {
                curl_setopt($ch, CURLOPT_URL, 'https://sms.yunpian.com/v2/sms/single_send.json');
                curl_setopt($ch, CURLOPT_POSTFIELDS, http_build_query($data));
                return curl_exec($ch);
        }

        public function sendSms($code, $mobile, $data) {

                $tmpl = $this -> fetchAll();
                if (!empty($tmpl[$code]['is_open'])) {
                        $content = $tmpl[$code]['sms_tmpl'];
                        $config = D('Setting') -> fetchAll();
                        $data['sitename'] = $config['site']['sitename'];
                        $data['app'] = $config['site']['app'];
                        $data['tel'] = $config['site']['tel'];
                        foreach ($data as $k => $val) {
                                $val = str_replace('【', '', $val);
                                $val = str_replace('】', '', $val);
                                $content = str_replace('{' . $k . '}', $val, $content);
                        }
                        if (is_array($mobile)) {
                                $mobile = join(',', $mobile);
                        }

                        if ($config['sms']['charset']) {
                                $content = auto_charset($content, 'UTF8', 'gbk');
                        }
                        $apikey = 'ea2fdee78347af9efbf351e24798072d';
                        $url = "http://yunpian.com/v1/sms/send.json";

                        $ch = curl_init();
                        curl_setopt($ch, CURLOPT_HTTPHEADER, array('Accept:text/plain;charset=utf-8', 'Content-Type:application/x-www-form-urlencoded', 'charset=utf-8'));
                        /* 设置返回结果为流 */
                        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);

                        /* 设置超时时间*/
                        curl_setopt($ch, CURLOPT_TIMEOUT, 10);

                        /* 设置通信方式 */
                        curl_setopt($ch, CURLOPT_POST, 1);
                        curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
                        $encoded_text = urlencode("$content");
                        $mobile = urlencode("$mobile");
                        $data = array('text' => $content, 'apikey' => $apikey, 'mobile' => $mobile);
                        $json_data = $this -> send($ch, $data);
                        $array = json_decode($json_data, true);


                        if ($res == $config['sms']['code'])
                                return true;
                }
                return false;
        }

        public function mallTZshop($order_id) {
                if (is_numeric($order_id) && ($order_id = (int)$order_id)) {
                        $order_id = array($order_id);
                }
                $orders = D('Order') -> itemsByIds($order_id);
                $shop = array();
                foreach ($orders as $val) {
                        $shop[$val['shop_id']] = $val['shop_id'];
                }
                $shops = D('Shop') -> itemsByIds($shop);
                foreach ($shops as $val) {
                        $this -> sendSms('sms_shop_mall', $val['mobile'], array());
                }
                return true;
        }

        public function eleTZshop($order_id) {

                if (is_numeric($order_id) && ($order_id = (int)$order_id)) {
                        $order = D('Eleorder') -> find($order_id);

                        $shop = D('Shop') -> find($order['shop_id']);

                        $this -> sendSms('sms_shop_ele', $shop['tel'], array());
                }
                return true;
        }

        public function dingTZshop($order_id) {
                if (is_numeric($order_id) && ($order_id = (int)$order_id)) {
                        $order = D('Shopdingorder') -> find($order_id);
                        $shop = D('Shopding') -> find($order['shop_id']);
                        $this -> sendSms('sms_shop_ele', $shop['mobile'], array());
                }
                return true;
        }

        public function tuanTZshop($shop_id) {
                $shop_id = (int)$shop_id;
                $shop = D('Shop') -> find($shop_id);
                //file_put_contents('/www/web/bao_baocms_cn/public_html/Baocms/Lib/Model/aaa.txt', var_export($shop, true));
                $this -> sendSms('sms_shop_tuan', $shop['mobile'], array());
                return true;
        }

        public function fetchAll() {
                $cache = cache(array('type' => 'File', 'expire' => $this -> cacheTime));
                if (!$data = $cache -> get($this -> token)) {
                        $result = $this -> order($this -> orderby) -> select();
                        $data = array();
                        foreach ($result as $row) {
                                $data[$row['sms_key']] = $row;
                        }
                        $cache -> set($this -> token, $data);
                }
                return $data;
        }

}
