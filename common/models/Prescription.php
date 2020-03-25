<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "prescription".
 *
 * @property int $id
 * @property string $date
 * @property string $description
 * @property string $Observation
 * @property int $typeprescription
 * @property int $consultation
 *
 * @property Consultation $consultation0
 * @property Typeprescrition $typeprescription0
 */
class Prescription extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'prescription';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['date', 'description', 'Observation', 'typeprescription', 'consultation'], 'required'],
            [['date'], 'safe'],
            [['description', 'Observation'], 'string'],
            [['typeprescription', 'consultation'], 'integer'],
            [['consultation'], 'exist', 'skipOnError' => true, 'targetClass' => Consultation::className(), 'targetAttribute' => ['consultation' => 'id']],
            [['typeprescription'], 'exist', 'skipOnError' => true, 'targetClass' => Typeprescrition::className(), 'targetAttribute' => ['typeprescription' => 'id']],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'date' => 'Date',
            'description' => 'Description',
            'Observation' => 'Observation',
            'typeprescription' => 'Typeprescription',
            'consultation' => 'Consultation',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getConsultation0()
    {
        return $this->hasOne(Consultation::className(), ['id' => 'consultation']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getTypeprescription0()
    {
        return $this->hasOne(Typeprescrition::className(), ['id' => 'typeprescription']);
    }
}
