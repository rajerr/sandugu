<?php

namespace backend\models;

use Yii;

/**
 * This is the model class for table "consultation".
 *
 * @property int $id
 * @property string $intitule
 * @property string $date
 * @property string $heure
 * @property string $diagnostic
 * @property int $personne
 *
 * @property Personne $personne0
 * @property Prescription[] $prescriptions
 */
class Consultation extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'consultation';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['intitule', 'date', 'heure', 'diagnostic', 'personne'], 'required'],
            [['date', 'heure'], 'safe'],
            [['diagnostic'], 'string'],
            [['personne'], 'integer'],
            [['intitule'], 'string', 'max' => 255],
            [['personne'], 'exist', 'skipOnError' => true, 'targetClass' => Personne::className(), 'targetAttribute' => ['personne' => 'id']],
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
            'diagnostic' => 'Diagnostic',
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
    public function getPrescriptions()
    {
        return $this->hasMany(Prescription::className(), ['consultation' => 'id']);
    }
}
