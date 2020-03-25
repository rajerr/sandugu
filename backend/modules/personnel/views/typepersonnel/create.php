<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model common\models\Typepersonne */

$this->title = Yii::t('app', 'Create Typepersonne');
$this->params['breadcrumbs'][] = ['label' => Yii::t('app', 'Typepersonnes'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="typepersonne-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
