class VipBrindosMailer < ApplicationMailer
  def creation(brindos_vip)
    @brindos_vip = brindos_vip # Instance variable => available in view
    mail(to: @brindos_vip.email, subject: 'Vous souhaitez Être recontacté')
  end
end
