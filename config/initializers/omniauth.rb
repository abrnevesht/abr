Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, ENV["1020635289309-tr0juvl46ipossocohesgj5gsb44bjtg.apps.googleusercontent.com"], ENV["wKtJ50cqZfa6PMCHH9Y0P0gi"]
end
