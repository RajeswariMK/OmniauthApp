Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, 'asfadf', 'SDsdsad'
  provider :facebook, '2adafd','adsasad'
  provider :foursquare, 'sdsdsd', 'sddsds'
  provider :google_oauth2, '8dadassd3.apps.googleusercontent.com', 'sdsadsad', :scope => 'userinfo.email,userinfo.profile'
  #{:client_options => {:ssl => {:ca_path => "/etc/ssl/certs"}}}
  provider :identity
end
