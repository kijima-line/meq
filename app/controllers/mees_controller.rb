class MeesController < ApplicationController
  def index
    @mees = Mee.all
  end

  def new
  end

  def create
  end


  private
  def mee_params
    params.require(:mee).permit(:q_1, :q_2, :q_3, :q_4, :q_5, :q_6, :q_7).merge(user_id: current_user.id)
  end
  
end
