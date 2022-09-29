class SacyVipMailer < ApplicationMailer

  def creation(sacy_vip)
    destination = 'contact@chateaudesacy-reims.fr'
    @sacy_vip = sacy_vip # Instance variable => available in view
    mail(to: destination, subject: 'Un client ayant réservé au Château de Sacy souhaite être contacté par la conciergerie')
  end
end
