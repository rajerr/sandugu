<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model backend\models\Typeprescrition */

$this->title = 'Create Typeprescrition';
$this->params['breadcrumbs'][] = ['label' => 'Typeprescritions', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="typeprescrition-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
