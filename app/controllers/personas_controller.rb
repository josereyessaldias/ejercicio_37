class PersonasController < ApplicationController
before_action :set_persona, only: [:show, :edit, :update, :destroy]

  def index
  	@personas = Persona.all
    @persona = Persona.new
  end

	def create
		@persona = Persona.new(persona_params)
		@persona.save
		redirect_to root_path

	#	respond_to do |format|
     # if @product.save

        #format.html { redirect_to @persona, notice: 'Persona fue creada' }
        #format.json { render :show, status: :created, location: @persona }
      #else
       # format.html { render :new }
       # format.json { render json: @product.errors, status: :unprocessable_entity }
      #end
	end 


  def edit
  end

  def update
    @persona.update(persona_params)
    redirect_to root_path, notice: 'Persona was successfully updated.'
  end


  def destroy
    @persona.destroy
    redirect_to root_path, notice: 'Persona was successfully destroyed.'
  end

	private

  def set_persona
      @persona = Persona.find(params[:id])
  end

	def persona_params
      params.require(:persona).permit(:name)
  end

end
