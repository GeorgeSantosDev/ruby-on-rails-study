class ClassController < ApplicationController
  before_actions :method, only: [:show, :create]
  # Método que deve ser chamado antes de cada rota dentro do only

  def index
    @users = User.all

    render json: @users, root: true # colocar a raiz na resposta
    render json: @users, only/except: [:attr1, :attr2] # escolhe o que retornar ou não
    render json: @users, methods: :method_created_in_model # faz o merge com o retorno do método
  end

  def method
    # ação
  end
end