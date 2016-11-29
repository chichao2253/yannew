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
    $(function () {
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
        <a href="<?php echo AppLink('shop/index');?>"><i class="icon-goback"></i></a>
        <div class="title"><?php echo ($detail["shop_name"]); ?></div>
        <i id="commentA"><a class="share" id="shareIco" href="javascript:(0);"></a></i>
    </header>
    <?php }?>
    <div class="bdcolor">
        <div class="bdcolor_bg"></div>
        <div class="bdsharebuttonbox" data-tag="share_1">
            <a class="bds_weixin" data-cmd="weixin">微信</a>
            <a class="bds_qzone" data-cmd="qzone" href="#">QQ空间</a>
            <a class="bds_sqq" data-cmd="sqq">腾讯QQ</a>
            <a class="bds_tqq" data-cmd="tqq">腾讯微博</a>
            <a class="bds_tsina" data-cmd="tsina">新浪微博</a>
            <div class="bd-share-popup-footer">
                <a class="bd-share-popup-close" onClick="$('.bdcolor').hide();" href="javascript:void(0);">取消</a>
            </div>
        </div>
    </div>
    <script>
        $(document).ready(function () {
            $(".share").click(function () {
                $(".bdcolor").show();
            });
        });
        window._bd_share_config = {
            common: {
                bdText: '<?php echo ($detail["shop_name"]); ?>',
                bdDesc: '<?php echo ($detail["shop_name"]); ?>',
                bdUrl: location.href,
                bdPic: 'http://<?php echo ($_SERVER['HTTP_HOST']); ?>__ROOT__/attachs/<?php echo (($detail["photo"])?($detail["photo"]):'default.jpg'); ?>'
            },
            share: [{
                    "bdSize": 32,
                }],
        }
        with (document)
            0[(getElementsByTagName('head')[0] || body).appendChild(createElement('script')).src = 'http://bdimg.share.baidu.com/static/api/js/share.js?cdnversion=' + ~(-new Date() / 36e5)];
    </script>
    <ul id="shangjia_tab">
        <li><a href="<?php echo AppLink('shop/detail',array('shop_id'=>$detail['shop_id']));?>" class="on">首页</a></li>
        <li><a href="<?php echo U('shop/tuan',array('shop_id'=>$detail['shop_id']));?>">团购</a></li>
        <li><a href="<?php echo U('shop/goods',array('shop_id'=>$detail['shop_id']));?>">商品</a></li>
        <li><a href="<?php echo U('shop/coupon',array('shop_id'=>$detail['shop_id']));?>">优惠</a></li>
        <li><a href="<?php echo U('shop/dianping',array('shop_id'=>$detail['shop_id']));?>">评价</a></li>
    </ul>
<?php if(!empty($detail['tel'])){ $tel = $detail['tel']; }else{ $tel = $detail['mobile']; } ?>

<div id="shangjia" class="app_shangjia page-center-box">
    <div id="scroll" style="padding-bottom:0;">
        <div class="banner"><img src="__ROOT__/attachs/<?php echo ($detail["photo"]); ?>" width="100%"></div>
        <!--商家首页infor部分开始-->
        <div class="infor mb10">
            <div class="inforOne">
                <div class="fl">
                    <img src="__ROOT__/attachs/<?php echo ($detail["logo"]); ?>" width="50" height="50">
                    <a href="<?php echo U('shop/dianping',array('shop_id'=>$detail['shop_id']));?>"><h3 class="overflow_clear"><?php echo ($detail["shop_name"]); ?></h3>
                        <p class="black9"><span class="spxq_qgpstarBg"><span class="spxq_qgpstar spxq_qgpstar<?php echo ($detail["score"]); ?>"></span></span><b class="fontcl1"><?php echo ($detail["score_num"]); ?></b>人评价</p></a>
                </div>
                <div class="fr pointer">
                    <a class="btn" href="<?php echo AppLink('mcenter/dianping/index',array('shop_id'=>$detail['shop_id']));?>">评价商家</a>
                </div>
                <div class="clear"></div>
            </div>
            <!-- 地址 -->
            <div class="order-adress mb10">
                <div class="order-shop">
                    <div class="wz">
                        <p class="big black9"><i class="ico_1"></i>地址：<?php echo ($detail["addr"]); ?></p>
                        <p class="big black9"><i class="ico_2"></i>电话：<?php echo ($tel); ?></p>
                    </div>
                    <a class="tel" href="tel:<?php echo ($tel); ?>"></a>
                </div>
                <div class="mall-our">	                
                    <a class="mall-fen" href="<?php echo U('shop/gps',array('shop_id'=>$detail['shop_id']));?>"><em class="ico ico_1"></em>到这去</a></span>  
                    <a class="mall-fen" href="<?php echo AppLink('shop/favorites/',array('shop_id'=>$detail['shop_id']));?>" ><em class="ico ico_2"></em>关注商家</a>
                </div>
            </div>
            <!--分店地址开始-->
            <script>
                $(document).ready(function () {
                    $(".fendianAddr_switch .fendianAddr_list").each(function (e) {
                        $(this).click(function () {
                            $(this).parent().find(".fendianAddr_list").removeClass("on");
                            $(this).addClass("on");
                            $(".fendianAddr_nr_box .fendianAddr_nr").each(function (h) {
                                if (e == h) {
                                    $(this).parent().find(".fendianAddr_nr").hide();
                                    $(this).show();
                                }
                                else {
                                    $(this).hide();
                                }
                            });
                        });
                    });
                });
            </script>
            <?php if(!empty($branch)){?>
            <div class="fendianAddr mt10">
                <div class="fendianAddr_switch fl">
                    <ul>
                        <?php $i=0;?>
                        <?php if(is_array($branch)): foreach($branch as $key=>$item): $i++;?>
                            <li class="fendianAddr_list  <?php if($i==1)echo 'on';?>"><?php echo ($item["name"]); ?></li><?php endforeach; endif; ?>
                    </ul>
                </div>
                <div class="fendianAddr_nr_box fr">
                    <?php $i=0;?>
                    <?php if(is_array($branch)): foreach($branch as $key=>$item): $i++;?>
                        <div class="fendianAddr_nr" <?php if($i!=1) echo 'style="display:none;"';?>>
                             <p class="black9"><em class="ico ico_1"></em>地址：<?php echo ($item["addr"]); ?></p>
                            <p class="black9"><em class="ico ico_2"></em>电话：<?php echo ($item["telephone"]); ?></p>
                            <div class="btn_box">
                                <a href="<?php echo U('shop/gps2',array('branch_id'=>$item['branch_id']));?>" class="btn fl"><em class="ico ico_1"></em></a>
                                <a href="tel:<?php echo ($item["telephone"]); ?>" class="btn fr"><em class="ico ico_2"></em></a>
                            </div>
                        </div><?php endforeach; endif; ?>
                </div>
                <div class="clear"></div>
            </div>
            <?php }?> 

        </div>
        <!--商家首页infor部分结束-->
        <!--商家活动列表开始-->
        <?php if(!empty($sy)): ?><div class="hdList mb10">
                <a href="<?php echo AppLink('shop/breaks',array('shop_id'=>$sy['shop_id']));?>">
                    <div>
                        <div class="fl hdList_bq"><span class="listBox_tag bg_4">买</span></div>
                        <div class="hdList_wz">
                            <?php if(($sy["type_id"]) == "1"): ?><p class="bt">每满<?php echo ($sy["min_amount"]); ?>元减<?php echo ($sy["amount"]); ?>元</p><?php else: ?><p class="bt">买单立享<?php echo ($sy["discount"]); ?>折优惠</p><?php endif; ?>
                        </div>
                        <div class="clear"></div>
                    </div>
                    <p class="black9"></p>
                    <div class="linkIco_nr black9">已买<?php echo ($sy["use_count"]); ?>人<em class="linkIco"></em></div>
                </a>
            </div><?php endif; ?>

        <?php if(($detail["is_ele"]) == "1"): ?><div class="hdList mb10">
            <a  href="<?php echo AppLink('ele/shop',array('shop_id'=>$ele['shop_id']));?>">
                <div>
                    <div class="fl hdList_bq"><span class="listBox_tag bg_2">外</span></div>
                    <div class="hdList_wz">
                        <p class="bt">外卖  <?php if(empty($ele["new_money"])): ?>暂无活动<?php else: ?><span class="fontcl1">满<?php echo round($ele['full_money']/100,2);?>元减<?php echo round($ele['new_money']/100,2);?>元</span><?php endif; ?></p>
                    </div>
                    <div class="clear"></div>
                </div>
                <div class="linkIco_nr black9"><em class="linkIco"></em></div>
            </a>
        </div><?php endif; ?>
        <?php if(!empty($tuans)): ?><div class="hdList">
                <?php if(is_array($tuans)): $i = 0; $__LIST__ = $tuans;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$t): $mod = ($i % 2 );++$i;?><div class="hdList_nr_border">
                        <a  href="<?php echo AppLink('tuan/detail',array('tuan_id'=>$t['tuan_id']));?>">
                            <div class="fl hdList_bq"><?php if(($i) == "1"): ?><span class="listBox_tag bg_1">团</span><?php endif; ?></div>
                            <div class="hdList_wz">
                                <div class="img fl"><img src="__ROOT__/attachs/<?php echo ($t["photo"]); ?>" width="90" height="80"></div>
                                <div class="wz">
                                    <p class="bt overflow_clear"><?php echo ($t['title']); ?></span></p>
                                    <p class="black9"><span class="price fontcl1">￥<?php echo round($t['tuan_price']/100,2);?></span>  <del>原价:￥<?php echo round($t['price']/100,2);?></del>  已售<?php echo ($t["sold_num"]); ?></p>
                                </div>
                            </div>
                            <div class="clear"></div>
                        </a>
                    </div><?php endforeach; endif; else: echo "" ;endif; ?>
            </div>
            <a href="<?php echo AppLink('tuan/index');?>" class="hdList_more black9 mb10">更多<em class="linkIco"></em></a><?php endif; ?>
        <?php if(!empty($goods)): ?><div class="hdList">
                <?php if(is_array($goods)): $i = 0; $__LIST__ = $goods;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$t): $mod = ($i % 2 );++$i;?><div class="hdList_nr_border">
                        <a  href="<?php echo AppLink('mall/detail',array('goods_id'=>$t['goods_id']));?>">
                            <div class="fl hdList_bq"><?php if(($i) == "1"): ?><span class="listBox_tag bg_5">商</span><?php endif; ?></div>
                            <div class="hdList_wz">
                                <div class="img fl"><img src="__ROOT__/attachs/<?php echo ($t["photo"]); ?>" width="90" height="80"></div>
                                <div class="wz">
                                    <p class="bt overflow_clear"><?php echo ($t['title']); ?></p>
                                    <p class="black9"><span class="price fontcl1">￥<?php echo round($t['mall_price']/100,2);?></span>  <del>原价:￥<?php echo round($t['price']/100,2);?></del>  已售<?php echo ($t["sold_num"]); ?></p>
                                </div>
                            </div>
                            <div class="clear"></div>
                        </a>
                    </div><?php endforeach; endif; else: echo "" ;endif; ?>
            </div>
            <?php if($detail['weidian_id'] > 0): ?><a href="<?php echo AppLink('mart/lists',array('id'=>$detail['weidian_id']));?>" class="hdList_more black9 mb10">更多<em class="linkIco"></em></a><?php else: ?><a href="<?php echo AppLink('mall/index');?>" class="hdList_more black9 mb10">更多<em class="linkIco"></em></a><?php endif; endif; ?>
        <?php if(!empty($coupons)): ?><div class="hdList">
                <?php if(is_array($coupons)): $i = 0; $__LIST__ = $coupons;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$t): $mod = ($i % 2 );++$i;?><div class="hdList_nr_border">
                        <a  href="<?php echo AppLink('coupon/detail',array('coupon_id'=>$t['coupon_id']));?>">
                            <div class="fl hdList_bq"><?php if(($i) == "1"): ?><span class="listBox_tag bg_5">券</span><?php endif; ?></div>
                            <div class="hdList_wz">
                                <div class="img fl"><img src="__ROOT__/attachs/<?php echo ($t["photo"]); ?>" width="90" height="80"></div>
                                <div class="wz">
                                    <p class="bt overflow_clear"><?php echo ($t['title']); ?></p>
                                    <p class="black9">到期时间：<?php echo ($t["expire_date"]); ?></p>
                                </div>
                            </div>
                            <div class="clear"></div>
                        </a>
                    </div><?php endforeach; endif; else: echo "" ;endif; ?>
            </div>
            <a href="<?php echo AppLink('coupon/index');?>" class="hdList_more black9 mb10">更多<em class="linkIco"></em></a><?php endif; ?>
        <div class="hdList mb10">
            <div>
                <div class="fl hdList_bq"><span class="listBox_tag bg_4">详</span></div>
                <div class="hdList_wz">
                    <p class="bt">营业时间：<?php echo ($ex["business_time"]); ?></p>
                </div>
                <div class="clear"></div>
            </div>
            <p class="black9"></p>
            <div class="linkIco_nr black9"><em class="linkIco"></em></div>
        </div>
        <!--商家活动列表结束-->
    </div>
</div>
</body>
</html>