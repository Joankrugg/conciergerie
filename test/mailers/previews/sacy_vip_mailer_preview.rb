# Preview all emails at http://localhost:3000/rails/mailers/sacy_vip_mailer
class SacyVipMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/sacy_vip_mailer/creation
  def creation
    SacyVipMailer.creation
  end

end
