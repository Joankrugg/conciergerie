class MegeveVipMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.megeve_vip_mailer.creation.subject
  #
  def creation(megeve_vip)
    @megeve_vip = megeve_vip # Instance variable => available in view
    mail(to: @megeve_vip.email, subject: 'Vous souhaitez Être recontacté')
  end
end
