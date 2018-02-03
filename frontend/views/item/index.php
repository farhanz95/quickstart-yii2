<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel frontend\models\ItemSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Items';
$this->params['breadcrumbs'][] = $this->title;

?>
<div class="item-index">

    <h1><?= Html::encode($this->title) ?></h1>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <p>
        <?php if (Yii::$app->user->can('/user/create')): ?>
        <?= Html::a('Create Item', ['create'], ['class' => 'btn btn-success']) ?>
        <?php endif ?>
    </p>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            [
                'header' => 'No',
                'class' => 'yii\grid\SerialColumn'
            ],

            // 'item_id',
            'item_name',
            'item_product_id',
            'item_type',
            'item_quantity',
            //'item_price',
            //'item_brand',
            //'item_model',
            //'item_company_manufacturer',
            //'item_manufactured_country_address',
            //'item_manufactured_state_address',
            //'item_manufactured_city_address',
            //'item_manufactured_postcode_address',
            //'item_manufactured_street_address',
            //'item_manufactured_no_address',
            //'item_weight',
            //'item_size_height',
            //'item_size_width',
            //'item_size_length',
            //'item_manufactured_date',
            //'item_availability_date_start',
            //'item_availability_date_end',
            //'item_registered_on_system_date',
            //'item_updated_on_system_date',
            //'item_activeness',

            [
                'class' => 'yii\grid\ActionColumn',
                'template' => '{view} {update} {delete}',
                'buttons' => [
                    'view' => function ($url, $model) {
                        return Html::a('<span class="glyphicon glyphicon-eye-open"></span>', $url, [
                                    'title' => Yii::t('app', 'lead-view'),
                        ]);
                    },

                    'update' => function ($url, $model) {
                        if (Yii::$app->user->can('/user/update')) {
                            return Html::a('<span class="glyphicon glyphicon-pencil"></span>', $url, [
                                        'title' => Yii::t('app', 'lead-update'),
                            ]);
                        }
                    },
                    'delete' => function ($url, $model) {
                        if (Yii::$app->user->can('/user/delete')) {
                            return Html::a('<span class="glyphicon glyphicon-trash"></span>', $url, [
                                        'title' => Yii::t('app', 'lead-delete'),
                            ]);
                        }
                    }

                ]
            ],
        ],
    ]); ?>
</div>
