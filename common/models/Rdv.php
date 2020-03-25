<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "rdv".
 *
 * @property int $id
 * @property string $intitule
 * @property string $date
 * @property string $heure
 * @property string $message
 * @property int $hopital
 * @property int $personne
 *
 * @property Personne $personne0
 * @property Hopital $hopital0
 */
class Rdv extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'rdv';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['intitule', 'date', 'heure', 'message', 'hopital', 'personne'], 'required'],
            [['date', 'heure'], 'safe'],
            [['message'], 'string'],
            [['hopital', 'personne'], 'integer'],
            [['intitule'], 'string', 'max' => 255],
            [['personne'], 'exist', 'skipOnError' => true, 'targetClass' => Personne::className(), 'targetAttribute' => ['personne' => 'id']],
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
            'intitule' => 'Intitule',
            'date' => 'Date',
            'heure' => 'Heure',
            'message' => 'Message',
            'hopital' => 'Hopital',
            'personne' => 'Personne',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getPersonne0()
    {
        return $this->hasOne(Personne::className(), ['id' => 'personne']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getHopital0()
    {
        return $this->hasOne(Hopital::className(), ['id' => 'hopital']);
    }
}
