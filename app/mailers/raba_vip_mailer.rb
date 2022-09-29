class RabaVipMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.raba_vip_mailer.creation.subject
  #
  def creation(raba_vip)
    destination = 'p.chambon@millesime-collection.com'
    @raba_vip = raba_vip # Instance variable => available in view
    mail(to: destination, subject: 'Un client ayant réservé au Domaine de Raba souhaite être contacté par la conciergerie')
  end
end
