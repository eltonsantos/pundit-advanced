class GroupFunctionalitiesController < ApplicationController
  before_action :set_group_functionality, only: [:show, :edit, :update, :destroy]

  # GET /group_functionalities
  # GET /group_functionalities.json
  def index
    @group_functionalities = GroupFunctionality.all
  end

  # GET /group_functionalities/1
  # GET /group_functionalities/1.json
  def show
  end

  # GET /group_functionalities/new
  def new
    @group_functionality = GroupFunctionality.new
  end

  # GET /group_functionalities/1/edit
  def edit
  end

  # POST /group_functionalities
  # POST /group_functionalities.json
  def create
    @group_functionality = GroupFunctionality.new(group_functionality_params)

    respond_to do |format|
      if @group_functionality.save
        format.html { redirect_to @group_functionality, notice: 'Group functionality was successfully created.' }
        format.json { render :show, status: :created, location: @group_functionality }
      else
        format.html { render :new }
        format.json { render json: @group_functionality.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /group_functionalities/1
  # PATCH/PUT /group_functionalities/1.json
  def update
    respond_to do |format|
      if @group_functionality.update(group_functionality_params)
        format.html { redirect_to @group_functionality, notice: 'Group functionality was successfully updated.' }
        format.json { render :show, status: :ok, location: @group_functionality }
      else
        format.html { render :edit }
        format.json { render json: @group_functionality.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /group_functionalities/1
  # DELETE /group_functionalities/1.json
  def destroy
    @group_functionality.destroy
    respond_to do |format|
      format.html { redirect_to group_functionalities_url, notice: 'Group functionality was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_group_functionality
      @group_functionality = GroupFunctionality.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def group_functionality_params
      params.require(:group_functionality).permit(:group_id, :functionality_id)
    end
end
