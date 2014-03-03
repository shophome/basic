<?php
$this->breadcrumbs=array(
	'News'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'List News', 'icon'=>'list', 'url'=>array('index')),
	array('label'=>'Manage News', 'icon'=>'cog','url'=>array('admin')),
);
?>

<h1>Create News</h1>
<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>