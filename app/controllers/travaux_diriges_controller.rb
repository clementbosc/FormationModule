class TravauxDirigesController < ApplicationController
  before_action :set_travaux_dirige, only: [:show, :edit, :update, :destroy]

  # GET /travaux_diriges
  # GET /travaux_diriges.json
  def index
    @travaux_diriges = TravauxDirige.all
  end

  # GET /travaux_diriges/1
  # GET /travaux_diriges/1.json
  def show
  end

  # GET /travaux_diriges/new
  def new
    @travaux_dirige = TravauxDirige.new
  end

  # GET /travaux_diriges/1/edit
  def edit
  end

  # POST /travaux_diriges
  # POST /travaux_diriges.json
  def create
    @travaux_dirige = TravauxDirige.new(travaux_dirige_params)

    respond_to do |format|
      if @travaux_dirige.save
        format.html { redirect_to @travaux_dirige, notice: 'Travaux dirige was successfully created.' }
        format.json { render :show, status: :created, location: @travaux_dirige }
      else
        format.html { render :new }
        format.json { render json: @travaux_dirige.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /travaux_diriges/1
  # PATCH/PUT /travaux_diriges/1.json
  def update
    respond_to do |format|
      if @travaux_dirige.update(travaux_dirige_params)
        format.html { redirect_to @travaux_dirige, notice: 'Travaux dirige was successfully updated.' }
        format.json { render :show, status: :ok, location: @travaux_dirige }
      else
        format.html { render :edit }
        format.json { render json: @travaux_dirige.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /travaux_diriges/1
  # DELETE /travaux_diriges/1.json
  def destroy
    @travaux_dirige.destroy
    respond_to do |format|
      format.html { redirect_to travaux_diriges_url, notice: 'Travaux dirige was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_travaux_dirige
      @travaux_dirige = TravauxDirige.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def travaux_dirige_params
      params.require(:travaux_dirige).permit(:name, :number)
    end
end
