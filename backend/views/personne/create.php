<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model backend\models\Personne */

$this->title = 'Create Personne';
$this->params['breadcrumbs'][] = ['label' => 'Personnes', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="personne-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
