class VipBrindosMailer < ApplicationMailer
  def creation(brindos_vip)
    destination = 'conciergerie@brindos-cotebasque.com'
    @brindos_vip = brindos_vip # Instance variable => available in view
    mail(to: destination, subject: '[test de développement à ignorer] Un client ayant réservé à Brindos lac et château souhaite être contacté par la conciergerie')
  end
end


