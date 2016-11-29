<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="Expires" content="0">
        <meta http-equiv="Pragma" content="no-cache">
        <meta http-equiv="Cache-Control" content="no-store,no-cache"> 
        <meta name="Handheldfriendly" content="true">

        <meta name="viewport" content="width=device-width,initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no"/>
        
        <title><?php if($mobile_title)echo $mobile_title;else echo $CONFIG['site']['sitename'] ?></title>
        <meta name="description" content="<?php echo ($mobile_description); ?>" />
        <link rel="stylesheet" href="__TMPL__statics/css/css_1.css?v=20160125"/>
        <link rel="stylesheet" href="__TMPL__statics/css/reset.css?v=20160125"/>
        <link rel="stylesheet" href="__TMPL__statics/css/style.css?v=20160125"/>
        <link rel="stylesheet" href="__TMPL__statics/css/wl_style.css?v=20160125"/>
        
        <script> var BAO_PUBLIC = '__PUBLIC__';
            var BAO_ROOT = '__ROOT__';</script>
        
        <script src = "__TMPL__statics/js/jquery-1.7.1.min.js?v=20160422" ></script>
        <script src="__TMPL__statics/js/baocms.js?v=20160422"></script> 
        <script src="__TMPL__statics/js/jscookie.js?v=20150822"></script>
        <script src="__TMPL__statics/js/jquery.event.drag-1.5.min.js?v=20160422"></script>
        <script src="__TMPL__statics/js/jquery.touchSlider.js?v=20160422"></script>

        <script src="__TMPL__statics/js/layer/layer.js?v=20160422"></script>
        <script src="__PUBLIC__/js/web.js?v=20150718"></script>
        <script>
            function bd_encrypt(gg_lat, gg_lon)   // 百度地图测距偏差 问题修复
            {
                var x_pi = 3.14159265358979324 * 3000.0 / 180.0;
                var x = gg_lon;
                var y = gg_lat;
                var z = Math.sqrt(x * x + y * y) + 0.00002 * Math.sin(y * x_pi);
                var theta = Math.atan2(y, x) + 0.000003 * Math.cos(x * x_pi);
                var bd_lon = z * Math.cos(theta) + 0.0065;
                var bd_lat = z * Math.sin(theta) + 0.006;
                dingwei('<?php echo U("mobile/index/dingwei",array("t"=>$nowtime,"lat"=>"llaatt","lng"=>"llnngg"));?>', bd_lat, bd_lon);
            }
            navigator.geolocation.getCurrentPosition(function (position) {
                bd_encrypt(position.coords.latitude, position.coords.longitude);
            });
           
        </script>
        <?php if($is_app){?>
 
            <style>
                .page-center-box{top: 0rem !important;}
                #search-bar{top:0rem !important;}
                .serch-bar-mask{top:0.4rem !important; height: 100%; padding-bottom: 0;}
                #app_nav{top:0.4rem !important;}
                #loading{bottom: 0.1rem !important; height: 0.4rem !important;}
                #shangjia_tab{top: 0rem !important;}
                .app_page{top:0.3rem !important;}
                .shop_page{top:0.8rem !important;}
                #shangjia_detail{top:0.4rem !important;}
                .app_shangjia{top:0.4rem !important;}
                //.dw{top:369px !important;}
                .slides img{height: auto; width: 100%;}
            </style>
        <?php }?>
        
        <?php if($is_app&&!$is_android){?>
            <style>
                footer{ bottom: 0.15rem;}
                .lbs-tag .info-box{bottom: 0.12rem !important;}
                .yiyuan_buynum_mask .cont{bottom: 0.12rem !important;}
            </style>
        <?php }?>
        
        <?php if($is_app &&$ctl =='index'){ ?>
            <style>
                footer{ bottom: 0;}
            </style>
        <?php }?>
        
        <?php if ($is_android){?>
        <script type="text/javascript" language="javascript"> 
            function  getNewWebView(url1,url2){
               
               window.jsObj.HtmlcallJava(url1,url2);
            }
            
            function getContents(content){
                window.jsObj.getContent(content);
            }
        </script>
        <script>
            $(document).ready(function(){
                getContents("<?php echo ($mobile_description); ?>");
            })
        </script>
        <?php }?>
    </head>

<script>
$(function(){
	if ($('#shangjia_tab').length > 0)/*判断是否存在这个html代码*/
	{
		$('#shangjia_tab li').width(100 / $('#shangjia_tab li').length + '%');
		$('.page-center-box').css('top', '0.9rem');
	}//头部切换tab结束
});
</script>
<body>
    <?php if(!$is_app){?>
	<header>
        <a href="<?php echo U('shop/detail',array('shop_id'=>$shop_id));?>"><i class="icon-goback"></i></a>
		<div class="title"><?php echo ($shop["shop_name"]); ?></div>
        <i class="icon-menu"><a href="<?php echo AppLink('shop/favorites/',array('shop_id'=>$shop_id));?>">关注+</a></i>
	</header>
    <?php }?>
    <ul id="shangjia_tab">
       <li><a href="<?php echo U('shop/detail',array('shop_id'=>$shop_id));?>">首页</a></li>
        <li><a href="<?php echo U('shop/tuan',array('shop_id'=>$shop_id));?>">团购</a></li>
        <li><a class="on" href="<?php echo U('shop/goods',array('shop_id'=>$shop_id));?>">商品</a></li>
        <li><a href="<?php echo U('shop/coupon',array('shop_id'=>$shop_id));?>">优惠</a></li>
        <li><a href="<?php echo U('shop/dianping',array('shop_id'=>$shop_id));?>">评价</a></li>
    </ul>
	<div id="shangjia" class="page-center-box app_shangjia">
		<div id="scroll">
            <!--商家list开始-->
            <div class="hotList mb10">
                <ul class="list">
                    
                </ul>
            </div>
            <script>
                $(document).ready(function () {
                    loaddata('<?php echo ($nextpage); ?>', $(".list"), true);
                });
            </script>
            <!--商家list结束-->
        </div>
	</div>
    <div id="loading">
    <div class="bao_loading">正在加载中....</div>
</div>
<div class="blank">&nbsp;</div>
</body>
</html>