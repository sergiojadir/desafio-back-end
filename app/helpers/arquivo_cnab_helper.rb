module ArquivoCnabHelper
	def status_do_arquivo(arquivo_cnab)
		css_class = if arquivo_cnab.em_processamento? 
			'danger' 
		elsif arquivo_cnab.processado? 
			'primary'
		else
			'warning'
		end
		
		content_tag(:span, arquivo_cnab.human_state_name,class: "badge badge-pill badge-#{css_class}")
	end
end
