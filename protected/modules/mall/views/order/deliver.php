<?php
/**
 * Created by PhpStorm.
 * author: shuai.du@jago-ag.cn
 * Date: 3/12/14
 * Time: 11:42 AM
 */
        $this->widget('bootstrap.widgets.TbDetailView', array(
            'data'=> $Order,
            'attributes'=>array(
                'order_id',
                array(
                    'name' => 'user_id',
                    'value' => Tbfunction::getUser($Order->user_id),

                ),
                array(
                    'name' => 'pay_status',
                    'value' => Tbfunction::showPayStatus($Order->pay_status),
                ),
                array(
                    'name' => 'refund_status',
                    'value' => Tbfunction::showRefundStatus($Order->refund_status),
                ),
                array(
                    'name' => 'payment_method_id',
                    'value' => Tbfunction::showPayMethod($Order->payment_method_id),
                ),
                'pay_fee',
                'ship_fee',
                array(
                    'name' => 'shipping_method_id',
                    'value' => Tbfunction::showShipMethod($Order->shipping_method_id),
                ),
                array(
                    'name' => 'status',
                ),
                'memo',
                'receiver_name',
                array(
                    'name'=>'收货地址',
                    'value' =>'' ,
                ),
            ),
        ));