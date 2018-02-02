<?php

use yii\db\Migration;

class m180130_054627_create_table_auth_item_child extends Migration
{
    public function safeUp()
    {
        $tableOptions = null;
        if ($this->db->driverName === 'mysql') {
            $tableOptions = 'CHARACTER SET utf8 COLLATE utf8_unicode_ci ENGINE=InnoDB';
        }

        $this->createTable('{{%auth_item_child}}', [
            'parent' => $this->string(255)->notNull(),
            'child' => $this->string(255)->notNull(),
        ], $tableOptions);

        $this->addPrimaryKey('primary_key', '{{%auth_item_child}}', ['parent','child']);

        // $this->addForeignKey('auth_item_child_ibfk_1', '{{%auth_item_child}}', 'parent', '{{%auth_item}}', 'name');
        // $this->addForeignKey('auth_item_child_ibfk_2', '{{%auth_item_child}}', 'child', '{{%auth_item}}', 'name');
    }

    public function safeDown()
    {
        $this->dropTable('{{%auth_item_child}}');
    }
}
