<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model common\models\Prescription */

$this->title = Yii::t('app', 'Create Prescription');
$this->params['breadcrumbs'][] = ['label' => Yii::t('app', 'Prescriptions'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="prescription-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
