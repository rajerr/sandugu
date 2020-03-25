<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "personne".
 *
 * @property int $id
 * @property string $photo
 * @property string $nom
 * @property string $prenom
 * @property string $sexe
 * @property string $groupesanguin
 * @property string $naissance
 * @property string $matrimoniale
 * @property string $profession
 * @property string $specialite
 * @property string $telephone
 * @property string $email
 * @property string $adresses
 * @property string $date
 * @property int $TypePersonne
 * @property int $service
 *
 * @property Consultation[] $consultations
 * @property Service $service0
 * @property Typepersonne $typePersonne
 * @property Rdv[] $rdvs
 */
class Personne extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'personne';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['photo', 'nom', 'prenom', 'sexe', 'groupesanguin', 'naissance', 'matrimoniale', 'profession', 'specialite', 'telephone', 'email', 'adresses', 'date', 'TypePersonne'], 'required'],
            [['sexe', 'groupesanguin'], 'string'],
            [['naissance', 'date'], 'safe'],
            [['TypePersonne', 'service'], 'integer'],
            [['photo', 'nom', 'prenom', 'matrimoniale', 'profession', 'specialite', 'telephone', 'email', 'adresses'], 'string', 'max' => 255],
            [['service'], 'exist', 'skipOnError' => true, 'targetClass' => Service::className(), 'targetAttribute' => ['service' => 'id']],
            [['TypePersonne'], 'exist', 'skipOnError' => true, 'targetClass' => Typepersonne::className(), 'targetAttribute' => ['TypePersonne' => 'id']],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'photo' => 'Photo',
            'nom' => 'Nom',
            'prenom' => 'Prenom',
            'sexe' => 'Sexe',
            'groupesanguin' => 'Groupesanguin',
            'naissance' => 'Naissance',
            'matrimoniale' => 'Matrimoniale',
            'profession' => 'Profession',
            'specialite' => 'Specialite',
            'telephone' => 'Telephone',
            'email' => 'Email',
            'adresses' => 'Adresses',
            'date' => 'Date',
            'TypePersonne' => 'Type Personne',
            'service' => 'Service',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getConsultations()
    {
        return $this->hasMany(Consultation::className(), ['personne' => 'id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getService0()
    {
        return $this->hasOne(Service::className(), ['id' => 'service']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getTypePersonne()
    {
        return $this->hasOne(Typepersonne::className(), ['id' => 'TypePersonne']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getRdvs()
    {
        return $this->hasMany(Rdv::className(), ['personne' => 'id']);
    }
}
