# ActionMailer::Base.smtp_settings = {
#   address: "smtp.postmarkapp.com",
#   port: 25,
#   domain: 'heroku.com',
#   user_name: ENV['00cb991c-dc11-4709-b66c-292672db7c27'],
#   password: ENV['00cb991c-dc11-4709-b66c-292672db7c27'],
#   authentication: :cram_md5,
#   enable_starttls_auto: true
# }

Postmark::ApiClient.new('00cb991c-dc11-4709-b66c-292672db7c27')
