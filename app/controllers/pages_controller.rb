class PagesController < ApplicationController

  skip_before_action :authenticate_user!

  def home
  end

  def brindos_lac_et_chateau
    @brindos_vip = BrindosVip.new
  end

  def brindos_lac_et_chateau_en
    @brindos_vip = BrindosVip.new
  end

  def domaine_de_raba
    @raba_vip = RabaVip.new
  end

  def domaine_de_raba_en
    @raba_vip = RabaVip.new
  end

  def chateau_de_sacy

  end

  def chateau_de_sacy_en

  end

  def le_soleil_d_or
    @megeve_vip = MegeveVip.new
  end

  def le_soleil_d_or_en
    @megeve_vip = MegeveVip.new
  end

  def chateau_de_leognan
    @vip = Vip.new
  end

  def le_soleil_d_or
    @megeve_vip = MegeveVip.new
  end

  def cocorico
    @vip = Vip.new
  end


  def chateau_de_theoule
    @vip = Vip.new
  end


end
