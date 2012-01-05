class User < ActiveRecord::Base
  def self.from_omniauth(auth)
    find_by_provider_and_uid_and_token(auth["provider"], auth["uid"], auth["credentials"]["token"]) || create_with_omniauth(auth)
  end

  def self.create_with_omniauth(auth)
    create! do |user|
      user.provider = auth["provider"]
      user.uid = auth["uid"]
      user.name = auth["info"]["name"]
      user.token = auth["credentials"]["token"]
      user.secret = auth["credentials"]["secret"]
    end
  end
end
