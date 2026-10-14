class PedidosController < ApplicationController
  before_action :set_pedido, only: %i[show]

  def index
    @pedidos = Pedido.all
    @pratos = Prato.all
  end

  def show
  end

  def new
    @pedido = Pedido.new
  end

  def create
    @pedido = Pedido.new(pedido_params)
    @pedido.hora = Time.current

    if @pedido.save
      redirect_to @pedido, notice: "pedido criado com sucesso"
    else
      render :new, status: :unprocessable_content
    end
  end


  def destroy
    if @pedido.destroy
      redirect_to pratos_path, notice: "Pedido excluido"
    else
      render :new, status: :unprocessable_content
    end
  end

  def set_pedido
    @pedido = Pedido.find(params.expect(:id))
  end

  def pedido_params
    params.require(:pedido).permit(:mesa, :id_prato)
  end
end
