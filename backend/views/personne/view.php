<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model backend\models\Personne */

$this->title = $model->id;
$this->params['breadcrumbs'][] = ['label' => 'Personnes', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
\yii\web\YiiAsset::register($this);
?>
<div class="personne-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Update', ['update', 'id' => $model->id], ['class' => 'btn btn-primary']) ?>
        <?= Html::a('Delete', ['delete', 'id' => $model->id], [
            'class' => 'btn btn-danger',
            'data' => [
                'confirm' => 'Are you sure you want to delete this item?',
                'method' => 'post',
            ],
        ]) ?>
    </p>

    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'id',
            'photo',
            'nom',
            'prenom',
            'sexe',
            'groupesanguin',
            'naissance',
            'matrimoniale',
            'profession',
            'specialite',
            'telephone',
            'email:email',
            'adresses',
            'date',
            'TypePersonne',
            'service',
        ],
    ]) ?>

</div>
