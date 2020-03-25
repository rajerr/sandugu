<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model backend\models\Rdv */

$this->title = 'Create Rdv';
$this->params['breadcrumbs'][] = ['label' => 'Rdvs', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="rdv-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
