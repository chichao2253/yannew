<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta name="Generator" content="ECSHOP v2.7.3">

		<meta name="viewport" content="width=device-width">
		<title>所有分类_大众购 </title>
		<meta name="Keywords" content="">
		<meta name="Description" content="">
		<meta name="viewport" content="initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
		<link rel="stylesheet" type="text/css" href="<?php echo $this->getWebSkinPath()."css/public.css";?>">
		<link rel="stylesheet" type="text/css" href="<?php echo $this->getWebSkinPath()."css/catalog.css";?>">
		<script type="text/javascript" src="<?php echo $this->getWebViewPath()."javascript/map/jquery.js";?>"></script>

		<script type="text/javascript" src="<?php echo $this->getWebViewPath()."javascript/map/common.js";?>"></script>
		<script>
			$(function(){
				$(".categorymap li:first-child").addClass("cur");
				$(".categorymap li:first-child").css("margin-top","46px");
			});
		</script>
		<style>
			.goods_nav {
				width: 30%;
				float: right;
				right: 5px;
				overflow: hidden;
				position: fixed;
				margin-top: 25px;
				z-index: 9999999
			}
		</style>
	</head>

	<body style="position: relative;">
		<!DOCTYPE html>
<!-- saved from url=(0042)http://www.dazhongg.com/mobile/catalog.php -->
<html>

	
		<header>
			<div class="tab_nav">
				<div class="header" style="position:fixed">
					<div class="h-left">
						<a class="sb-back" href="javascript:history.back(-1)" title="返回"></a>
					</div>
					<div class="h-mid">全部分类</div>
					<div class="h-right">
						<aside class="top_bar">
							<div onclick="show_menu();$(&#39;#close_btn&#39;).addClass(&#39;hid&#39;);" id="show_more">
								<a href="javascript:;"></a>
							</div>
						</aside>
					</div>
				</div>
			</div>
		</header>
		<script type="text/javascript" src="<?php echo $this->getWebViewPath()."javascript/map/mobile.js";?>"></script>
		<div class="goods_nav hid" id="menu">
			<div class="Triangle">
				<h2></h2>
			</div>
			<ul>
				<li>
					<a href="<?php echo IUrl::creatUrl("/");?>"><span class="menu1"></span><i>首页</i></a>
				</li>
				<li>
					<a href="<?php echo IUrl::creatUrl("site/map");?>"><span class="menu2"></span><i>分类</i></a>
				</li>
				<li>
					<a href="<?php echo IUrl::creatUrl("simple/cart");?>"><span class="menu3"></span><i>购物车</i></a>
				</li>
				<li style=" border:0;">
					<a href="<?php echo IUrl::creatUrl("/ucenter/index");?>"><span class="menu4"></span><i>我的</i></a>
				</li>
			</ul>
		</div>

		<div class="container">
			<div class="category-box" style="height: 568px;">
				
				<div class="category1" style="outline: none; overflow: hidden;" tabindex="5000">
					<ul class="clearfix categorymap">
						 <?php foreach(Api::run('getCategoryListTop') as $key => $first){?>
						<li><?php echo isset($first['name'])?$first['name']:"";?></li>
						<?php }?>
					</ul>
				</div>
		
				<div class="category2" style="outline: none; overflow: hidden;" tabindex="5001">
 				<?php foreach(Api::run('getCategoryListTop') as $key => $first){?>
					<dl style="display: none; margin-top:46px;display: block;">
						 <?php foreach(Api::run('getCategoryByParentid',array('#parent_id#',$first['id'])) as $key => $second){?>
						<dt><a href="<?php echo IUrl::creatUrl("/site/pro_list/cat/".$second['id']."");?>"><?php echo isset($second['name'])?$second['name']:"";?></a></dt>
						
						<dd class="clearfix">
							<div class="fenimg">
								<?php foreach(Api::run('getCategoryByParentid',array('#parent_id#',$second['id'])) as $key => $san){?>
								<div class="fen">
									<a href="<?php echo IUrl::creatUrl("/site/pro_list/cat/".$san['id']."");?>"><?php echo isset($san['name'])?$san['name']:"";?></a>
								</div>		
								<?php }?>
							</div>
						</dd>
					
					<?php }?>
				</dl>				
				<?php }?>
				
				</div>
			</div>
		</div>

		<script src="<?php echo $this->getWebViewPath()."javascript/map/category.js";?>"></script>
		<script src="<?php echo $this->getWebViewPath()."javascript/map/jquery.nicescroll.min.js";?>"></script>

		<div id="ascrail2000" class="nicescroll-rails" style="width: 0px; z-index: auto; cursor: default; position: absolute; top: 0px; left: 80px; height: 556px; display: none;">
			<div style="position: relative; top: 0px; float: right; width: 0px; height: 0px; background-color: rgb(66, 66, 66); border: 0px; background-clip: padding-box; border-radius: 5px;"></div>
		</div>
		<div id="ascrail2000-hr" class="nicescroll-rails" style="height: 0px; z-index: auto; top: 556px; left: 0px; position: absolute; cursor: default; display: none;">
			<div style="position: relative; top: 0px; height: 0px; width: 0px; background-color: rgb(66, 66, 66); border: 0px; background-clip: padding-box; border-radius: 5px;"></div>
		</div>
		<div id="ascrail2001" class="nicescroll-rails" style="width: 0px; z-index: auto; cursor: default; position: absolute; top: 0px; left: 320px; height: 568px; opacity: 0;">
			<div style="position: relative; top: 271px; float: right; width: 0px; height: 179px; background-color: rgb(66, 66, 66); border: 0px; background-clip: padding-box; border-radius: 5px;"></div>
		</div>
		<div id="ascrail2001-hr" class="nicescroll-rails" style="height: 0px; z-index: auto; top: 568px; left: 80px; position: absolute; cursor: default; display: none; width: 240px; opacity: 0;">
			<div style="position: relative; top: 0px; height: 0px; width: 240px; background-color: rgb(66, 66, 66); border: 0px; background-clip: padding-box; border-radius: 5px;"></div>
		</div>
	</body>

</html>
	</body>
</html>
