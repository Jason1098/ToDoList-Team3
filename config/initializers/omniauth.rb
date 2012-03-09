Rails.application.config.middleware.use OmniAuth::Builder do
  provider :github, ENV['GITHUB_KEY'], ENV['GITHUB_SECRET']
  provider :facebook, '350915281619900', '9d712da80a7b993551bbb690698bd2f1'
end