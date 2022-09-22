class User < ApplicationRecord
    before_save { self.email = email.downcase }
    
    validates :name, presence: true, length: { maximum: 50 }
    validates :nickname, presence: true, length: { maximum: 15 }
    validates :status, length: {minimum: 5}

    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true, length: { maximum: 255 },
      format: { with: VALID_EMAIL_REGEX },
      uniqueness: { case_sensitive: false }

    has_secure_password
  
    #повертає дайджест для вказаного рядка
    def User.digest(string)
      cost = ActiveModel::SecurePassword.min_cost ?
      BCrypt::Engine::MIN_COST :
      BCrypt::Engine.cost
      BCrypt::Password.create(string, cost: cost)
    end     
    
    has_many :posts, dependent: :destroy
end