OmniAuth.config.logger = Rails.logger
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '1020635289309-tr0juvl46ipossocohesgj5gsb44bjtg.apps.googleusercontent.com', 'wKtJ50cqZfa6PMCHH9Y0P0gi'
end

