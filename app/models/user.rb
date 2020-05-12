class User < ApplicationRecord
  has_secure_password
  has_many :reviews
  has_many :reviewed_festivals, :through => :reviews, source: :festival
end
