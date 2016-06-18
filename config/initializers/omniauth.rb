Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '574460046845-enmim8dhp7l2gm9a793jqv001fcp75t1.apps.googleusercontent.com', 'iCyjlPvUOByolWJpI6eNdScb', {client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}}
  provider :facebook, '1615317805449228', '1f97bb9ae682b168c118d6c0c86eae27', {:client_options => {:ssl => {:ca_file => Rails.root.join("cacert.pem").to_s}}}
end