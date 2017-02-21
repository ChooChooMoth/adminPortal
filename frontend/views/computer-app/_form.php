<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model frontend\models\ComputerApp */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="computer-app-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'computer_id')->textInput() ?>

    <?= $form->field($model, 'app_id')->textInput() ?>

    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? 'Create' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
