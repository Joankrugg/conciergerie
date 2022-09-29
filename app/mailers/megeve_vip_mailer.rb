class MegeveVipMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.megeve_vip_mailer.creation.subject
  #
  def creation(megeve_vip)
    destination = 'p.chambon@millesime-collection.com'
    @megeve_vip = megeve_vip # Instance variable => available in view
    mail(to: destination, subject: "Un client ayant réservé au Soleil d'Or souhaite être contacté par la conciergerie")
  end
end
