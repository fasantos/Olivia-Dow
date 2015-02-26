# Preview all emails at http://localhost:3000/rails/mailers/contacts_mailer
class ContactsMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/contacts_mailer/comment_response
  def comment_response
    ContactsMailer.comment_response
  end

  # Preview this email at http://localhost:3000/rails/mailers/contacts_mailer/request_contact
  def request_contact
    ContactsMailer.request_contact
  end

end
