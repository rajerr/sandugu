<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel backend\models\HopitalSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Hopitals';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="hopital-index">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Create Hopital', ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

           // 'id',
            'nom',
            'adresse',
            'contact',
            'mail',
            //'BoitePostal',
            //'Fax',
            'logo',
            'statut',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>


</div>
