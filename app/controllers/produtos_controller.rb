class ProdutosController < ApplicationController
    def index
        @produtos = Produto.order :preco
    end

    def new
        @produto = Produto.new
    end

    def create
        @produto = Produto.new(produto_params)
        if @produto.save
            return redirect_to root_path
        end

        render :new, status: :unprocessable_entity
    end

    private
    def produto_params
        params.expect(produto: [:nome, :descricao, :preco, :quantidade])
    end
end