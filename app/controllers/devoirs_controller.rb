class DevoirsController < ApplicationController
  before_action :set_devoir, only: [:show, :edit, :update, :destroy,:ajoute_presence]


  def ajoute_presents
    p=note_devoir_create_params
    logger.debug p.inspect
    devoir_id=p[:id]
    presents=p[:presents] || []
    presents.each do |u_id|
      d=NoteDevoir.create(user_id: u_id, devoir_id: devoir_id,	note: "")
    end
    redirect_to :back
  end
  
  # GET /devoirs
  # GET /devoirs.json
  def index
    @devoirs = Devoir.all
  end

  # GET /devoirs/1
  # GET /devoirs/1.json
  def show
  end

  # GET /devoirs/new
  def new
    @devoir = Devoir.new
  end

  # GET /devoirs/1/edit
  def edit
  end

  # POST /devoirs
  # POST /devoirs.json
  def create
    @devoir = Devoir.new(devoir_params)

    respond_to do |format|
      if @devoir.save
        format.html { redirect_to @devoir, notice: 'Devoir was successfully created.' }
        format.json { render :show, status: :created, location: @devoir }
      else
        format.html { render :new }
        format.json { render json: @devoir.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /devoirs/1
  # PATCH/PUT /devoirs/1.json
  def update
    respond_to do |format|
      if @devoir.update(devoir_params)
        format.html { redirect_to @devoir, notice: 'Devoir was successfully updated.' }
        format.json { render :show, status: :ok, location: @devoir }
      else
        format.html { render :edit }
        format.json { render json: @devoir.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /devoirs/1
  # DELETE /devoirs/1.json
  def destroy
    @devoir.destroy
    respond_to do |format|
      format.html { redirect_to devoirs_url, notice: 'Devoir was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_devoir
      @devoir = Devoir.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def devoir_params
      params.require(:devoir).permit(:name)
    end
    def note_devoir_create_params
      params.require(:devoir).permit(:id, :presents => [])
    end
end
