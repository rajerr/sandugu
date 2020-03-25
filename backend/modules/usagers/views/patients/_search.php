<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model common\models\PersonneSearch */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="personne-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
    ]); ?>

    <?= $form->field($model, 'id') ?>

    <?= $form->field($model, 'photo') ?>

    <?= $form->field($model, 'nom') ?>

    <?= $form->field($model, 'prenom') ?>

    <?= $form->field($model, 'sexe') ?>

    <?php // echo $form->field($model, 'groupesanguin') ?>

    <?php // echo $form->field($model, 'naissance') ?>

    <?php // echo $form->field($model, 'matrimoniale') ?>

    <?php // echo $form->field($model, 'profession') ?>

    <?php // echo $form->field($model, 'specialite') ?>

    <?php // echo $form->field($model, 'telephone') ?>

    <?php // echo $form->field($model, 'email') ?>

    <?php // echo $form->field($model, 'adresses') ?>

    <?php // echo $form->field($model, 'date') ?>

    <?php // echo $form->field($model, 'TypePersonne') ?>

    <?php // echo $form->field($model, 'service') ?>

    <div class="form-group">
        <?= Html::submitButton(Yii::t('app', 'Search'), ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton(Yii::t('app', 'Reset'), ['class' => 'btn btn-outline-secondary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
