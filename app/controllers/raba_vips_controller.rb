class RabaVipsController < ApplicationController
  def new
    @raba_vip = RabaVip.new
  end

  def create
    @raba_vip = RabaVip.new(raba_vip_params)
    if @raba_vip.save
      RabaVipMailer.creation(@brindos_vip).deliver_now
      redirect_to root_path
    else
    render :new
    end
  end

  def show
  end

  private

  def raba_vip_params
    params.require(:raba_vip).permit(:email, :phone, best_way: [:id], best_moment: [:id])
  end
end