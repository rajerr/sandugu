<?php

namespace common\models;

use yii\base\Model;
use yii\data\ActiveDataProvider;
use common\models\Consultation;

/**
 * ConsultationSearch represents the model behind the search form of `common\models\Consultation`.
 */
class ConsultationSearch extends Consultation
{
    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id', 'personne'], 'integer'],
            [['intitule', 'date', 'heure', 'diagnostic'], 'safe'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function scenarios()
    {
        // bypass scenarios() implementation in the parent class
        return Model::scenarios();
    }

    /**
     * Creates data provider instance with search query applied
     *
     * @param array $params
     *
     * @return ActiveDataProvider
     */
    public function search($params)
    {
        $query = Consultation::find();

        // add conditions that should always apply here

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);

        $this->load($params);

        if (!$this->validate()) {
            // uncomment the following line if you do not want to return any records when validation fails
            // $query->where('0=1');
            return $dataProvider;
        }

        // grid filtering conditions
        $query->andFilterWhere([
            'id' => $this->id,
            'date' => $this->date,
            'heure' => $this->heure,
            'personne' => $this->personne,
        ]);

        $query->andFilterWhere(['like', 'intitule', $this->intitule])
            ->andFilterWhere(['like', 'diagnostic', $this->diagnostic]);

        return $dataProvider;
    }
}
