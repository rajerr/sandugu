<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model common\models\Typeprescrition */

$this->title = Yii::t('app', 'Create Typeprescrition');
$this->params['breadcrumbs'][] = ['label' => Yii::t('app', 'Typeprescritions'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="typeprescrition-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
