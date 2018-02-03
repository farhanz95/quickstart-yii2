<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model frontend\models\Item */

$this->title = $model->item_name;
$this->params['breadcrumbs'][] = ['label' => 'Items', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="item-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?php if (Yii::$app->user->can('/user/update')): ?>
        <?= Html::a('Update', ['update', 'id' => $model->item_id], ['class' => 'btn btn-primary']) ?>
        <?php endif ?>
        <?php if (Yii::$app->user->can('/user/delete')): ?>
        <?= Html::a('Delete', ['delete', 'id' => $model->item_id], [
            'class' => 'btn btn-danger',
            'data' => [
                'confirm' => 'Are you sure you want to delete this item?',
                'method' => 'post',
            ],
        ]) ?>
        <?php endif ?>
    </p>

    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            // 'item_id',
            'item_name',
            'item_product_id',
            'item_type',
            'item_quantity',
            [
                'attribute' => 'item_price',
                'value' => function($model){
                    return 'RM '.$model->item_price;
                }
            ],
            'item_brand',
            'item_model',
            'item_company_manufacturer',
            [   
                'label'=>'Country',
                'attribute'=>'item_manufactured_country_address',
                'value' => function($model){
                    if ($model->item_manufactured_country_address) {
                        return ucfirst(strtolower($model->itemManufacturedCountryAddress->negara_nama));
                    }
                }
            ],
            [   
                'label'=>'State',
                'attribute'=>'item_manufactured_state_address',
                'value' => function($model){
                    if ($model->item_manufactured_state_address) {
                        return $model->itemManufacturedStateAddress->negeri_nama;
                    }
                }
            ],
            [   
                'label'=>'City',
                'attribute'=>'item_manufactured_city_address',
                'value' => function($model){
                    if ($model->item_manufactured_city_address) {
                        return $model->itemManufacturedCityAddress->daerah_nama;
                    }
                }
            ],
            'item_manufactured_postcode_address',
            'item_manufactured_street_address',
            'item_manufactured_no_address',
            [
                'attribute' => 'item_weight',
                'label' => 'Item Weight (KG)',
                'value' => function($model){
                    return $model->item_weight;
                }
            ],
            [
                'attribute' => 'item_size_height',
                'label' => 'Item Height (CM)',
                'value' => function($model){
                    return $model->item_weight;
                }
            ],
            [
                'attribute' => 'item_size_width',
                'label' => 'Item Size Width (CM)',
                'value' => function($model){
                    return $model->item_weight;
                }
            ],
            [
                'attribute' => 'item_size_length',
                'label' => 'Item Size Length (CM)',
                'value' => function($model){
                    return $model->item_weight;
                }
            ],
            [
                'attribute' => 'item_manufactured_date',
                'value' => function($model){
                    return date_format(date_create($model->item_manufactured_date),'Y-m-d');
                }
            ],
            [
                'attribute' => 'item_availability_date_start',
                'value' => function($model){
                    return date_format(date_create($model->item_availability_date_start),'Y-m-d');
                }
            ],
            [
                'attribute' => 'item_availability_date_end',
                'value' => function($model){
                    return date_format(date_create($model->item_availability_date_end),'Y-m-d');
                }
            ],
            'item_registered_on_system_date',
            'item_updated_on_system_date',
            [
                'attribute' => 'item_activeness',
                'value' => function($model){
                    if ($model->item_activeness) {
                        return 'Active';
                    }else{
                        return 'Not Active';
                    }
                }
            ],
        ],
    ]) ?>

</div>
