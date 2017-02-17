<?php

namespace frontend\models;

use Yii;

/**
 * This is the model class for table "applications".
 *
 * @property integer $app_id
 * @property string $app_name
 * @property string $vendor_name
 * @property integer $licence_required
 */
class Applications extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'applications';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['licence_required'], 'integer'],
            [['app_name', 'vendor_name'], 'string', 'max' => 255],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'app_id' => 'App ID',
            'app_name' => 'App Name',
            'vendor_name' => 'Vendor Name',
            'licence_required' => 'Licence Required',
        ];
    }
}
