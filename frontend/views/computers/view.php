<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model backend\models\Computers */

$this->title = $model->computer_name;
$this->params['breadcrumbs'][] = ['label' => 'Computers', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="computers-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <?=
    //$app_id = yii\db\ActiveRecord::getDb()->createCommand("SELECT app_id FROM adminPortal.computer_app where computer_id = $model->computer_id")->queryOne();
    //$appsOnComp = yii\db\ActiveRecord::getDb()->createCommand("SELECT * FROM adminPortal.applications where app_id = $app_id")->queryOne();

    DetailView::widget([
        'model' => $model,
        'attributes' => [
            'computer_id',
            'computer_name',
            'ip_adress',
            'login',
            'password',
        ],
    ]); ?>
</div>
