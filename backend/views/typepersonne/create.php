<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model backend\models\Typepersonne */

$this->title = 'Create Typepersonne';
$this->params['breadcrumbs'][] = ['label' => 'Typepersonnes', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="typepersonne-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
