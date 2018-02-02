<?php

use yii\db\Migration;

class m180130_060906_create_table_item extends Migration
{
    public function safeUp()
    {
        $tableOptions = null;
        if ($this->db->driverName === 'mysql') {
            $tableOptions = 'CHARACTER SET utf8 COLLATE utf8_unicode_ci ENGINE=InnoDB';
        }

        $this->createTable('{{%item}}', [
            'item_id' => $this->integer(11)->notNull()->append('AUTO_INCREMENT PRIMARY KEY'),
            'item_name' => $this->string(255),
            'item_type' => $this->string(255),
        ], $tableOptions);
    }

    public function safeDown()
    {
        $this->dropTable('{{%item}}');
    }
}
