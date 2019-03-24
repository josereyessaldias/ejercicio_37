class AsignacionsController < ApplicationController
	before_action :set_asignacion, only: [:show, :edit, :update, :destroy]

	def create
		@asignacion = Asignacion.new
		@asignacion.persona_id = params[:persona_id]
		@asignacion.proyecto_id = params[:proyecto_id]
		@asignacion.save
		redirect_to root_path
	end


	def destroy
		@asignacion.destroy
    	redirect_to root_path, notice: 'Asignación was successfully destroyed.'

	end


	private

	def set_asignacion
		@asignacion = Asignacion.where(persona_id: params[:persona_id],proyecto_id: params[:proyecto_id]).first
		
	end


end
