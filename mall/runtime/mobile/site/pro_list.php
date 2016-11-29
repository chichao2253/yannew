<?php 
	$myCartObj  = new Cart();
	$myCartInfo = $myCartObj->getMyCart();
	$siteConfig = new Config("site_config");
	$callback   = IReq::get('callback') ? urlencode(IFilter::act(IReq::get('callback'),'url')) : '';
?>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title><?php echo $siteConfig->name;?></title>
	<link type="image/x-icon" href="favicon.ico" rel="icon">
	<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=no">
	<meta name="apple-mobile-web-app-capable" content="yes">
	<meta name="format-detection" content="telephone=no">
	<link rel="apple-touch-icon-precomposed" href="<?php echo $this->getWebSkinPath()."images/front/logo.gif";?>">
	<link rel="stylesheet" href="<?php echo $this->getWebSkinPath()."css/home.css";?>" />
	<script type="text/javascript" charset="UTF-8" src="/mall/runtime/_systemjs/jquery/jquery-1.11.3.min.js"></script><script type="text/javascript" charset="UTF-8" src="/mall/runtime/_systemjs/jquery/jquery-migrate-1.2.1.min.js"></script>
	<script type="text/javascript" charset="UTF-8" src="/mall/runtime/_systemjs/form/form.js"></script>
	<script type="text/javascript" charset="UTF-8" src="/mall/runtime/_systemjs/autovalidate/validate.js"></script><link rel="stylesheet" type="text/css" href="/mall/runtime/_systemjs/autovalidate/style.css" />
	<script type="text/javascript" charset="UTF-8" src="/mall/runtime/_systemjs/artdialog/artDialog.js"></script><script type="text/javascript" charset="UTF-8" src="/mall/runtime/_systemjs/artdialog/plugins/iframeTools.js"></script><link rel="stylesheet" type="text/css" href="/mall/runtime/_systemjs/artdialog/skins/aero.css" />
	<script type="text/javascript" charset="UTF-8" src="/mall/runtime/_systemjs/artTemplate/artTemplate.js"></script><script type="text/javascript" charset="UTF-8" src="/mall/runtime/_systemjs/artTemplate/artTemplate-plugin.js"></script>
	<script type='text/javascript' src="<?php echo $this->getWebViewPath()."javascript/common.js";?>"></script>
	<script type='text/javascript' src='<?php echo $this->getWebViewPath()."javascript/site.js";?>'></script>
	<link href="<?php echo $this->getWebSkinPath()."font/css/font-awesome.css";?>" rel="stylesheet">
	<link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.0/css/bootstrap.min.css">
	<link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.0/css/bootstrap-theme.min.css">
	<script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
</head>
<body>
	<!--头部信息 开始-->
	<header>
		<div class="header">
		<?php if(IWeb::$app->getController()->getId() == 'site' && IWeb::$app->getController()->getAction()->getId() == 'index'){?>
			<a id="kros_user" class="icon iconfont back" href="javascript:void(0)" ><i class="fa fa-home" style="margin-top:12px"></i></a>
		<?php }else{?>
			<a id="kros_user" class="icon iconfont back" href="javascript:void(0)" onclick="window.history.back();" title="返回">&#xe71f;</a>
		<?php }?>
			<span class="headline"><?php echo $siteConfig->name;?></span>
			<a class="icon iconfont search " href="javascript:void(0)" onclick="$('.kros_search').toggle();" title="搜索商品">&#xe6fe;</a>
		</div>
	</header>
	<!--头部信息 结束-->

	<div class="viewport" style="margin-top:52px;margin-bottom:20px;min-height:220px;">
		<!--搜索框 开始-->
	<div class="">
		<div class=" kros_search row">
			<form method='get' action='<?php echo IUrl::creatUrl("/");?>'>
				<input type='hidden' name='controller' value='site' />
				<input type='hidden' name='action' value='search_list' />
				<div class="col-lg-12 col-xs-12">
				 <div class="input-group">
				<input class="  form-control"  style="height:31px" type="text" name='word' autocomplete="off" value="输入关键字..." />
					<span class="input-group-btn">
					<button type="submit" class='btn btn-xs btn-primary  ' onclick="checkInput('word','输入关键字...');">搜索</button>
					 </span>
				</div>
				</div>
			</form>
			<!--自动完成div 开始-->
			<ul class="auto_list" style='display:none'></ul>
			<!--自动完成div 开始-->
		</div>
	</div>
		<!--搜索框 结束-->
		<?php $seo_data=array(); $site_config=new Config('site_config');?>
<?php $seo_data['title'] = $this->catRow['title']?$this->catRow['title']:$this->catRow['name']?>
<?php $seo_data['title'].="_".$site_config->name?>
<?php $seo_data['keywords']=$this->catRow['keywords']?>
<?php $seo_data['description']=$this->catRow['descript']?>
<?php seo::set($seo_data);?>
<section class="container-full">
    <div class="label" style="margin:0">
        <a class="label1" href="javascript:void(0)"><i class="on"></i><?php echo isset($this->catRow['name'])?$this->catRow['name']:"";?></a>
    </div>
    <div class="row">
        <?php foreach(search_goods::getOrderType() as $key => $item){?> <?php $next = search_goods::getOrderValue($key)?>
        <div class="col-xs-3 col-sm-3 col-md-3 col-lg-3 text-center sel" onclick="window.location.href='<?php echo search_goods::searchUrl('order',$next);?>';">
            <?php echo isset($item)?$item:"";?>
        </div>
        <?php }?>
    </div>
    <?php $goodsObj = search_goods::find(array('category_extend' => $this->childId));$resultData = $goodsObj->find()?> <?php if($resultData){?> <?php foreach($resultData as $key => $item){?>
    <div class="pro_list border-bottom">
        <div class="col-xs-4">
            <a href="<?php echo IUrl::creatUrl("/site/products/id/".$item['id']."");?>"><img src="<?php echo IUrl::creatUrl("/pic/thumb/img/".$item['img']."/w/200/h/200");?>" class="img-responsive" alt=""></a>
        </div>
        <div class="col-xs-8">
            <h5 style="margin-top:0"><a href="<?php echo IUrl::creatUrl("/site/products/id/".$item['id']."");?>"><?php echo isset($item['name'])?$item['name']:"";?></a></h5>
            <div style="margin-top:20px">
                <span class="red">￥<?php echo isset($item['sell_price'])?$item['sell_price']:"";?></span>
                <span style="float:right;font-size:12px;margin-right:5px;text-decoration:line-through">￥<?php echo isset($item['market_price'])?$item['market_price']:"";?></span>
            </div>
        </div>
    </div>
    <?php }?> <?php echo $goodsObj->getPageBar();?> <?php }else{?>
    <div class="text-center" style="line-height:150px">对不起，没有找到相关商品</div>
    <?php }?>
</section>
<script  type="text/javascript">

(function($) {
$.extend({       
urlGet:function()
{
    var aQuery = window.location.href.split("?");  //取得Get参数
    var aGET = new Array();
    if(aQuery.length > 1)
    {
        var aBuf = aQuery[1].split("&");
        for(var i=0, iLoop = aBuf.length; i<iLoop; i++)
        {
            var aTmp = aBuf[i].split("=");  //分离key与Value
            aGET[aTmp[0]] = aTmp[1];
        }
     }
     return aGET;
 }
})
})(jQuery);


 $(function(){
 
var GET = $.urlGet(); 

var GetOrder=(GET['order'])?GET['order']:'sale';

if (GetOrder.indexOf("sale")>-1)
  {
$(".sel:eq(0)").css("border-bottom","2px solid #FF4F15");
  }
else if (GetOrder.indexOf("cpoint")>-1)
  {  	
$(".sel:eq(1)").css("border-bottom","2px solid #FF4F15");
  }
  else if (GetOrder.indexOf("price")>-1)
  {
$(".sel:eq(2)").css("border-bottom","2px solid #FF4F15");
  }
else
  {
$(".sel:eq(3)").css("border-bottom","2px solid #FF4F15");
  }

	     })
</script>








	</div>
<div class="container">


    <div class="kros_foot row">

		<?php if($this->user){?>
		<div class="login col-lg-6 col-xs-6">
			<a class="reg"><?php echo $this->user['username'];?>您好!</a><a href="<?php echo IUrl::creatUrl("/simple/logout");?>" class="reg">安全退出</a>
		</div>
		<?php }else{?>
        <div class="login col-lg-6 col-xs-6">
            <a href="<?php echo IUrl::creatUrl("simple/login");?>">登录</a>
            <span>|</span>
            <a href="<?php echo IUrl::creatUrl("simple/reg");?>">注册</a>
        </div>
	    <?php }?>

	    <div class="jump col-lg-6 col-xs-6  g_2 text-right">
	    	<a href="#">回顶部</a>
	    </div>
    </div>
</div>
    <!--页脚 结束-->
	<div class="s_footer">
	    <ul>
	    <li>
		<a id="kros_a" href="<?php echo IUrl::creatUrl("/");?>">
		<span class="fa-stack fa-lg kros_span" style="font-size:13px">
		<i class="fa fa-circle fa-stack-2x kros_i" style="font-size:27px;color:#f7ab00"></i>
		<i class="fa fa-home fa-stack-1x fa-inverse "></i>
		</span>
		<em>首页</em>
		</a>
	    </li>

	<li>
		<a id="kros_b" href="<?php echo IUrl::creatUrl("simple/cart");?>">
		<span class="fa-stack fa-lg kros_span" style="font-size:13px">
		<i class="fa fa-circle fa-stack-2x kros_i" style="font-size:27px;color:#f7ab00"></i>
		<i class="fa fa-shopping-cart fa-stack-1x fa-inverse "></i>
		</span>
		<em>购物车</em>
		</a>
	</li>


	<li>
		<a id="kros_c" href="<?php echo IUrl::creatUrl("/ucenter/index");?>">
		<span class="fa-stack fa-lg kros_span" style="font-size:13px">
		<i class="fa fa-circle fa-stack-2x kros_i" style="font-size:27px;color:#f7ab00"></i>
		<i class="fa fa-user fa-stack-1x fa-inverse "></i>
		</span>
		<em>个人中心</em>
		</a>
	</li>

	<li>
		<a id="kros_d" href="<?php echo IUrl::creatUrl("site/sitemap");?>">
		<span class="fa-stack fa-lg kros_span" style="font-size:13px">
		<i class="fa fa-circle fa-stack-2x kros_i" style="font-size:27px;color:#f7ab00"></i>
		<i class="fa fa-th fa-stack-1x fa-inverse "></i>
		</span>
		<em>分类</em>
		</a>
	</li>

	    </ul>
	</div>
	<link rel="stylesheet" href="<?php echo $this->getWebSkinPath()."css/site.css";?>" type="text/css" />
</body>
</html>
<script type="text/javascript">
    $('input:text[name="word"]').bind({
        keyup:function(){autoComplete('<?php echo IUrl::creatUrl("/site/autoComplete");?>','<?php echo IUrl::creatUrl("/site/search_list/word/@word@");?>','<?php echo $siteConfig->auto_finish;?>');}
    });

    <?php $word = IReq::get('word') ? IFilter::act(IReq::get('word'),'text') : '输入关键字...'?>
    $('input:text[name="word"]').val("<?php echo isset($word)?$word:"";?>");	
	
</script>
