import smtplib
from email.message import EmailMessage

EMAIL = "atsasidhar@gmail.com"
APP_PASSWORD = "gqabgygkegejkpzk"

def send_mail(to, subject, body):
    server = smtplib.SMTP_SSL("smtp.gmail.com", 465)

    server.login(EMAIL, APP_PASSWORD)

    msg = EmailMessage()
    msg["From"] = EMAIL
    msg["To"] = to
    msg["Subject"] = subject
    msg.set_content(body)

    server.send_message(msg)

    print("Mail sent successfully")

    server.quit()