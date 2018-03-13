Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, "781090066014-tn26oka47d64tujfoq4hcq2e1eqd4lh5.apps.googleusercontent.com", "-4uxDZocjWV_qryF8h-npweI",
    {
      name: 'google',
      scope: 'email, profile, plus.me, http://gdata.youtube.com',
      prompt: 'select_account',
      image_aspect_ratio: 'square',
      image_size: 50
    }
    OmniAuth.config.full_host = Rails.env.production? ? 'https://domain.com' : 'http://localhost:3000'

end