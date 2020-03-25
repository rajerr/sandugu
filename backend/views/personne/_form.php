<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use yii\helpers\ArrayHelper;
use yii\jui\DatePicker;

/* @var $this yii\web\View */
/* @var $model backend\models\Personne */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="personne-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'fichier')->fileinput() ?>

    <?= $form->field($model, 'nom')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'prenom')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'sexe')->dropDownList([ 'M' => 'M', 'F' => 'F', ], ['prompt' => '']) ?>

    <?= $form->field($model, 'groupesanguin')->dropDownList([ 'O+' => 'O+', 'O-' => 'O-', 'A+' => 'A+', 'A−' => 'A−', 'B+' => 'B+', 'B-' => 'B-', 'AB+' => 'AB+', 'AB-' => 'AB-', ], ['prompt' => '']) ?>

    <?= $form->field($model,'naissance')->widget(DatePicker::className(),['clientOptions' => ['defaultDate' => '2014-01-01']]) ?>

    <?= $form->field($model, 'matrimoniale')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'profession')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'specialite')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'telephone')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'email')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'adresses')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model,'date')->widget(DatePicker::className(),['clientOptions' => ['defaultDate' => '2014-01-01 12:20:00']]) ?>

    <?= $form->field($model, 'TypePersonne')->textInput() ?>

    <?= $form->field($model, 'service')->textInput() ?>

    <div class="form-group">
        <?= Html::submitButton('Enrégistrer', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
