class ArquivoCnab < ApplicationRecord
	# Associations
	has_many :transacoes

	# Attachment
	attachment :arquivo

	# Validates
	validate :arquivo_vazio

	def arquivo_vazio
		errors.add(:arquivo, :blank, message: "não pode ficar em branco") if arquivo.nil?
	end
end
