<?php
$this->breadcrumbs = array(
    '收货地址' => array('admin'),
    '管理',
);
?>

<div class="box">
    <div class="box-title">delivery address</div>
    <div class="box-content">
        <?php echo $this->renderPartial('_form', array('model'=>$model));?>
        <table id="table" cellpadding="0" cellspacing="0">
        <caption id="item">已保存有效的地址</caption>
          <tr id="tr-first">
                  <th class="th">联系人</th>
                  <th class="th">省</th>
                  <th class="th">市</th>
                  <th class="th">区（县）</th>
                  <th class="th">详细地址</th>
                  <th class="th">邮政编码</th>
                  <th class="th">电话或手机</th>
                  <th class="th"></th>
                  <th class="th">操作</th>

          </tr>
          <tr id="tr-second">
                  <td>小明</td>
                  <td>浙江省</td>
                  <td>宁波市</td>
                  <td>鄞州区</td>
                  <td>浙江省宁波市鄞州</td>
                  <td>722300</td>
                  <td>15692335564</td>
                  <td>默认地址</td>
                  <td style="color:#6d74f7;">修改|删除</td>

          </tr>
        </table>

    </div>
</div>