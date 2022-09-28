# Preview all emails at http://localhost:3000/rails/mailers/megeve_vip_mailer
class MegeveVipMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/megeve_vip_mailer/creation
  def creation
    MegeveVipMailer.creation
  end

end
