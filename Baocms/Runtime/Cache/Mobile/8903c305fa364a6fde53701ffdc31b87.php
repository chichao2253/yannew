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


<body>
    <?php if(!$is_app){?>
	<header>
            <a href="<?php echo AppLink('index/index');?>"><i class="icon-goback"></i></a>
		<div class="title">
        	<div class="box_search overflow_clear">
                    <a href="<?php echo AppLink('index/search');?>">
                <i></i>
                输入商户名/关键词
                </a>
            </div>
        </div>
	</header>
    <?php }?>
	<!-- 筛选TAB -->
    <script>
		$(function(){
			$("#search-bar li").each(function(e){
				$(this).click(function(){
					if($(this).hasClass("on")){
						$(this).parent().find("li").removeClass("on");
						$(this).removeClass("on");
						$(".serch-bar-mask").hide();
					}
					else{
						$(this).parent().find("li").removeClass("on");
						$(this).addClass("on");
						$(".serch-bar-mask").show();
					}
					$(".serch-bar-mask .serch-bar-mask-list").each(function(i){
						
						if(e==i){
							$(this).parent().find(".serch-bar-mask-list").hide();
							$(this).show();
						}
						else{
							$(this).hide();
						}
						$(this).find("li").click(function(){
							$(this).parent().find("li").removeClass("on");
							$(this).addClass("on");
						});
					});
				});
			});
		});
    </script>
    
	<div id="search-bar">
		<ul>
			<li><span>分类</span><i></i></li>
			<li><span>地区</span><i></i></li>
			<li><span>商圈</span><i></i></li>
			<li><span>排序</span><i></i></li>
		</ul>
	</div>
    <div class="serch-bar-mask" style="display:none;">
        <div class="serch-bar-mask-list">
            <ul>
                <li class="on"><a class="<?php if(empty($cat)): ?>on<?php endif; ?> "><a href="<?php echo AppLink('shop/index');?>" >全部分类</a></li>
                <?php if($cat): ?><li><a style="color:red;" href="<?php echo LinkTo('shop/index',array('cat'=>$cat));?>"><?php echo ($shopcates[$cat]['cate_name']); ?></a></li><?php endif; ?>   
                <?php if(is_array($shopcates)): foreach($shopcates as $key=>$var): if($var["parent_id"] == $cat): ?><li><a <?php if($var["cate_id"] == $cat): ?>style="color:red;"<?php endif; ?>  title="<?php echo ($var["cate_name"]); ?>" href="<?php echo LinkTo('shop/index',array('cat'=>$var['cate_id']));?>"><?php echo ($var["cate_name"]); ?></a></li><?php endif; endforeach; endif; ?>
            </ul>
        </div>
        <div class="serch-bar-mask-list">
            <ul>
                <li><a href="<?php echo LinkTo('shop/index',array('cat'=>$cat));?>" class="<?php if(empty($area_id)): ?>on<?php endif; ?>">全部地区</a></li>
                <?php if(is_array($areas)): foreach($areas as $key=>$var): if(($var["city_id"]) == $city_id): ?><li class="down_menuList_li"><a <?php if($var["area_id"] == $area_id): ?>style="color:red;"<?php endif; ?>   href="<?php echo LinkTo('shop/index',array('cat'=>$cat,'area'=>$var['area_id']));?>"><?php echo ($var["area_name"]); ?></a></li><?php endif; endforeach; endif; ?>
            </ul>
        </div>
        <div class="serch-bar-mask-list">
            <ul>                        
                <li><a href="<?php echo LinkTo('shop/index',array('cat'=>$cat,'area'=>$area_id));?>" class="<?php if(empty($business_id)): ?>on<?php endif; ?>">全部商圈</a></li>
                <?php if(is_array($biz)): foreach($biz as $key=>$var): if(($var["area_id"]) == $area_id): ?><li><a  <?php if($var["business_id"] == $business_id): ?>style="color:red;"<?php endif; ?>  href="<?php echo LinkTo('shop/index',array('cat'=>$cat,'area'=>$area_id,'business'=>$var['business_id']));?>"><?php echo ($var["business_name"]); ?></a></li><?php endif; endforeach; endif; ?>
            </ul>
        </div>
        <div class="serch-bar-mask-list">
            <ul>
                <li><a <?php if($order == 1): ?>style="color:red;"<?php endif; ?> href="<?php echo LinkTo('shop/index',array('cat'=>$cat,'area'=>$area_id,'business'=>$business_id,'order'=>1));?>">距离优先</a></li>
                <li><a  <?php if($order == 2): ?>style="color:red;"<?php endif; ?> href="<?php echo LinkTo('shop/index',array('cat'=>$cat,'area'=>$area_id,'business'=>$business_id,'order'=>2));?>">推荐排序</a></li>
            </ul>
        </div>
        <div class="serch-bar-mask-bg"></div>
    </div>
    
	<div id="app_nav" class="page-center-box">
		<div id="scroll">
			
			<!-- 列表 -->
			<div class="list-have-pic">
				

			</div>


			<script>
				$(document).ready(function () {
					loaddata('<?php echo ($nextpage); ?>', $(".list-have-pic"), true);
				});
			</script>
            
		</div>
	</div>
<div id="loading">
    <div class="bao_loading">正在加载中....</div>
</div>
<div class="blank">&nbsp;</div>
<?php if(!$is_app||($ctl =='index'&&$is_app)){?>
<footer>
    <div>
        <a href="<?php echo AppLink('mobile/index/index');?>"> 
            <div <?php if($ctl == 'index'): ?>class="icon i-1 on"<?php else: ?>class="icon i-1"<?php endif; ?> ></div>
            <p>首页</p>
        </a>
    </div>
    <div>
        <a href="http://localhost/mall"> 
        <div <?php if($ctl == 'tuan'): ?>class="icon i-2 on"<?php else: ?>class="icon i-2"<?php endif; ?> ></div>
        <p>商城</p>
        </a>
    </div>
    <div>
        <a href="<?php echo AppLink('mobile/favorites/index');?>"> 
        <div <?php if($ctl == 'favorites'): ?>class="icon i-3 on"<?php else: ?>class="icon i-3"<?php endif; ?> ></div>
        <p>关注</p>
        </a>
    </div>
    <div>
        <a href="<?php echo AppLink('mcenter/index/index');?>"> 
        <div <?php if($ctl == 'mcenter/index'): ?>class="icon i-4 on"<?php else: ?>class="icon i-4"<?php endif; ?> ></div>
        <p>我的</p>
        </a>
    </div>
    <div class="foot_more">
        <!--<a href="<?php echo AppLink('mcenter/member/index');?>"> </a>-->
        <div class="icon i-5"></div>
        <p>更多</p>
        <div class="foot_more_pull">
        	<i></i>
        	<ul>
        	    <li><a href="<?php echo AppLink('store/index/index');?>" class="on">商户管理</a></li>
                    <li><a href="<?php echo AppLink('wuye/index/index');?>">物业后台</a></li>
                    <li><a href="<?php echo AppLink('delivery/index/index');?>">物流后台</a></li>
                     <li><a href="<?php echo AppLink('mobile/community/index');?>">小区O2O</a></li>
                     <li><a href="<?php echo AppLink('mobile/market/index');?>">商圈O2O</a></li>
                    <li><a href="<?php echo AppLink('mobile/index/more');?>">更多服务</a></li>
    	    </ul>
        </div>
    </div>
</footer>
<?php }?>
<div style="display: none;" class="topUp"></div>
<script>
    $(document).ready(function () {
        $(window).scroll(function () {
            if ($(window).scrollTop() > 100) {
                $(".topUp").show();
            } else {
                $(".topUp").hide();
            }
        });
        $(".topUp").click(function () {
            $("html,body").animate({scrollTop: 0}, 200);
        });
		$(".foot_more").click(function () {
            $(this).find(".foot_more_pull").toggle();
        });
    });
</script>
<iframe id="baocms_frm" name="baocms_frm" style="display:none;"></iframe>
<!--定义编辑器里的table属性开始-请勿删除！！！！-->
<style>
.li_table table{ width:100%; text-align:center;}
footer #jq_total{width:auto;}
.foot_more{ position:relative; cursor:pointer;}
.foot_more_pull{display:none; position:absolute; bottom:0.48rem; right:0; width:100%; min-width:0.9rem; background:#fff none; box-shadow:0 0 0.03rem #999;}
.foot_more_pull ul{position:relative; z-index:1000; background:#fff none;}
.foot_more_pull i{ position:absolute; z-index:999; bottom:-0.04rem; left:50%; display:inline-block; width:0; height:0; content:''; background:#fff none; width:0.08rem; height:0.08rem; transform:rotate(-45deg);-webkit-transform:rotate(-45deg);-moz-transform:rotate(-45deg);-webkit-transform:rotate(-45deg);-o-transform:rotate(-45deg); box-shadow:0 0 0.03rem #999;}
.foot_more_pull li{ display:block;}
.foot_more_pull li a{ display:block; border-bottom:1px solid #dedede; font-size:0.14rem; line-height:0.4rem; color:#333; text-align:center;}
.foot_more_pull li a.on{ background:#eee none;}
.foot_more_pull li:last-child a{border-bottom:none 0px;}
</style>
<!--定义编辑器里的table属性结束-请勿删除！！！！-->
</body>
</html>