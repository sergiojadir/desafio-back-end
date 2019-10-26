class ArquivoCnabsController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @arquivos_cnabs = ArquivoCnab.all
  end

  def new
    @arquivo_cnab = ArquivoCnab.new
  end

  def create
    @arquivo_cnab = ArquivoCnab.new(arquivo_cnab_params)

    if @arquivo_cnab.save
      flash[:success] = "Arquivo CNAB enviado com sucesso."
      redirect_to arquivo_cnabs_path
    else
      render :new
    end
  end

  def show
    @arquivo_cnab = ArquivoCnab.includes(:transacoes).find(params[:id])
  end

  private
  def arquivo_cnab_params
    params[:arquivo_cnab] = {arquivo: nil} if !params[:arquivo_cnab].present?
    params.require(:arquivo_cnab).permit(:arquivo)
  end
end
