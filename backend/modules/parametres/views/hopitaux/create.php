<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model common\models\Hopital */

$this->title = Yii::t('app', 'Create Hopital');
$this->params['breadcrumbs'][] = ['label' => Yii::t('app', 'Hopitals'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="hopital-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
