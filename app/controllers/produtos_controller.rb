class ProdutosController < ApplicationController

  def index
    @produtos = Produto.order(:nome)
    @produto_com_desconto = Produto.order(:preco).limit 5

  end

  def create
      produto = params.require(:produto).permit(:nome, :descricao, :preco, :quantidade)
      Produto.create produto
       flash[:success] = "produto criado"
       redirect_to root_path
  end


  # def new
  #     @produto = Produto.new
  #     nome        = params[:nome]
  #     descricao   = params[:descricao]
  #     preco       = params[:preco]
  #     quantidade  = params[:quantiade]
  #
  # end
end
