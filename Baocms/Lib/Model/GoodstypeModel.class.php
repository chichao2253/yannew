<?php

/* 
 * 软件为合肥生活宝网络公司出品，未经授权许可不得使用！
 * 作者：baocms团队
 * 官网：www.baocms.com
 * 邮件: youge@baocms.com  QQ 800026911
 */

class GoodstypeModel extends CommonModel{
    protected $pk   = 'type_id';
    protected $tableName =  'goods_type';
    
    
    public function _format($data){
        $data['all_price'] = round($data['price']/100,2); 
        $data['have_price'] = round($data['yunfei']/100,2); 
        return $data;
    }
}