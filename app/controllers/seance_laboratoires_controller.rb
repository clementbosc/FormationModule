class SeanceLaboratoiresController < ApplicationController
  before_action :set_seance_laboratoire, only: [:show, :edit, :update, :destroy]

  # GET /seance_laboratoires
  # GET /seance_laboratoires.json
  def index
    @seance_laboratoires = SeanceLaboratoire.all
  end

  # GET /seance_laboratoires/1
  # GET /seance_laboratoires/1.json
  def show
  end

  # GET /seance_laboratoires/new
  def new
    @seance_laboratoire = SeanceLaboratoire.new
  end

  # GET /seance_laboratoires/1/edit
  def edit
  end

  # POST /seance_laboratoires
  # POST /seance_laboratoires.json
  def create
    @seance_laboratoire = SeanceLaboratoire.new(seance_laboratoire_params)

    respond_to do |format|
      if @seance_laboratoire.save
        format.html { redirect_to @seance_laboratoire, notice: 'Seance laboratoire was successfully created.' }
        format.json { render :show, status: :created, location: @seance_laboratoire }
      else
        format.html { render :new }
        format.json { render json: @seance_laboratoire.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /seance_laboratoires/1
  # PATCH/PUT /seance_laboratoires/1.json
  def update
    respond_to do |format|
      if @seance_laboratoire.update(seance_laboratoire_params)
        format.html { redirect_to @seance_laboratoire, notice: 'Seance laboratoire was successfully updated.' }
        format.json { render :show, status: :ok, location: @seance_laboratoire }
      else
        format.html { render :edit }
        format.json { render json: @seance_laboratoire.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /seance_laboratoires/1
  # DELETE /seance_laboratoires/1.json
  def destroy
    @seance_laboratoire.destroy
    respond_to do |format|
      format.html { redirect_to seance_laboratoires_url, notice: 'Seance laboratoire was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_seance_laboratoire
      @seance_laboratoire = SeanceLaboratoire.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def seance_laboratoire_params
      params.require(:seance_laboratoire).permit(:name, :number)
    end
end
