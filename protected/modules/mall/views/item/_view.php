<?php
/**
 * Created by PhpStorm.
 * author: shuai.du@jago-ag.cn
 * Date: 3/6/14
 * Time: 9:40 AM
 */
$data = Category::model()->findAllByAttributes(array('category_id'=>$model->category_id));
$props =(json_decode($model->props_name));
$str = '';
foreach($props as $prop)
{
    if( is_array($prop))
    {
        foreach($prop as $value)
        {
            $str.=$value.'; ';
        }
    }
    else
    {
        $str.= $prop.'; ';
    }
}
$country = Area::model()->findAllByPk($model->country);
$state = Area::model()->findAllByPk($model->state);
$city = Area::model()->findAllByPk($model->city);
$this->widget('bootstrap.widgets.TbDetailView', array(
    'data'=>$model,
    'attributes'=>array(
        array(
            'name' =>  'category_id',
            'value' => $data[0]['name'],
        ),
        'title',
        'stock',
        'min_number',
        'price',
        'currency',
        array(
            'name' => 'props_name',
            'value' => $str,
        ),
        'desc',
        'shipping_fee',
        'is_show',
        'is_promote',
        'is_new',
        'is_hot',
        'is_best',
        'click_count',
        'wish_count',
        'review_count',
        'deal_count',
        array(
            'name' => 'create_time',
            'value' => date("Y年m月d日 H:i:s",$model->create_time + 8*3600)
        ),
        array(
            'name' => 'update_time',
            'value' =>  date("Y年m月d日 H:i:s",$model->update_time + 8*3600)
        ),
        'language',
        array(
            'name'=>'country',
            'value' => $country[0]['name']
        ),
        array(
            'name'=>'state',
            'value' => $state[0]['name']
        ),
        array(
            'name'=>'city',
            'value'=>$city[0]['name']
        ),
    ),
));
