require 'rails_helper'

RSpec.describe RegistrationMailer, type: :mailer do
  describe '#welcome_email' do
    let(:user) { FactoryGirl.create(:user) }
    let(:email) { FactoryGirl.create(:email_address, user: user) }
    let(:mail) { RegistrationMailer.welcome_email(email) }

    it 'renders the headers' do
      expect(mail.subject).to eq('Welcome to Floworx SysArch')
      expect(mail.to).to eq([email.email_address])
      expect(mail.from).to eq(['do_not_reply@jpkeane.com'])
    end

    it 'renders the body' do
      expect(mail.body.encoded).to match('Welcome ' + user.full_name)
    end
  end
end
