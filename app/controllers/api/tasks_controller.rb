class Api::TasksController < ApplicationController

  # GET /tasks
  def index
    # 後々のため、更新順で返します
    @tasks = Task.order('updated_at DESC') #一覧表示
  end

  # POST /tasks
  def create
    @task = Task.new(task_params) #インスタンスの生成時にtask_paramsになるのはなぜ？

    if @task.save
      render :show, status: :created
    else
      render json: @task.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /tasks/1
  def update
    @task = Task.find(params[:id]) 
    if @task.update(task_params)
      render :show, status: :ok
    else
      render json: @task.errors, status: :unprocessable_entity
    end
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    #ストロングパラメータがfetchになっているの見たことがない
    
    def task_params
      params.fetch(:task, {}).permit(
          :name, :is_done
      )
    end
end