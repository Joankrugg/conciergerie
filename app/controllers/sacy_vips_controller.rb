class SacyVipsController < ApplicationController
  skip_before_action :authenticate_user!
  def new
    @sacy_vip = SacyVip.new
  end

  def new_en
    @sacy_vip = SacyVip.new
  end

  def create
    @sacy_vip = SacyVip.new(sacy_vip_params)
    if @sacy_vip.save
      SacyVipMailer.creation(@sacy_vip).deliver_now
      redirect_to chateau_de_sacy_path
    else
    render :new
    end
  end

  def show
  end

  private

  def sacy_vip_params
    params.require(:sacy_vip).permit(:email, :phone, :name, :first_name, best_way_ids: [], best_moment_ids: [])
  end
end
