# Preview all emails at http://localhost:3000/rails/mailers/vip_brindos_mailer
class VipBrindosMailerPreview < ActionMailer::Preview
  def creation(brindos_vip)
    @brindos_vip = brindos_vip # Instance variable => available in view
    mail(to: @brindos_vip.email, subject: 'Vous souhaitez Être recontacté')
  end
end
