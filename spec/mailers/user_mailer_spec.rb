require 'rails_helper'

RSpec.describe UserMailer, type: :mailer do
  describe '#changed_password_email' do
    let!(:user) { FactoryGirl.create(:user) }
    let!(:email) { FactoryGirl.create(:email_address, user: user) }
    let!(:mail) { UserMailer.changed_password_email(email) }

    it 'renders the headers' do
      expect(mail.subject).to eq('Floworx SysArch - Password Changed')
      expect(mail.to).to eq([email.email_address])
      expect(mail.from).to eq(['do_not_reply@jpkeane.com'])
    end

    it 'renders the body' do
      expect(mail.body.encoded).to match('The password to your account has just been changed.')
    end
  end

  describe '#password_reset_email' do
    let!(:user) { FactoryGirl.create(:user) }
    let!(:email) { FactoryGirl.create(:email_address, user: user) }
    let!(:mail) { UserMailer.password_reset_email(user) }

    before(:each) do
      user.create_password_reset_token
    end

    it 'renders the headers' do
      expect(mail.subject).to eq('Floworx SysArch - Reset Password')
      expect(mail.to).to eq([email.email_address])
      expect(mail.from).to eq(['do_not_reply@jpkeane.com'])
    end

    it 'renders the body' do
      expect(mail.body.encoded).to match('You have requested a password reset.')
    end
  end
end
