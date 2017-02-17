<?php

use yii\helpers\Html;
use kartik\export\ExportMenu;
use common\models\User;


/* @var $this yii\web\View */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Computers';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="computers-index">

    <h1><?= Html::encode($this->title) ?></h1>

    <?php
    if (User::isUserAdmin(Yii::$app->user->identity->username)) {
        echo Html::a('Create Computers', ['create'], ['class' => 'btn btn-success']);
        $actionColumn = ['class' => 'yii\grid\ActionColumn'];
    }
    else{
        $actionColumn =   ['class' => 'yii\grid\ActionColumn',
            'template' => '{view}',
        ];
    }
    $gridColumns = [
        ['class' => 'yii\grid\SerialColumn'],

        'computer_id',
        'computer_name',
        'ip_adress',
        'login',
        'password',

        $actionColumn,
    ];

    // Renders a export dropdown menu
    echo ExportMenu::widget([
        'dataProvider' => $dataProvider,
        'columns' => $gridColumns
    ]);

    // You can choose to render your own GridView separately
    echo \kartik\grid\GridView::widget([
        'dataProvider' => $dataProvider,
        'columns' => $gridColumns
    ]);?>
</div>
