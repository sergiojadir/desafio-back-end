module ApplicationHelper
	def flash_class(level)
    case level
      when "notice" then "alert alert-info"
      when "success" then "alert alert-success"
      when "success" then "alert alert-warning"
      when "error" then "alert alert-danger"
      when "alert" then "alert alert-danger"
    end
	end

	def saldo_decoration(saldo)
		css_class = saldo < 0 ? 'danger' : 'primary'
		content_tag(:p, saldo_to_currency(saldo), class: "text-#{css_class}")
	end

	def saldo_to_currency(saldo)
		number_to_currency(saldo, unit: "R$", separator: ",", delimiter: "")
	end
end
