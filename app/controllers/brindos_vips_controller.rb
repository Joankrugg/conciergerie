class BrindosVipsController < ApplicationController
  def new
    @brindos_vip = BrindosVip.new
  end

  def create
    @brindos_vip = BrindosVip.new(brindos_vip_params)
    if @brindos_vip.save
      VipBrindosMailer.creation(@brindos_vip).deliver_now
      redirect_to root_path
    else
    render :new
    end
  end

  def show
  end

  private

  def brindos_vip_params
    params.require(:brindos_vip).permit(:email, :phone, best_way: [:id], best_moment: [:id])
  end
end
