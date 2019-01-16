class HistoricobsController < ApplicationController
  before_action :set_historicob, only: [:show, :edit, :update, :destroy]

  # GET /historicobs
  # GET /historicobs.json
  def index
    @historicobs = Historicob.all
  end

  # GET /historicobs/1
  # GET /historicobs/1.json
  def show
  end

  # GET /historicobs/new
  def new
    @historicob = Historicob.new
  end

  # GET /historicobs/1/edit
  def edit
  end

  # POST /historicobs
  # POST /historicobs.json
  def create
    @historicob = Historicob.new(historicob_params)

    respond_to do |format|
      if @historicob.save
        format.html { redirect_to @historicob, notice: 'Historicob was successfully created.' }
        format.json { render :show, status: :created, location: @historicob }
      else
        format.html { render :new }
        format.json { render json: @historicob.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /historicobs/1
  # PATCH/PUT /historicobs/1.json
  def update
    respond_to do |format|
      if @historicob.update(historicob_params)
        format.html { redirect_to @historicob, notice: 'Historicob was successfully updated.' }
        format.json { render :show, status: :ok, location: @historicob }
      else
        format.html { render :edit }
        format.json { render json: @historicob.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /historicobs/1
  # DELETE /historicobs/1.json
  def destroy
    @historicob.destroy
    respond_to do |format|
      format.html { redirect_to historicobs_url, notice: 'Historicob was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_historicob
      @historicob = Historicob.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def historicob_params
      params.fetch(:historicob, {})
    end
end
