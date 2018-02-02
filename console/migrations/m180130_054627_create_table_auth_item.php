<?php

use yii\db\Migration;

class m180130_054627_create_table_auth_item extends Migration
{
    public function safeUp()
    {
        $tableOptions = null;
        if ($this->db->driverName === 'mysql') {
            $tableOptions = 'CHARACTER SET utf8 COLLATE utf8_unicode_ci ENGINE=InnoDB';
        }

        $this->createTable('{{%auth_item}}', [
            'name' => $this->string(255)->notNull()->append('PRIMARY KEY'),
            'type' => $this->integer(11)->notNull(),
            'description' => $this->text(),
            'rule_name' => $this->string(64),
            'data' => $this->text(),
            'created_at' => $this->integer(11),
            'updated_at' => $this->integer(11),
        ], $tableOptions);

        // $this->addForeignKey('auth_item_ibfk_1', '{{%auth_item}}', 'rule_name', '{{%auth_rule}}', 'name');
    }

    public function safeDown()
    {
        $this->dropTable('{{%auth_item}}');
    }
}
