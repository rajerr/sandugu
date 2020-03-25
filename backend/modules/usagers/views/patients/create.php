<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model common\models\Personne */

$this->title = Yii::t('app', 'Create Personne');
$this->params['breadcrumbs'][] = ['label' => Yii::t('app', 'Personnes'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="personne-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
