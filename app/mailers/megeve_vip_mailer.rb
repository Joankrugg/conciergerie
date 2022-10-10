class MegeveVipMailer < ApplicationMailer
  def creation(megeve_vip)
    destination = 'annecharlotte@millesime-collection.com'
    @megeve_vip = megeve_vip # Instance variable => available in view
    mail(to: destination, subject: "[test de développement à ignorer] Un client ayant réservé au Soleil d'Or souhaite être contacté par la conciergerie")
  end
end
