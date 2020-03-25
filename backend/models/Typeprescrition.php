<?php

namespace backend\models;

use Yii;

/**
 * This is the model class for table "typeprescrition".
 *
 * @property int $id
 * @property string $libelle
 *
 * @property Prescription[] $prescriptions
 */
class Typeprescrition extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'typeprescrition';
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
    public function getPrescriptions()
    {
        return $this->hasMany(Prescription::className(), ['typeprescription' => 'id']);
    }
}
