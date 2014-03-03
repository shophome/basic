<?php
$this->breadcrumbs=array(
	'News',
);

$this->menu=array(
	array('label'=>'Create News', 'icon'=>'plus','url'=>array('create')),
	array('label'=>'Manage News', 'icon'=>'cog','url'=>array('admin')),
);
?>

<h1>News</h1>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
