<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model backend\models\Hopital */

$this->title = 'Update Hopital: ' . $model->id;
$this->params['breadcrumbs'][] = ['label' => 'Hopitals', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->id, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="hopital-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
