<?php

/* 
 * 软件为合肥生活宝网络公司出品，未经授权许可不得使用！
 * 作者：baocms团队
 * 官网：www.baocms.com
 * 邮件: youge@baocms.com  QQ 800026911
 */

class TuandianpingpicsModel extends CommonModel{
    protected $pk   = 'pic_id';
    protected $tableName =  'tuan_dianping_pics';
    
    public function upload($order_id,$photos){
        $order_id = (int)$order_id;
        $this->delete(array("where"=>array('order_id'=>$order_id)));
        foreach($photos as $val){
            $this->add(array('pic'=>$val,'order_id'=>$order_id));
        }
        return true;
    }
    
   
    
    public function getPics($order_id){
        $order_id = (int)$order_id;
        return $this->where(array('order_id'=>$order_id))->select();
    }
    
}