class ContactsMailer < ActionMailer::Base
  default from: "info@oliviadow.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.contacts_mailer.comment_response.subject
  #
  def comment_response(comment, new_comment, article)
    @greeting = "Hi #{comment.author}"
    @new_author = new_comment.author
    @new_comment = new_comment.body
    @article = article

    mail to: "#{comment.email}", subject: "#{@new_author} also commented on a article that you commented."
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.contacts_mailer.request_contact.subject
  #
  #No being called at the moment
  def request_contact(contact)
    @greeting = "Hi"
    @name = contact.name
    @message = contact.message
    @email = contact.email

    mail to: "info@oliviadow.com", from: "info@oliviadow.com", subject: "#{contact.name} (#{@email}) requested information."
  end
end
