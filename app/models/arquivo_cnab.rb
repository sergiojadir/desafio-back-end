class ArquivoCnab < ApplicationRecord
	# Associations
	has_many :transacoes

	# Attachment
	attachment :arquivo

	# Validates
	validates :arquivo_id, :arquivo_filename, :arquivo_size, :arquivo_content_type, presence: true
end
