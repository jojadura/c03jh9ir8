class ActorsController < ApplicationController

	def index
		@actors = Actor.all
	end

	def new
		@actor = Actor.new
	end

	def create
		@actor = Actor.new(actor_params)
		if @actor.save
			redirect_to actors_path, notice: "El actor fue creado con éxito"
		else
			render :new   # se ubica de nuevo en la vista que se indique
		end		
	end

	private 
		def actor_params
			params.require(:actor).permit(:name, :bio, :birth_date, :birth_place, :death_date, :death_place, :image_url)
			
		end

end
