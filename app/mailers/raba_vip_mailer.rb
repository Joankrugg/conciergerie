class RabaVipMailer < ApplicationMailer

  def creation(raba_vip)
    destination = 'annecharlotte@millesime-collection.com'
    @raba_vip = raba_vip # Instance variable => available in view
    mail(to: destination, subject: 'Un client ayant réservé au Domaine de Raba souhaite être contacté par la conciergerie')
  end
end
