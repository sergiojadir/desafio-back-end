class ArquivoCnabService
  # Constants
  TAMANHO_DA_LINHA = 80

  # Attributes
  attr_reader :arquivo_cnab

  # Instance Methods
  def initialize(arquivo_cnab)
    @arquivo_cnab = arquivo_cnab
  end
  
  def parse_and_save!
    begin
      transacoes = self.arquivo_cnab.arquivo.read.encode!("UTF-8", "UTF-8", invalid: :replace).each_line.lazy

      transacoes.each_slice(2000) do |linhas|
        linhas.each_with_index do |linha, index|
          raise raise_error_parse_message(index) unless linha.chomp.length == TAMANHO_DA_LINHA

          attributes = ArquivoCnabParseService.new(linha).attributes
          
          transacao = Transacao.new(attributes)
          transacao.arquivo_cnab_id = arquivo_cnab.id
          transacao.save!
        end
      end
    rescue
      @arquivo_cnab.fire_events!(:error)

      ActionCable.server.broadcast 'arquivo_cnab_notifications_channel', message: 'Arquivo processado com erro.!', alert: 'danger'
    end
  end

  def raise_error_parse
    raise "Linha #{index} não possui o tamanho esperado de #{TAMANHO_DA_LINHA} caracteres."
  end
end