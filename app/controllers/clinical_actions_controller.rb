class ClinicalActionsController < ApplicationController
  before_action :set_clinical_action, only: [:show, :edit, :update, :destroy]

  # GET /clinical_actions
  # GET /clinical_actions.json
  def index
    @clinical_actions = ClinicalAction.all
  end

  # GET /clinical_actions/1
  # GET /clinical_actions/1.json
  def show
  end

  # GET /clinical_actions/new
  def new
    @clinical_action = ClinicalAction.new
  end

  # GET /clinical_actions/1/edit
  def edit
  end

  # POST /clinical_actions
  # POST /clinical_actions.json
  def create
    @clinical_action = ClinicalAction.new(clinical_action_params)

    respond_to do |format|
      if @clinical_action.save
        format.html { redirect_to @clinical_action, notice: 'Clinical action was successfully created.' }
        format.json { render :show, status: :created, location: @clinical_action }
      else
        format.html { render :new }
        format.json { render json: @clinical_action.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /clinical_actions/1
  # PATCH/PUT /clinical_actions/1.json
  def update
    respond_to do |format|
      if @clinical_action.update(clinical_action_params)
        format.html { redirect_to @clinical_action, notice: 'Clinical action was successfully updated.' }
        format.json { render :show, status: :ok, location: @clinical_action }
      else
        format.html { render :edit }
        format.json { render json: @clinical_action.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /clinical_actions/1
  # DELETE /clinical_actions/1.json
  def destroy
    @clinical_action.destroy
    respond_to do |format|
      format.html { redirect_to clinical_actions_url, notice: 'Clinical action was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_clinical_action
      @clinical_action = ClinicalAction.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def clinical_action_params
      params.require(:clinical_action).permit(:name, :notes)
    end
end
