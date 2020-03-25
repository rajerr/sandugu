<?php

namespace backend\models;
use yii\base\BaseObject; 

use Yii;

/**
 * This is the model class for table "service".
 *
 * @property int $id
 * @property string $nom
 * @property int $hopital
 * @property string $statut
 *
 * @property Personne[] $personnes
 * @property Rdv[] $rdvs
 * @property Hopital $hopital0
 */
class Service extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'service';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['nom', 'hopital', 'statut'], 'required'],
            [['hopital'], 'integer'],
            [['statut'], 'string'],
            [['nom'], 'string', 'max' => 255],
            [['hopital'], 'exist', 'skipOnError' => true, 'targetClass' => Hopital::className(), 'targetAttribute' => ['hopital' => 'id']],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'nom' => 'Nom',
            'hopital' => 'Hopital',
            'statut' => 'Statut',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getPersonnes()
    {
        return $this->hasMany(Personne::className(), ['service' => 'id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getRdvs()
    {
        return $this->hasMany(Rdv::className(), ['service' => 'id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getHopital0()
    {
        return $this->hasOne(Hopital::className(), ['id' => 'hopital']);
    }
   
}
