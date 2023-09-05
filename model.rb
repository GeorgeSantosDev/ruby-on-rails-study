class Model < ApplicationRecord
  has_may :attrs

  accepts_nested_attributes_for :attrs
  # Quando estivermos criando algum dado da model, podemos passa um parâmetro
  # attrs_attributes [{}, {}] para cadastrarmos os attributos também 

  def method_created_in_model
    # método que será chamado no controller
  end

  def as_json(options={}) # Essas options é o que você passsa no render json
    super(
        methods: :method_created_in_model, # pode ser um array de métodos [:attr, :attr2]
        root,
        include: { :fk { only: :attr } } # O fk deve estar no singular se a relação for belongs_to
      )
  end
  # Redefinindo com padrão o que será retornado nas rotas
  # Por debaixo dos panos o método as_json é chamado no  render json: @users no controller
  
  def change_date
    I18n.l(self.date) unless self.date.blank? 
    # Transforma a data para o padrão do locale a menos que o atributo não esteja vazio
  end
end