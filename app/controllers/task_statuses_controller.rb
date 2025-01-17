class TaskStatusesController < ApplicationController
  before_action :set_task_status, only: [:show, :edit, :update, :destroy]
  before_action :admin_user,     only: [:index, :show, :edit, :update, :destroy]
  
  def admin_user
    redirect_to(root_url) unless current_user != nil && current_user.admin?
  end

  # GET /task_statuses
  # GET /task_statuses.json
  def index
    @task_statuses = TaskStatus.all
  end

  # GET /task_statuses/1
  # GET /task_statuses/1.json
  def show
  end

  # GET /task_statuses/new
  def new
    @task_status = TaskStatus.new
  end

  # GET /task_statuses/1/edit
  def edit
  end

  # POST /task_statuses
  # POST /task_statuses.json
  def create
    @task_status = TaskStatus.new(task_status_params)

    respond_to do |format|
      if @task_status.save
        format.html { redirect_to @task_status, notice: 'Task status was successfully created.' }
        format.json { render :show, status: :created, location: @task_status }
      else
        format.html { render :new }
        format.json { render json: @task_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /task_statuses/1
  # PATCH/PUT /task_statuses/1.json
  def update
    respond_to do |format|
      if @task_status.update(task_status_params)
        format.html { redirect_to @task_status, notice: 'Task status was successfully updated.' }
        format.json { render :show, status: :ok, location: @task_status }
      else
        format.html { render :edit }
        format.json { render json: @task_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /task_statuses/1
  # DELETE /task_statuses/1.json
  def destroy
    @task_status.destroy
    respond_to do |format|
      format.html { redirect_to task_statuses_url, notice: 'Task status was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_task_status
      @task_status = TaskStatus.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def task_status_params
      params.require(:task_status).permit(:name)
    end
end
