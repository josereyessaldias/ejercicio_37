class ProyectosController < ApplicationController
	before_action :set_proyecto, only: [:show, :edit, :update, :destroy]

 	def index
  		@proyectos = Proyecto.all
    	@proyecto = Proyecto.new
 	end

 	def create
		@proyecto = Proyecto.new(proyecto_params)
		@proyecto.save
		redirect_to proyectos_path
	end

	def edit
 	end

	def update
	    @proyecto.update(proyecto_params)
	    redirect_to proyectos_path, notice: 'Proyecto was successfully updated.'
	end


	def destroy
	    @proyecto.destroy
	    redirect_to proyectos_path, notice: 'Proyecto was successfully destroyed.'
	end


	private
	
	def set_proyecto
      @proyecto = Proyecto.find(params[:id])
 	end

	def proyecto_params
      params.require(:proyecto).permit(:nombre)
	end

end
