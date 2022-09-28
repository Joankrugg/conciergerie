class SacyVipMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.sacy_vip_mailer.creation.subject
  #
  def creation(sacy_vip)
    @sacy_vip = sacy_vip # Instance variable => available in view
    mail(to: @sacy_vip.email, subject: 'Vous souhaitez Être recontacté')
  end
end
