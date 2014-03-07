<?php
$this->breadcrumbs=array(
	'News'=>array('index'),
	$model->title=>array('view','id'=>$model->id),
	'Update',
);

$this->menu=array(
	array('label'=>'List News', 'icon'=>'list', 'url'=>array('index')),
	array('label'=>'Create News', 'icon'=>'plus','url'=>array('create')),
	array('label'=>'View News', 'url'=>array('view', 'id'=>$model->id)),
	array('label'=>'Manage News', 'icon'=>'cog','url'=>array('admin')),
);
?>

<h1>Update News <?php echo $model->id; ?></h1>
<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>