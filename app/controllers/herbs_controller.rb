class HerbsController < ApplicationController
  before_action :set_herb, only: [:show, :edit, :update, :destroy]

  # GET /herbs
  # GET /herbs.json
  def index
    @herbs = Herb.all
  end

  # GET /herbs/1
  # GET /herbs/1.json
  def show
  end

  # GET /herbs/new
  def new
    @herb = Herb.new
  end

  # GET /herbs/1/edit
  def edit
  end

  # POST /herbs
  # POST /herbs.json
  def create
    @herb = Herb.new(herb_params)

    respond_to do |format|
      if @herb.save
        format.html { redirect_to @herb, notice: 'Herb was successfully created.' }
        format.json { render :show, status: :created, location: @herb }
      else
        format.html { render :new }
        format.json { render json: @herb.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /herbs/1
  # PATCH/PUT /herbs/1.json
  def update
    respond_to do |format|
      if @herb.update(herb_params)
        format.html { redirect_to @herb, notice: 'Herb was successfully updated.' }
        format.json { render :show, status: :ok, location: @herb }
      else
        format.html { render :edit }
        format.json { render json: @herb.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /herbs/1
  # DELETE /herbs/1.json
  def destroy
    @herb.destroy
    respond_to do |format|
      format.html { redirect_to herbs_url, notice: 'Herb was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_herb
      @herb = Herb.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def herb_params
      params.require(:herb).permit(:common_name, :latin_name, :heat_cool, :relax_tone, :moisten_dry, :notes)
    end
end
