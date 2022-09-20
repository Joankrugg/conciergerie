class PagesController < ApplicationController

  def home
  end

  def brindos_lac_et_chateau
    @vip = Vip.new
  end

  def chateau_de_leognan
    @vip = Vip.new
  end

  def le_soleil_d_or
    @vip = Vip.new
  end

  def cocorico
    @vip = Vip.new
  end

  def domaine_de_raba
    @vip = Vip.new
  end

  def chateau_de_sacy
    @vip = Vip.new
  end

  def chateau_de_theoule
    @vip = Vip.new
  end

end
