module ArquivoCnabHelper
	def status_do_arquivo(arquivo_cnab)
		css_class = arquivo_cnab.em_processamento? ? 'danger' : 'primary'
		content_tag(:span, arquivo_cnab.status,class: "badge badge-pill badge-#{css_class}")
	end
end
