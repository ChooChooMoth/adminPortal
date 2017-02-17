<?php

namespace frontend\models;

use Yii;

/**
 * This is the model class for table "computers".
 *
 * @property integer $computer_id
 * @property string $computer_name
 * @property integer $ip_adress
 * @property string $login
 * @property string $password
 */
class Computers extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'computers';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['ip_adress'], 'integer'],
            [['computer_name', 'login', 'password'], 'string', 'max' => 255],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'computer_id' => 'Computer ID',
            'computer_name' => 'Computer Name',
            'ip_adress' => 'Ip Adress',
            'login' => 'Login',
            'password' => 'Password',
        ];
    }
}
