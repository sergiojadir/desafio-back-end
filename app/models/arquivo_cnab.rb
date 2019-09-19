class ArquivoCnab < ApplicationRecord
	# Associations
	has_many :transacoes

	# Attachment
	attachment :arquivo

	# Validates
	validate :arquivo_vazio

	# State machine
	state_machine :status, :initial => :em_processamento do
    event :terminar do
      transition :em_processamento => :processado
    end
  end

	# Instance methods
	def arquivo_vazio
		errors.add(:arquivo, :blank, message: "não pode ficar em branco") if arquivo.nil?
	end
end
