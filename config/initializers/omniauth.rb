Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, 'eSlzAxHbI7xaAwqFnDEQ', 'iBoK1FHJPRwO8ctx23M6K9N37zQ3hWnI9lTbS2y4'
  provider :facebook, '211469765594897','b2483e399cfadd399990633f6aff4d71'
  provider :foursquare, 'CW21M3RLRPKRBPH0MZQ01UFZY2AQ0EG0PBVEFNHVTTC5OTXS', '2VL1DJSVCGN33EODCERTRNOU4MYKYWRIJKXCF0BRLVT2RIA4'
  provider :google_oauth2, '842742982073.apps.googleusercontent.com', 'U57jOGEgNWIHNRavDwskqLMB', :scope => 'userinfo.email,userinfo.profile'
  #{:client_options => {:ssl => {:ca_path => "/etc/ssl/certs"}}}
  provider :identity
end
