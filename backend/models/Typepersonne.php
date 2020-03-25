<?php

namespace backend\models;

use Yii;

/**
 * This is the model class for table "typepersonne".
 *
 * @property int $id
 * @property string $libelle
 *
 * @property Personne[] $personnes
 */
class Typepersonne extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'typepersonne';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['libelle'], 'required'],
            [['libelle'], 'string', 'max' => 255],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'libelle' => 'Libelle',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getPersonnes()
    {
        return $this->hasMany(Personne::className(), ['TypePersonne' => 'id']);
    }
}
