<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use yii\helpers\ArrayHelper;

$masterCountry = ArrayHelper::map(\frontend\models\MasterNegara::find()->orderBy(['negara_nama'=>SORT_ASC])->asArray()->all(),'negara_id','negara_nama');

?>

<div class="item-form">

    <?php $form = ActiveForm::begin(); ?>

    <div class="panel panel-default">
      <div class="panel-heading">
        BASIC DETAIL
      </div>
      <div class="panel-body">

        <?= $form->field($model, 'item_product_id')->textInput(['maxlength' => true]) ?>

        <?= $form->field($model, 'item_name')->textInput(['maxlength' => true]) ?>

        <?= $form->field($model, 'item_brand')->textInput(['maxlength' => true]) ?>

        <?= $form->field($model, 'item_model')->textInput(['maxlength' => true]) ?>

        <?= $form->field($model, 'item_company_manufacturer')->textInput(['maxlength' => true]) ?>

        <?= $form->field($model, 'item_type')->textInput(['maxlength' => true]) ?>

        <?= $form->field($model, 'item_price')->textInput(['maxlength' => true]) ?>
          

      </div>
    </div>
    
    <div class="panel panel-default">
      <div class="panel-heading">
        PRODUCEMENT
      </div>
      <div class="panel-body">

        <?= $form->field($model, 'item_quantity')->textInput() ?>
          

      </div>
    </div>
    
    <div class="panel panel-default">
      <div class="panel-heading">
        MANUFACTURING INFORMATION
      </div>
      <div class="panel-body">

        <?= $form->field($model, 'item_manufactured_country_address')->dropDownList($masterCountry,['prompt'=>'-Select Country-']) ?>

        <?= $form->field($model, 'item_manufactured_state_address')->dropDownList([],['prompt'=>'-Select Country First-']) ?>

        <?= $form->field($model, 'item_manufactured_city_address')->dropDownList([],['prompt'=>'-Select State First-']) ?>

        <?= $form->field($model, 'item_manufactured_postcode_address')->textInput() ?>

        <?= $form->field($model, 'item_manufactured_street_address')->textArea(['maxlength' => true]) ?>

        <?= $form->field($model, 'item_manufactured_no_address')->textInput(['maxlength' => true]) ?>

        <?= $form->field($model, 'item_manufactured_date')->textInput() ?>
          

      </div>
    </div>
    
    <div class="panel panel-default">
      <div class="panel-heading">
        ITEM PROPERTIES
      </div>
      <div class="panel-body">

        <?= $form->field($model, 'item_weight')->textInput() ?>

        <?= $form->field($model, 'item_size_height')->textInput() ?>

        <?= $form->field($model, 'item_size_width')->textInput() ?>

        <?= $form->field($model, 'item_size_length')->textInput() ?>
          

      </div>
    </div>
    
    <div class="panel panel-default">
      <div class="panel-heading">
        ITEM AVAILABILITY
      </div>
      <div class="panel-body">


        <?= $form->field($model, 'item_availability_date_start')->textInput() ?>

        <?= $form->field($model, 'item_availability_date_end')->textInput() ?>

        <?= $form->field($model, 'item_activeness')->dropDownList([1=>'Active',0=>'Not Active']) ?>
          

      </div>
    </div>

    <?php if (!$model->isNewRecord): ?>

    <?= $form->field($model, 'item_registered_on_system_date')->textInput(['readOnly'=>true]) ?>
    
    <?php if ($model->item_updated_on_system_date): ?>
        <?= $form->field($model, 'item_updated_on_system_date')->textInput(['readOnly'=>true]) ?>
    <?php endif ?>

    <?php endif ?>

    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
<?php 

$this->registerJs("

$('body').on('change','select[name=\"Item[item_manufactured_country_address]\"]',function(){

    if($('select[name=\"Item[item_manufactured_country_address]\"] option:selected').val()){

        var selected = $('select[name=\"Item[item_manufactured_country_address]\"] option:selected').val();

        $.ajax({
            type: 'post',
            url: '".Yii::getAlias('@web')."/item/get-state',
            data: 'negara_id='+selected,
            success: function(data){
                $('select[name=\"Item[item_manufactured_state_address]\"]').html(data);
            } 
        })

    }else{
        $('select[name=\"Item[item_manufactured_state_address]\"]').html('<option value=\"\">-Select Country First-</option>')
    }

    if($('select[name=\"Item[item_manufactured_state_address]\"] option:selected').val()){

        var selected = $('select[name=\"Item[item_manufactured_state_address]\"] option:selected').val();

        $.ajax({
            type: 'post',
            url: '".Yii::getAlias('@web')."/item/get-city',
            data: 'negeri_id='+selected,
            success: function(data){
                $('select[name=\"Item[item_manufactured_city_address]\"]').html(data);
            } 
        })

    }else{
        $('select[name=\"Item[item_manufactured_city_address]\"]').html('<option value=\"\">-Select State First-</option>')
    }

});

if($('select[name=\"Item[item_manufactured_country_address]\"] option:selected').val()){

    var selected = $('select[name=\"Item[item_manufactured_country_address]\"] option:selected').val();

    $.ajax({
        type: 'post',
        url: '".Yii::getAlias('@web')."/item/get-state',
        data: 'negara_id='+selected,
        success: function(data){
            $('select[name=\"Item[item_manufactured_state_address]\"]').html(data);
        } 
    })

}else{
    $('select[name=\"Item[item_manufactured_state_address]\"]').html('<option value=\"\">-Select Country First-</option>')
}

$('body').on('change','select[name=\"Item[item_manufactured_state_address]\"]',function(){

    if($('select[name=\"Item[item_manufactured_state_address]\"] option:selected').val()){

        var selected = $('select[name=\"Item[item_manufactured_state_address]\"] option:selected').val();

        $.ajax({
            type: 'post',
            url: '".Yii::getAlias('@web')."/item/get-city',
            data: 'negeri_id='+selected,
            success: function(data){
                $('select[name=\"Item[item_manufactured_city_address]\"]').html(data);
            } 
        })

    }else{
        $('select[name=\"Item[item_manufactured_city_address]\"]').html('<option value=\"\">-Select State First-</option>')
    }

});

if($('select[name=\"Item[item_manufactured_state_address]\"] option:selected').val()){

    var selected = $('select[name=\"Item[item_manufactured_state_address]\"] option:selected').val();

    $.ajax({
        type: 'post',
        url: '".Yii::getAlias('@web')."/item/get-city',
        data: 'negeri_id='+selected,
        success: function(data){
            $('select[name=\"Item[item_manufactured_city_address]\"]').html(data);
        } 
    })

}else{
    $('select[name=\"Item[item_manufactured_city_address]\"]').html('<option value=\"\">-Select State First-</option>')
}

");

?>
