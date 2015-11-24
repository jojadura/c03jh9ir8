module ActorsHelper

	def form_title
		@actor.new_record? ? "Crear Actor" : "Editar Actor"
	end

end
