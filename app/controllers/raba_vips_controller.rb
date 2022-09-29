class RabaVipsController < ApplicationController
  def new
    @raba_vip = RabaVip.new
  end

  def new_en
    @raba_vip = RabaVip.new
  end

  def create
    @raba_vip = RabaVip.new(raba_vip_params)
    if @raba_vip.save
      RabaVipMailer.creation(@raba_vip).deliver_now
      redirect_to domaine_de_raba_path
    else
    render :new
    end
  end

  def show
  end

  private

  def raba_vip_params
    params.require(:raba_vip).permit(:email, :phone, :name, :first_name, best_way_ids: [], best_moment_ids: [])
  end
end
