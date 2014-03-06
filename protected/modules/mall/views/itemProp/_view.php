<?php
/**
 * Created by PhpStorm.
 * author: shuai.du@jago-ag.cn
 * Date: 3/6/14
 * Time: 2:47 PM
 */
$data = Category::model()->findAllByAttributes(array('category_id'=>$model->category_id));
$propValues = PropValue::model()->findAllByAttributes(array('item_prop_id'=> $model->item_prop_id));
$propstr = '';
foreach($propValues as $propvalue)
{
    $propstr.=$propvalue->value_alias.'; ';
}
$this->widget('bootstrap.widgets.TbDetailView', array(
    'data'=>$model,
    'attributes'=>array(
        array(
            'name' =>  'category_id',
            'value' => $data[0]['name'],
        ),
        array(
           'name'=> 'prop_value',
           'value' => $propstr
        ),
        'prop_name',
        'prop_alias',
        array(
            'name' => 'type',
        ),
        'is_key_prop',
        'is_sale_prop',
        'is_color_prop',
        'must',
        'status',
        'sort_order',
        'item_propcol',
    )
));