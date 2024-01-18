# app/services/jwt_service.rb

class JwtService
  SECRET_KEY = 'your_secret_key'

  def self.encode(payload)
    JWT.encode(payload, SECRET_KEY, 'HS256')
  end

  def self.decode(token)
    JWT.decode(token, SECRET_KEY, true, algorithm: 'HS256')[0]
  end
end
