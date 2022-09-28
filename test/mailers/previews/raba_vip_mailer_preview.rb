# Preview all emails at http://localhost:3000/rails/mailers/raba_vip_mailer
class RabaVipMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/raba_vip_mailer/creation
  def creation
    RabaVipMailer.creation
  end

end
