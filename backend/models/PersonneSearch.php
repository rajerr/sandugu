<?php

namespace backend\models;

use yii\base\Model;
use yii\data\ActiveDataProvider;
use backend\models\Personne;

/**
 * PersonneSearch represents the model behind the search form of `backend\models\Personne`.
 */
class PersonneSearch extends Personne
{
    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id', 'TypePersonne', 'service'], 'integer'],
            [['photo', 'nom', 'prenom', 'sexe', 'groupesanguin', 'naissance', 'matrimoniale', 'profession', 'specialite', 'telephone', 'email', 'adresses', 'date'], 'safe'],
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
        $query = Personne::find();

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
            'naissance' => $this->naissance,
            'date' => $this->date,
            'TypePersonne' => $this->TypePersonne,
            'service' => $this->service,
        ]);

        $query->andFilterWhere(['like', 'photo', $this->photo])
            ->andFilterWhere(['like', 'nom', $this->nom])
            ->andFilterWhere(['like', 'prenom', $this->prenom])
            ->andFilterWhere(['like', 'sexe', $this->sexe])
            ->andFilterWhere(['like', 'groupesanguin', $this->groupesanguin])
            ->andFilterWhere(['like', 'matrimoniale', $this->matrimoniale])
            ->andFilterWhere(['like', 'profession', $this->profession])
            ->andFilterWhere(['like', 'specialite', $this->specialite])
            ->andFilterWhere(['like', 'telephone', $this->telephone])
            ->andFilterWhere(['like', 'email', $this->email])
            ->andFilterWhere(['like', 'adresses', $this->adresses]);

        return $dataProvider;
    }
}
