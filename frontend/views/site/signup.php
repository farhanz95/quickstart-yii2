<?php

/* @var $this yii\web\View */
/* @var $form yii\bootstrap\ActiveForm */
/* @var $model \frontend\models\SignupForm */

use yii\helpers\Html;
use yii\bootstrap\ActiveForm;
use yii\helpers\ArrayHelper;

$this->title = 'Signup';
$this->params['breadcrumbs'][] = $this->title;

$authItemPermissionList = ArrayHelper::map(\frontend\models\AuthItem::find()->where(['type'=>2])->asArray()->all(),'name','name');

$authItemRoleList = ArrayHelper::map(\frontend\models\AuthItem::find()->where(['type'=>1])->asArray()->all(),'name','name');
?>
<div class="site-signup">
    <h1><?= Html::encode($this->title) ?></h1>

    <p>Please fill out the following fields to signup:</p>

    <div class="row">
        <div class="col-lg-5">
            <?php $form = ActiveForm::begin(['id' => 'form-signup']); ?>

                <?= $form->field($model, 'username')->textInput(['autofocus' => true]) ?>

                <?= $form->field($model, 'email') ?>

                <?= $form->field($model, 'password')->passwordInput() ?>

                <?= $form->field($model, 'permission')->checkboxList($authItemPermissionList)
                ->label('Permission'); ?>

                <?= $form->field($model, 'role')->checkboxList($authItemRoleList)
                ->label('Role'); ?>

                <div class="form-group">
                    <?= Html::submitButton('Signup', ['class' => 'btn btn-primary', 'name' => 'signup-button']) ?>
                </div>

            <?php ActiveForm::end(); ?>
        </div>
    </div>
</div>
