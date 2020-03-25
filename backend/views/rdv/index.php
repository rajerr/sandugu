<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel backend\models\RdvSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Rdvs';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="rdv-index">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Create Rdv', ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'id',
            'intitule',
            'date',
            'heure',
            'message:ntext',
            //'hopital',
            //'personne',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>


</div>
