<?php

namespace frontend\models;

/**
 * This is the model class for table "computer_app".
 *
 * @property integer $computer_id
 * @property integer $app_id
 * @property integer $id
 */
class ComputerApp extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'computer_app';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['computer_id', 'app_id'], 'required'],
            [['computer_id', 'app_id'], 'integer'],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'computer_id' => 'Computer ID',
            'app_id' => 'App ID',
            'id' => 'ID',
        ];
    }
}
