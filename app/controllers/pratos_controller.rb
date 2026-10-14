class PratosController < ApplicationController
before_action :set_prato, only: %i[show destroy edit update]

  def index
    @pratos = Prato.all
  end

  def show
  end

  def new
    @prato = Prato.new
  end

  def create
    @prato = Prato.new(prato_params)

    if @prato.save
      redirect_to @prato, notice: "Prato criado com sucesso"
    else
      render :new, status: :unprocessable_content
    end
  end
  def destroy
    if @prato.destroy
      redirect_to pratos_path, notice: "Prato excluido"
    else
      render :new, status: :unprocessable_content
    end
  end


  def edit
  end
  def update
    if @prato.update(prato_params)
      redirect_to @prato, notice: "Prato atualizado com sucesso", status: :see_other
    else
      render :edit, status: :unprocessable_content
    end
  end

  private

  def set_prato
    @prato = Prato.find(params.expect(:id))
  end

  def prato_params
    params.require(:prato).permit(:nome, :descricao, :preco)
  end
end
