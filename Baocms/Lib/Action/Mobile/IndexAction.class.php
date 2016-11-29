<?php

/*
 * 软件为合肥生活宝网络公司出品，未经授权许可不得使用！
 * 作者：baocms团队
 * 官网：www.baocms.com
 * 邮件: youge@baocms.com  QQ 800026911
 */

class IndexAction extends CommonAction {

    public function index() {
        $this->mobile_title = '首页';
        $nav = D('Function')->where('is_index = 1')->order('orderby asc')->cache(true)->select();
        
        $this->assign('nav',$nav);
        $this->display();
    }

    public function dingwei() {
        $lat = $this->_get('lat', 'htmlspecialchars');
        $lng = $this->_get('lng', 'htmlspecialchars');
        cookie('lat', $lat);
        cookie('lng', $lng);
        echo NOW_TIME;
    }

    public function search() {
        $keys = D('Keyword')->fetchAll();
        $keytype = D('Keyword')->getKeyType();
        $this->assign('keys',$keys);
        $this->mobile_title = '搜索';
        $this->display();
    }
	
	 public function more() {
        $this->mobile_title = '更多'; 
        $this->display();
    }

}
