<?php if (!defined('THINK_PATH')) exit(); if(is_array($list)): $index = 0; $__LIST__ = $list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$item): $mod = ($index % 2 );++$index ;?><div class="list-box">
        <div class="list-img">
            <a class="pic" href="<?php echo AppLink('shop/detail',array('shop_id'=>$item['shop_id']));?>"><img src="__ROOT__/attachs/<?php echo ($item["photo"]); ?>"></a>
        </div>
        <div class="list-content">
            <p>
                <a class="fl" title="<?php echo ($item["shop_name"]); ?>" href="<?php echo AppLink('shop/detail',array('shop_id'=>$item['shop_id']));?>"><?php echo msubstr($item['shop_name'],0,6,'utf-8',false);?></a>
                <span class="range fr"><?php echo ($item["d"]); ?></span>
            </p>
            <div class="clear"></div>
            <p class="c_h overflow_clear"><?php echo ($item["addr"]); ?></p>
            <div class="listBox_tag_box"><?php if($item["is_tuan"] == 1): ?><span class="listBox_tag bg_1">抢</span><?php endif; if($item["is_ele"] == 1): ?><span class="listBox_tag bg_2">外</span><?php endif; if($item["is_coupon"] == 1): ?><span class="listBox_tag bg_3">券</span><?php endif; if($item["is_breaks"] == 1): ?><span class="listBox_tag bg_4">买</span><?php endif; if($item["is_mart"] == 1): ?><span class="listBox_tag bg_5">微</span><?php endif; ?></div>
            <?php $w = $item['score'] * 0.018; ?>
            <?php if($item["tel"] != null): ?><a href="tel:<?php echo ($item["tel"]); ?>"><div class="seller_tel_btn"></div></a><?php else: ?><a href="tel:<?php echo ($item["mobile"]); ?>"><div class="seller_tel_btn"></div></a><?php endif; ?></div>
        </div>
    </div><?php endforeach; endif; else: echo "" ;endif; ?>