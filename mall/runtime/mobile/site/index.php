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
		<?php 
	$site_config=new Config('site_config');
	$seo_data=array();
	$seo_data['title']=$site_config->name;
	$seo_data['title'].=$site_config->index_seo_title;
	$seo_data['keywords']=$site_config->index_seo_keywords;
	$seo_data['description']=$site_config->index_seo_description;
	seo::set($seo_data);
?>
<script type="text/javascript" src="<?php echo $this->getWebViewPath()."javascript/jquery.flexslider-min.js";?>">
</script>
<link rel="stylesheet" href="<?php echo $this->getWebSkinPath()."css/index.css";?>" type="text/css">
<!--幻灯片 开始-->
<div class="flexslider">
    <?php if($this->index_slide){?>
    <ul class="slides">
        <?php foreach($this->index_slide as $key => $item){?>
        <li>
            <a href="<?php echo IUrl::creatUrl("".$item['url']."");?>" target="_blank"> <img src="<?php echo IUrl::creatUrl("")."".$item['img']."";?>" alt=""></a>
            <p class="slider-description"><?php echo isset($item['name'])?$item['name']:"";?></p>
        </li>
        <?php }?>
    </ul>
    <?php }?>
</div>
<!--幻灯片 结束-->
<!--菜单 开始-->
<div class="row row_category ">
    <div class="row clearfix" style="padding-left:15px;padding-right:15px">
        <div class="col-md-3 col-xs-3 column  kros_li">
            <div class="text-center">
                <a href="<?php echo IUrl::creatUrl("site/map");?>">
                    <span class="fa-stack fa-lg kros_span">
					    <i class="fa fa-circle fa-stack-2x kros_i" style="color:#ffb700"></i>
					    <i class="fa fa-qrcode fa-stack-1x fa-inverse "></i>
					</span>
                </a>
                <p>全部分类</p>
            </div>
        </div>
        <div class="col-md-3 col-xs-3 column kros_li">
            <div class="text-center">
                <a href="<?php echo IUrl::creatUrl("simple/cart");?>">
                    <span class="fa-stack fa-lg kros_span">
						<i class="fa fa-circle fa-stack-2x kros_i" style="color:#ff67b9"></i>
						<i class="fa fa-shopping-cart fa-stack-1x fa-inverse "></i>
					</span>
                </a>
                <p>购物车</p>
            </div>
        </div>
        <div class="col-md-3 col-xs-3 column kros_li">
            <div class="text-center">
                <a href="<?php echo IUrl::creatUrl("site/groupon");?>">
                    <span class="fa-stack fa-lg kros_span">
						<i class="fa fa-circle fa-stack-2x kros_i" style="color:#56b2ff"></i>
						<i class="fa fa-gavel fa-stack-1x fa-inverse "></i>
					</span>
                </a>
                <p>今日团购</p>
            </div>
        </div>
        <div class="col-md-3 col-xs-3 column kros_li">
            <div class="text-center">
                <a href="<?php echo IUrl::creatUrl("ucenter/favorite");?>">
                    <span class="fa-stack fa-lg kros_span">
						<i class="fa fa-circle fa-stack-2x kros_i" style="color:#ff6d57"></i>
						<i class="fa fa-star fa-stack-1x fa-inverse "></i>
					</span>
                </a>
                <p>我的收藏</p>
            </div>
        </div>
    </div>
</div>
<!--菜单 结束-->
<?php echo Ad::show("首页顶部通栏510*120(mobile)");?>
<!--首页推荐商品列表 开始-->
<div id="list">
    <span class="fa fa-paperclip"></span>
    <div class="yui3-u-20-24 kros_t">商品推荐</div>
    <div class="container">
        <div class="row clearfix">
            <div class="col-md-12 col-xs-12 column">
                <div class="row">
                    <?php foreach(Api::run('getCommendRecom') as $key => $item){?>
                    <div class="col-md-6 col-xs-6">
                        <div class="thumbnail">
                            <a href="<?php echo IUrl::creatUrl("/site/products/id/".$item['id']."");?>"><img title="<?php echo isset($item['name'])?$item['name']:"";?>" src="<?php echo IUrl::creatUrl("/pic/thumb/img/".$item['img']."/w/300/h/300");?>" /></a>
                            <div class="caption">
                                <h6>
									<a href="<?php echo IUrl::creatUrl("/site/products/id/".$item['id']."");?>"><?php echo isset($item['name'])?$item['name']:"";?></a>
								</h6>
                            </div>
                        </div>
                    </div>
                    <?php }?>
                </div>
            </div>
        </div>
    </div>
</div>
<!--首页推荐商品列表 结束-->
<?php echo Ad::show("首页中部通栏510*200(mobile)");?>

<div class="container">
    <div style="border:1px solid #e1e1e1;margin:0 0 20px">
        <div class="row">
            <div style="text-align:center;height:70px;padding-top:10px;padding-bottom:10px;" class="col-md-4">
                <i style="font-size:36px;display:inline-block;" class="fa fa-truck"></i>
                <div class="text-area">
                    <h3 style="margin:0;">免费送货与退货</h3>
                    <p>所有订单超过200免费送货。</p>
                </div>
            </div>
            <div style="text-align:center;height:70px;padding-top:10px;padding-bottom:10px;" class="col-md-4">
                <i style="font-size:36px;display:inline-block;" class="fa fa-jpy"></i>
                <div class="text-area">
                    <h3 style="margin:0;">退款保证</h3>
                    <p>100%退款保证.</p>
                </div>
            </div>
            <div style="text-align:center;height:70px;padding-top:10px;padding-bottom:10px;" class="col-md-4">
                <i style="font-size:36px;display:inline-block;" class="fa fa-phone"></i>
                <div class="text-area">
                    <h3 style="margin:0;">在线支持 24/7</h3>
                    <p>客服7*24小时在线.</p>
                </div>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript">
jQuery(function()
{
	$('.flexslider').flexslider(
	{
		animation: "slide",
		directionNav: false,
		animationLoop: false,
		controlNav: false,
		slideToStart: 0,
		slideshow: true,
		animationDuration: 300
	});
});
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
