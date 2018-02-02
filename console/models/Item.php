<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "item".
 *
 * @property int $item_id
 * @property string $item_name
 * @property string $item_type
 */
class Item extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'item';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['item_name', 'item_type'], 'string', 'max' => 255],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'item_id' => 'Item ID',
            'item_name' => 'Item Name',
            'item_type' => 'Item Type',
        ];
    }
}
