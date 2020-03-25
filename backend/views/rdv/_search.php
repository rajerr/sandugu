<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model backend\models\RdvSearch */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="rdv-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
    ]); ?>

    <?= $form->field($model, 'id') ?>

    <?= $form->field($model, 'intitule') ?>

    <?= $form->field($model, 'date') ?>

    <?= $form->field($model, 'heure') ?>

    <?= $form->field($model, 'message') ?>

    <?php // echo $form->field($model, 'hopital') ?>

    <?php // echo $form->field($model, 'personne') ?>

    <div class="form-group">
        <?= Html::submitButton('Search', ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton('Reset', ['class' => 'btn btn-outline-secondary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
