class RabaVipMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.raba_vip_mailer.creation.subject
  #
  def creation(raba_vip)
    @raba_vip = raba_vip # Instance variable => available in view
    mail(to: @raba_vip.email, subject: 'Vous souhaitez Être recontacté')
  end
end
