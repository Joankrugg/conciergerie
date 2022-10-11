class BrindosVipsController < ApplicationController
  skip_before_action :authenticate_user!
  def new
    @brindos_vip = BrindosVip.new
  end

  def new_en
    @brindos_vip = BrindosVip.new
  end

  def create
    @brindos_vip = BrindosVip.new(brindos_vip_params)
    if @brindos_vip.save
      VipBrindosMailer.creation(@brindos_vip).deliver_now
      redirect_to brindos_lac_et_chateau_path
    else
    render :new
    end
  end

  def show
  end

  private

  def brindos_vip_params
    params.require(:brindos_vip).permit(:name, :first_name, :email, :phone, best_way_ids: [], best_moment_ids: [])
  end
end
