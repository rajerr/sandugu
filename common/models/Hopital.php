<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "hopital".
 *
 * @property int $id
 * @property string $nom
 * @property string $adresse
 * @property string $contact
 * @property string $mail
 * @property string $BoitePostal
 * @property string $Fax
 * @property string $logo
 * @property string $statut
 *
 * @property Rdv[] $rdvs
 * @property Service[] $services
 */
class Hopital extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'hopital';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['nom', 'adresse', 'contact', 'mail', 'BoitePostal', 'Fax', 'logo', 'statut'], 'required'],
            [['statut'], 'string'],
            [['nom', 'adresse', 'contact', 'mail', 'Fax', 'logo'], 'string', 'max' => 255],
            [['BoitePostal'], 'string', 'max' => 25],
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
            'adresse' => 'Adresse',
            'contact' => 'Contact',
            'mail' => 'Mail',
            'BoitePostal' => 'Boite Postal',
            'Fax' => 'Fax',
            'logo' => 'Logo',
            'statut' => 'Statut',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getRdvs()
    {
        return $this->hasMany(Rdv::className(), ['hopital' => 'id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getServices()
    {
        return $this->hasMany(Service::className(), ['hopital' => 'id']);
    }
}
