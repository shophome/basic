<?php
echo $is_view ?  $form->uneditableFieldControlGroup($model, 'title')  : $form->textFieldControlGroup($model, 'title');
if($model->stock) {
    echo $is_view ?  $form->uneditableFieldControlGroup($model, 'stock')  : $form->textFieldControlGroup($model, 'stock', array('help' => '库存默认为1000','readonly' => false));
}
echo $is_view ?  $form->uneditableFieldControlGroup($model, 'min_number')  : $form->textFieldControlGroup($model, 'min_number', array('help' => '最少订货量默认为1'));
echo $is_view ?  $form->uneditableFieldControlGroup($model, 'price')  : $form->textFieldControlGroup($model, 'price');
echo $is_view ?  $form->uneditableFieldControlGroup($model, 'currency')  : $form->dropDownListControlGroup($model, 'currency', array('$' => '美元', '￥' => '人民币'));
echo $is_view ?  $form->uneditableFieldControlGroup($model, 'outer_id')  : $form->textFieldControlGroup($model, 'outer_id');
echo $is_view ?  $form->uneditableFieldControlGroup($model, 'language')  : $form->dropDownListControlGroup($model, 'language', array('zh_cn' => '中文', 'en_us' => 'English'));
$url = Yii::app()->createUrl('mall/item/getChildAreas');
list($countryAreas, $stateAreas, $citeAreas) = $model->getAreas();
echo $is_view ?  $form->uneditableFieldControlGroup($model, 'country')  : $form->dropDownListControlGroup($model, 'country', $countryAreas,
    array('class' => 'area area-country', 'data-child-area' => 'area-state', 'data-url' => $url));
echo $is_view ?  $form->uneditableFieldControlGroup($model, 'state')  : $form->dropDownListControlGroup($model, 'state', $stateAreas, array('class' => 'area area-state', 'data-child-area' => 'area-city', 'data-url' => $url));
echo $is_view ?  $form->uneditableFieldControlGroup($model, 'city')  : $form->dropDownListControlGroup($model, 'city', $citeAreas, array('class' => 'area-city'));
?>



