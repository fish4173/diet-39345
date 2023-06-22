class DietsController < ApplicationController
  before_action :authenticate_user!, only: [:index]


  def index
    @diet_kcal = Diet.new
    @keisan = (88.362 + (13.397 * current_user.weight) + (4.799 * current_user.height) - (5.677 * current_user.age)).to_i
    @diet = Diet.find_by(user_id: current_user.id, date: Date.today)
  end

  def create
    # @diet_kcal = Diet.new(diet_params)
    # if @diet_kcal.save
    #   redirect_to root_path
    # else
    #   render :index
    # end
    # //ダイエットオプジェクトを初期化
    @diet_kcal = Diet.find_or_initialize_by(user_id: current_user.id, date: diet_params[:date])


    @diet_kcal.assign_attributes(diet_params)
    if @diet_kcal.save
      redirect_to root_path
    else
      render :index
    end
  end

  def edit
  end

  def update
    if @diet_kcal.update(diet_params) #書き込みをこのプログラムでして、アップデートが出来たかを確認している。
      redirect_to diet_path(@diet_kcal)
    else
      render :edit
    end
  end

  def diet_params
    params.require(:diet).permit(:breakfast_cal, :lunch_cal, :dinner_cal, :snack_cal, :motion_cal, :date, :metabo,:total_cal,:total_kg).merge(user_id: current_user.id)
  end


end
