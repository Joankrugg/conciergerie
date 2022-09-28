class SacyVipsController < ApplicationController
  def new
    @sacy_vip = SacyVip.new
  end

  def create
    @sacy_vip = SacyVip.new(sacy_vip_params)
    if @sacy_vip.save
      SacyVipMailer.creation(@brindos_vip).deliver_now
      redirect_to root_path
    else
    render :new
    end
  end

  def show
  end

  private

  def sacy_vip_params
    params.require(:sacy_vip).permit(:email, :phone, best_way: [:id], best_moment: [:id])
  end
end
