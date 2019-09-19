class ArquivoCnabJob < ApplicationJob
  queue_as :default

  after_perform do |job|
    arquivo_cnab = ArquivoCnab.find(job.arguments.first)
    arquivo_cnab.fire_events!(:terminar) if !arquivo_cnab.processado_com_erro?
  end

  def perform(arquivo_cnab_id)
  	arquivo_cnab = ArquivoCnab.find(arquivo_cnab_id)
    
    arquivo_cnab_service = ArquivoCnabService.new(arquivo_cnab)
    arquivo_cnab_service.parse_and_save!
  end
end
