class FoundationalActionsController < ApplicationController
  before_action :set_foundational_action, only: [:show, :edit, :update, :destroy]

  # GET /foundational_actions
  # GET /foundational_actions.json
  def index
    @foundational_actions = FoundationalAction.all
  end

  # GET /foundational_actions/1
  # GET /foundational_actions/1.json
  def show
  end

  # GET /foundational_actions/new
  def new
    @foundational_action = FoundationalAction.new
  end

  # GET /foundational_actions/1/edit
  def edit
  end

  # POST /foundational_actions
  # POST /foundational_actions.json
  def create
    @foundational_action = FoundationalAction.new(foundational_action_params)

    respond_to do |format|
      if @foundational_action.save
        format.html { redirect_to @foundational_action, notice: 'Foundational action was successfully created.' }
        format.json { render :show, status: :created, location: @foundational_action }
      else
        format.html { render :new }
        format.json { render json: @foundational_action.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /foundational_actions/1
  # PATCH/PUT /foundational_actions/1.json
  def update
    respond_to do |format|
      if @foundational_action.update(foundational_action_params)
        format.html { redirect_to @foundational_action, notice: 'Foundational action was successfully updated.' }
        format.json { render :show, status: :ok, location: @foundational_action }
      else
        format.html { render :edit }
        format.json { render json: @foundational_action.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /foundational_actions/1
  # DELETE /foundational_actions/1.json
  def destroy
    @foundational_action.destroy
    respond_to do |format|
      format.html { redirect_to foundational_actions_url, notice: 'Foundational action was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_foundational_action
      @foundational_action = FoundationalAction.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def foundational_action_params
      params.require(:foundational_action).permit(:name, :notes)
    end
end
