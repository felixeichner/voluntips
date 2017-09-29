module ApplicationHelper

	def link_button_helper(object = "", edit_path = "")
		(link_to 'Zurück', url_for(:back), class: "btn btn-warning") + ' ' +
		unless object == ""
			(link_to 'Bearbeiten', edit_path, class: "btn btn-warning") + ' ' +
			(link_to 'Löschen', object,
													method: :delete,
													data: { confirm: 'Are you sure?' }, class: "btn btn-warning")
		end
	end

  def active?(key, value)
  	"active" if key == value
  end

	def current_action_label
		if action_name == "new"
			"Erstellen"
		else
			"Ändern"
		end
	end

end
