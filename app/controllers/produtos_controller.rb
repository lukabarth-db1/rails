class ProdutosController < ApplicationController
    def index
        @produtos = Produto.order :preco
    end
end
