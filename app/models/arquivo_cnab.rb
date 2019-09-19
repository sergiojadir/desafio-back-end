class ArquivoCnab < ApplicationRecord
	# Associations
	has_many :transacoes

	# Attachment
	attachment :arquivo
end
