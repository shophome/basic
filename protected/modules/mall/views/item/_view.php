<?php
/**
 * Created by PhpStorm.
 * author: shuai.du@jago-ag.cn
 * Date: 3/6/14
 * Time: 9:40 AM
 */
$data = Category::model()->findAllByAttributes(array('category_id'=>$model->category_id));
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
        'props',
        array(
            'name' => 'props_name',
            'value' => implode(';' ,json_decode($model->props_name, true)),
        ),
    ),
));
