class MeesController < ApplicationController
  def index
    @mees = Mee.all
  end

  def new
    @mee = Mee.new
    
  end


  def create
    mee = Mee.new(mee_params)
    if mee.save
      redirect_to root_path
    else
      render :new
    end
  end

  def destroy
    mee = Mee.find(params[:id])
    if mee.destroy
      redirect_to root_path, notice: '削除しました。'
    else
      render :index
    end
  end

  private
  def mee_params
    params.require(:mee).permit(:q_1, :q_2, :q_3, :q_4, :q_5, :q_6, :q_7)
  end
  #.merge(user_id: current_user.id)
end
