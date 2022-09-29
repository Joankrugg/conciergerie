class SacyVipMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.sacy_vip_mailer.creation.subject
  #
  def creation(sacy_vip)
    destination = 'p.chambon@millesime-collection.com'
    @sacy_vip = sacy_vip # Instance variable => available in view
    mail(to: destination, subject: 'Un client ayant réservé au Château de Sacy souhaite être contacté par la conciergerie')
  end
end
