class TransacoesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_arquivo_cnab, only: [:index, :detalhes_da_trasacao]

  def index
    @transacoes_agrupadas_por_loja = @arquivo_cnab.transacoes_agrupadas_por_loja
  end

  def detalhes_da_trasacao
    @nome_da_loja = params[:nome_da_loja]
    @transacoes = @arquivo_cnab.transacoes.where(nome_da_loja: @nome_da_loja)
  end

  private
  def set_arquivo_cnab
    @arquivo_cnab = ArquivoCnab.find(params[:arquivo_cnab_id])
  end
end
