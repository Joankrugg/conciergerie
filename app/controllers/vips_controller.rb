class VipsController < ApplicationController
  def new
    @vip = Vip.new
  end

  def create
    @vip = Vip.new(vip_params)
    if @vip.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
  end

  private

  def vip_params
    params.require(:vip).permit(:name, :first_name, :email, :phone)
  end

end
