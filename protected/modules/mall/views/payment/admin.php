<?php
$this->breadcrumbs=array(
	'Payments'=>array('index'),
	'Manage',
);

$this->menu=array(
	array('label'=>'List Payment', 'icon'=>'list', 'url'=>array('index')),
	array('label'=>'Create Payment', 'icon'=>'plus','url'=>array('create')),
);
?>

<h1>Manage Payments</h1>

<p>
You may optionally enter a comparison operator (<b>&lt;</b>, <b>&lt;=</b>, <b>&gt;</b>, <b>&gt;=</b>, <b>&lt;&gt;</b>
or <b>=</b>) at the beginning of each of your search values to specify how the comparison should be done.
</p>

<?php echo CHtml::link('Advanced Search','#',array('class'=>'search-button')); ?>
<div class="search-form" style="display:none">
<?php $this->renderPartial('_search',array(
	'model'=>$model,
)); ?>
</div><!-- search-form -->

<?php $this->widget('bootstrap.widgets.TbGridView', array(
	'id'=>'payment-grid',
	'dataProvider'=>$model->search(),
	'filter'=>$model,
	'columns'=>array(
		'payment_id',
		'payment_sn',
		'money',
		'currency',
		'order_id',
//		'pay_method',
		/*
		'user_id',
		'account',
		'bank',
		'pay_account',
		'status',
		'create_time',
		*/
		array(
			'class'=>'bootstrap.widgets.TbButtonColumn',
		),
	),
)); ?>
