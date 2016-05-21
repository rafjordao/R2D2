config.action_mailer.delivery_method = :smtp
config.action_mailer.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :domain               => 'gmail.com',
  :user_name            => 'watchlurb@gmail.com',
  :password             => 'projetoes/bd',
  :authentication       => 'plain',
  :enable_starttls_auto => true 
}
# Para debug apenas, é melhor que a linha abaixo seja adicionado apenas no ambiente de desenvolvimento
config.action_mailer.raise_delivery_errors = true
