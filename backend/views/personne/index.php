<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel backend\models\PersonneSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Personnes';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="personne-index">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Create Personne', ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

           // 'id',
            'photo',
            'nom',
            'prenom',
            'sexe',
            'groupesanguin',
            'naissance',
            'matrimoniale',
            //'profession',
            //'specialite',
            //'telephone',
            //'email:email',
            //'adresses',
            //'date',
            //'TypePersonne',
            //'service',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>


</div>
