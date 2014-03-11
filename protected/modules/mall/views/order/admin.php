<?php
$this->breadcrumbs = array(
    'Orders' => array('index'),
    'Manage',
);

?>
<link rel="stylesheet" href="/css/yi.css" type="text/css"/>
<script language="JavaScript" type="text/javascript" src="/js/jquery.js"></script>
<script language="JavaScript" type="text/javascript" src="/protected/extensions/bootstrap/assets/js/bootstrap.js"></script>

<h1>Manage Orders</h1>

<p>
    You may optionally enter a comparison operator (<b>&lt;</b>, <b>&lt;=</b>, <b>&gt;</b>, <b>&gt;=</b>, <b>
        &lt;&gt;</b>
    or <b>=</b>) at the beginning of each of your search values to specify how the comparison should be done.
</p>
<?php echo CHtml::link('<div class="btn btn-primary">Create Order</div>', '#', array('class' => 'search-button',)); ?>
<div class="search-form" style="display:none">
    <?php $this->renderPartial('select_user', array(
        'users' => $users,
    )); ?>
</div>
<?php $this->widget('bootstrap.widgets.TbGridView', array(
    'id' => 'order-grid',
    'dataProvider' => $model->search(),
    'filter' => $model,
    'columns' => array(

        'order_id',
        array(
            'name' => 'user_id',
            'header' => '会员账号',
            'value' => 'Tbfunction::getUser($data->user_id)',
        ),
        array(
            'name' => 'pay_status',
            'value' => 'Tbfunction::showPayStatus($data->pay_status)',
            'filter' => Tbfunction::ReturnPayStatus(),
        ),


        array(
            'name' => 'refund_status',
            'value' =>'Tbfunction::showRefundStatus($data->refund_status)',
            'filter' => Tbfunction::ReturnRefundStatus(),
        ),
        array(
            'name' => 'payment_method_id',
            'value' => 'Tbfunction::showPayMethod($data->payment_method_id)',
            'filter' => Tbfunction::ReturnPayMethod(),
        ),
        'pay_fee',
        'ship_fee',
        'total_fee',
        array(
            'name' => 'shipping_method_id',
            'value' => 'Tbfunction::showShipMethod($data->shipping_method_id)',
            'filter' => Tbfunction::ReturnShipMethod(),
        ),
        array(
            'name' => 'create_time',
            'value'=>'date("Y-m-d H:i;s",$data->create_time+8*3600)'
        ),

        array(
            'name' => 'receiver_name',
        ),
        array(
            'class' => 'bootstrap.widgets.TbButtonColumn',
            'template' => '{deliver}',
            'buttons' => array(
                'deliver' => array(
                    'label' => '发货',
                    'icon' => 'plane',
//                    'url'=>'Yii::app()->createUrl("mall/shipping/deliver")',

                    'options'=>array(
                        'class'=>'btn btn-small',
                        'data-target'=> '#myModal',
                        'data-toggle' => 'modal',
                    ),
                ),
            ),
        ),
        array(
            'class' => 'bootstrap.widgets.TbButtonColumn',
        ),
    )
));
?>

<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabel">Deliver</h4>
            </div>
            <div class="modal-body">
                <div id="manage-order">
                    <h1 align="center"">MANAGE ORDER</h1>

                    订单号：<input class="txt"  type="text" />

                    会员：<input class="txt"  type="text" />

                    <div class="decoration-choice">
                        付款状态：<div >
                            <select class="choice" >
                                <option>未付款</option>
                                <option>已付款</option>
                            </select>
                        </div>
                    </div>
                    <div class="decoration-choice">
                        退款状态：<div>
                            <select class="choice">
                                <option>未退款</option>
                                <option>已退款</option>
                            </select>
                        </div>
                    </div>
                    <div class="decoration-choice">
                        付款方式：<div >
                            <select class="choice">
                                <option>货到付款</option>
                                <option>支付宝</option>
                                <option>银行卡</option>
                            </select>
                        </div>
                    </div>
                    实付款：<input  class="txt" name="money" type="text"/>
                    运费：  <input  class="txt" name="money" type="text"/>
                    商品总金额：<input  class="txt" name="money" type="text"/>


                    <div class="decoration-choice">
                        配送方式： <div>
                            <select  class="choice">
                                <option>平邮</option>
                                <option>快递</option>
                            </select>
                        </div>
                    </div>
                    下单时间：<input  class="txt" name="money" type="text"/>
                    收货人：<input  class="txt" name="money" type="text"/>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary">deliver</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->