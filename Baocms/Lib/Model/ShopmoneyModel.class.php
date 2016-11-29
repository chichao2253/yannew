<?php

/* 
 * 软件为合肥生活宝网络公司出品，未经授权许可不得使用！
 * 作者：baocms团队
 * 官网：www.baocms.com
 * 邮件: youge@baocms.com  QQ 800026911
 */

class ShopmoneyModel extends CommonModel{
    protected $pk   = 'money_id';
    protected $tableName =  'shop_money';
    
    
    public function sumByIds($bg_date,$end_date,$shop_ids = array()){
        if(empty($shop_ids)) return array();
        $bg_time =  (int) strtotime($bg_date.' 00:00:00');
        $end_time = (int) strtotime($end_date.' 23:59:59');
        $shop_ids = join(',',$shop_ids);
        $datas = $this->query("SELECT  count(1) as num,sum(money) as money from ".$this->getTableName()." where  create_time >= '{$bg_time}' AND  create_time <='{$end_time}' AND shop_id IN({$shop_ids}) ");
        return $datas[0];
    }
      public function sumByIdsTop10($bg_date,$end_date,$shop_ids = array()){
        if(empty($shop_ids)) return array();
        $bg_time =  (int) strtotime($bg_date.' 00:00:00');
        $end_time = (int) strtotime($end_date.' 23:59:59');
        $shop_ids = join(',',$shop_ids);
        $datas = $this->query("SELECT shop_id,sum(money) as money from ".$this->getTableName()." where  create_time >= '{$bg_time}' AND  create_time <='{$end_time}' AND shop_id IN({$shop_ids}) group by  shop_id order by  sum(money) desc limit 0,10 ");
        return $datas;
    }
    
    public function  sum($bg_date,$end_date){
        $bg_time =  (int) strtotime($bg_date.' 00:00:00');
        $end_time = (int) strtotime($end_date.' 23:59:59');
        return $this->query("SELECT  shop_id,sum(money) as money from ".$this->getTableName()." where  create_time >= '{$bg_time}' AND  create_time <='{$end_time}' group by shop_id ");
    }
    
    public function tjmonthCount($month = '',$shop_id = ''){
        $sql = "";
        $month = $month ? str_replace('-', '', $month): '';
        if($shop_id){
			$shop_ids = $shop_id[1];
		}
        if($month && $shop_id){
            $sql="select count(1) as num from (SELECT sum(money) as money,FROM_UNIXTIME(create_time,'%Y%m') as m,shop_id  FROM ".$this->getTableName()." where FROM_UNIXTIME(create_time,'%Y%m') = '{$month}' and shop_id IN ({$shop_ids}) group  by  FROM_UNIXTIME(create_time,'%Y%m'),shop_id)tb  ";         
        }else{
            if($month){
                $sql=" select count(1) as num from (SELECT sum(money) as money,FROM_UNIXTIME(create_time,'%Y%m') as m,shop_id  FROM ".$this->getTableName()." where FROM_UNIXTIME(create_time,'%Y%m') = '{$month}'  group  by  FROM_UNIXTIME(create_time,'%Y%m'),shop_id)tb  ";         

            }elseif($shop_id){
                $sql=" select count(1) as num from (SELECT sum(money) as money,FROM_UNIXTIME(create_time,'%Y%m')  as m,shop_id  FROM ".$this->getTableName()." where shop_id IN ({$shop_ids})   group  by  FROM_UNIXTIME(create_time,'%Y%m'),shop_id)tb  ";         
            }else{
                $sql=" select count(1) as num from (SELECT sum(money) as money,FROM_UNIXTIME(create_time,'%Y%m')  as m,shop_id  FROM ".$this->getTableName()."    group  by  FROM_UNIXTIME(create_time,'%Y%m'),shop_id)tb  ";         
            }
        }
        
        $data = $this->query($sql);
        return (int)$data[0]['num'];
     
    }
    
    public function tjmonth($month = '',$shop_id = '',$start,$num){
        $sql = "";
        $month = $month ? str_replace('-', '', $month): '';
        $start = (int)$start;
        $num = (int)$num;
		if($shop_id){
			$shop_ids = $shop_id[1];
		}
		//print_r($shop_ids);die;
        //$shop_id = (int)$shop_id;


        if($month && $shop_id){
            $sql="SELECT sum(money) as money,FROM_UNIXTIME(create_time,'%Y%m') as m,shop_id  FROM ".$this->getTableName()." where FROM_UNIXTIME(create_time,'%Y%m') = '{$month}' and shop_id IN ('{$shop_ids}') group  by  FROM_UNIXTIME(create_time,'%Y%m'),shop_id order by FROM_UNIXTIME(create_time,'%Y%m') desc  limit {$start},{$num} ";         
        }else{
            if($month){
                $sql="SELECT sum(money) as money,FROM_UNIXTIME(create_time,'%Y%m') as m,shop_id  FROM ".$this->getTableName()." where FROM_UNIXTIME(create_time,'%Y%m') = '{$month}'  group  by  FROM_UNIXTIME(create_time,'%Y%m'),shop_id  order by FROM_UNIXTIME(create_time,'%Y%m') desc   limit {$start},{$num}  ";         

            }elseif($shop_id){
                $sql="SELECT sum(money) as money,FROM_UNIXTIME(create_time,'%Y%m')  as m,shop_id  FROM ".$this->getTableName()." where shop_id IN ({$shop_ids})   group  by  FROM_UNIXTIME(create_time,'%Y%m'),shop_id  order by FROM_UNIXTIME(create_time,'%Y%m') desc   limit {$start},{$num} ";         
            }else{
                $sql="SELECT sum(money) as money,FROM_UNIXTIME(create_time,'%Y%m')  as m,shop_id  FROM ".$this->getTableName()."    group  by  FROM_UNIXTIME(create_time,'%Y%m'),shop_id  order by FROM_UNIXTIME(create_time,'%Y%m') desc  limit {$start},{$num}  ";         
            }
        }
       // echo $sql;
        $data = $this->query($sql);
		//print_r($data);die;
        return $data;
    }
    
    
    
    public function tjdayCount($day = '',$shop_id = ''){
        $sql = "";
        $day = $day ? str_replace('-', '', $day): '';
        if($shop_id){
			$shop_ids = $shop_id[1];
		}
        if($day && $shop_id){
            $sql="select count(1) as num from (SELECT sum(money) as money,FROM_UNIXTIME(create_time,'%Y%m%d') as m,shop_id  FROM ".$this->getTableName()." where FROM_UNIXTIME(create_time,'%Y%m%d') = '{$day}' and shop_id IN ({$shop_ids}) group  by  FROM_UNIXTIME(create_time,'%Y%m%d'),shop_id)tb  ";         
        }else{
            if($day){
                $sql=" select count(1) as num from (SELECT sum(money) as money,FROM_UNIXTIME(create_time,'%Y%m%d') as m,shop_id  FROM ".$this->getTableName()." where FROM_UNIXTIME(create_time,'%Y%m%d') = '{$day}'  group  by  FROM_UNIXTIME(create_time,'%Y%m%d'),shop_id)tb  ";         

            }elseif($shop_id){
                $sql=" select count(1) as num from (SELECT sum(money) as money,FROM_UNIXTIME(create_time,'%Y%m%d')  as m,shop_id  FROM ".$this->getTableName()." where shop_id IN ({$shop_ids})   group  by  FROM_UNIXTIME(create_time,'%Y%m%d'),shop_id)tb  ";         
            }else{
                $sql=" select count(1) as num from (SELECT sum(money) as money,FROM_UNIXTIME(create_time,'%Y%m%d')  as m,shop_id  FROM ".$this->getTableName()."    group  by  FROM_UNIXTIME(create_time,'%Y%m%d'),shop_id)tb  ";         
            }
        }
        
        $data = $this->query($sql);
        return (int)$data[0]['num'];
     
    }
    
    public function tjday($day = '',$shop_id = '',$start,$num){
        $sql = "";
        $day = $day ? str_replace('-', '', $day): '';
        $start = (int)$start;
        $num = (int)$num;
       if($shop_id){
			$shop_ids = $shop_id[1];
		}
        if($day && $shop_id){
            $sql="SELECT sum(money) as money,FROM_UNIXTIME(create_time,'%Y%m%d') as m,shop_id  FROM ".$this->getTableName()." where FROM_UNIXTIME(create_time,'%Y%m%d') = '{$day}' and shop_id IN ({$shop_ids}) group  by  FROM_UNIXTIME(create_time,'%Y%m%d'),shop_id order by FROM_UNIXTIME(create_time,'%Y%m%d') desc  limit {$start},{$num} ";         
        }else{
            if($day){
                $sql="SELECT sum(money) as money,FROM_UNIXTIME(create_time,'%Y%m%d') as m,shop_id  FROM ".$this->getTableName()." where FROM_UNIXTIME(create_time,'%Y%m%d') = '{$day}'  group  by  FROM_UNIXTIME(create_time,'%Y%m%d'),shop_id  order by FROM_UNIXTIME(create_time,'%Y%m%d') desc   limit {$start},{$num}  ";         

            }elseif($shop_id){
                $sql="SELECT sum(money) as money,FROM_UNIXTIME(create_time,'%Y%m%d')  as m,shop_id  FROM ".$this->getTableName()." where shop_id IN ({$shop_ids})   group  by  FROM_UNIXTIME(create_time,'%Y%m%d'),shop_id  order by FROM_UNIXTIME(create_time,'%Y%m%d') desc   limit {$start},{$num} ";         
            }else{
                $sql="SELECT sum(money) as money,FROM_UNIXTIME(create_time,'%Y%m%d')  as m,shop_id  FROM ".$this->getTableName()."    group  by  FROM_UNIXTIME(create_time,'%Y%m%d'),shop_id  order by FROM_UNIXTIME(create_time,'%Y%m%d') desc  limit {$start},{$num}  ";         
            }
        }
       // echo $sql;
        $data = $this->query($sql);
		//print_r($data);die;
        return $data;
    }
    
    
    
    
    
     public function tjyearCount($year = '',$shop_id = ''){
        $sql = "";
        $year = (int)$year ;
        if($shop_id){
			$shop_ids = $shop_id[1];
		}
        if($year && $shop_id){
            $sql="select count(1) as num from (SELECT sum(money) as money,FROM_UNIXTIME(create_time,'%Y') as m,shop_id  FROM ".$this->getTableName()." where FROM_UNIXTIME(create_time,'%Y') = '{$year}' and shop_id IN ({$shop_ids}) group  by  FROM_UNIXTIME(create_time,'%Y%m'),shop_id)tb  ";         
        }else{
            if($year){
                $sql=" select count(1) as num from (SELECT sum(money) as money,FROM_UNIXTIME(create_time,'%Y') as m,shop_id  FROM ".$this->getTableName()." where FROM_UNIXTIME(create_time,'%Y') = '{$year}'  group  by  FROM_UNIXTIME(create_time,'%Y'),shop_id)tb  ";         

            }elseif($shop_id){
                $sql=" select count(1) as num from (SELECT sum(money) as money,FROM_UNIXTIME(create_time,'%Y')  as m,shop_id  FROM ".$this->getTableName()." where shop_id IN ({$shop_ids})   group  by  FROM_UNIXTIME(create_time,'%Y'),shop_id)tb  ";         
            }else{
                $sql=" select count(1) as num from (SELECT sum(money) as money,FROM_UNIXTIME(create_time,'%Y')  as m,shop_id  FROM ".$this->getTableName()."    group  by  FROM_UNIXTIME(create_time,'%Y'),shop_id)tb  ";         
            }
        }
        
        $data = $this->query($sql);
        return (int)$data[0]['num'];
     
    }
    
    public function tjyear($year = '',$shop_id = '',$start,$num){
        $sql = "";
        $year = (int)$year ;
        $start = (int)$start;
        $num = (int)$num;
        if($shop_id){
			$shop_ids = $shop_id[1];
		}

        if($year && $shop_id){
            $sql="SELECT sum(money) as money,FROM_UNIXTIME(create_time,'%Y') as m,shop_id  FROM ".$this->getTableName()." where FROM_UNIXTIME(create_time,'%Y') = '{$year}' and shop_id IN ({$shop_ids}) group  by  FROM_UNIXTIME(create_time,'%Y'),shop_id order by FROM_UNIXTIME(create_time,'%Y') desc  limit {$start},{$num} ";         
        }else{
            if($year){
                $sql="SELECT sum(money) as money,FROM_UNIXTIME(create_time,'%Y') as m,shop_id  FROM ".$this->getTableName()." where FROM_UNIXTIME(create_time,'%Y') = '{$year}'  group  by  FROM_UNIXTIME(create_time,'%Y'),shop_id  order by FROM_UNIXTIME(create_time,'%Y') desc   limit {$start},{$num}  ";         

            }elseif($shop_id){
                $sql="SELECT sum(money) as money,FROM_UNIXTIME(create_time,'%Y')  as m,shop_id  FROM ".$this->getTableName()." where shop_id IN ({$shop_ids})   group  by  FROM_UNIXTIME(create_time,'%Y'),shop_id  order by FROM_UNIXTIME(create_time,'%Y') desc   limit {$start},{$num} ";         
            }else{
                $sql="SELECT sum(money) as money,FROM_UNIXTIME(create_time,'%Y')  as m,shop_id  FROM ".$this->getTableName()."    group  by  FROM_UNIXTIME(create_time,'%Y'),shop_id  order by FROM_UNIXTIME(create_time,'%Y') desc  limit {$start},{$num}  ";         
            }
        }
        //echo $sql;
        $data = $this->query($sql);
        return $data;
    }
    
    
    
    
    
    public function money($bg_time,$end_time,$shop_id){      
        $bg_time   = (int)$bg_time;
        $end_time  = (int)$end_time;
        $shop_id = (int) $shop_id;
        if(!empty($shop_id)){
            $data = $this->query(" SELECT sum(money)/100 as price,FROM_UNIXTIME(create_time,'%m%d') as d from  ".$this->getTableName()."   where  create_time >= '{$bg_time}' AND create_time <= '{$end_time}' AND shop_id = '{$shop_id}'  group by  FROM_UNIXTIME(create_time,'%m%d')");   
        }else{
            $data = $this->query(" SELECT sum(money)/100 as price,FROM_UNIXTIME(create_time,'%m%d') as d from  ".$this->getTableName()."   where  create_time >= '{$bg_time}' AND create_time <= '{$end_time}'  group by  FROM_UNIXTIME(create_time,'%m%d')");      
        }
        $showdata = array();
        $days = array();
        
        for($i=$bg_time;$i<=$end_time;$i+=86400){
            $days[date('md',$i)] = '\''.date('m月d日',$i).'\''; 
        }
        $price = array();
        foreach($days  as $k=>$v){
            $price[$k] = 0;
            foreach($data as $val){
                if($val['d'] == $k){
                    $price[$k] = $val['price'];
                }
            }
        }
       $showdata['d'] = join(',',$days);
       $showdata['price'] = join(',',$price);
        return $showdata;
    }
    
}