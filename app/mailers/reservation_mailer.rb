class ReservationMailer < ActionMailer::Base
  default from: "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.reservation_mailer.confirm.subject
  #
  def confirm(reservation)
    @the_reservation = reservation

    mail to: "to@example.org"
  end
end
