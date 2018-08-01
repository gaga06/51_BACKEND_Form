class User < ApplicationRecord
validates :username, presence: true, uniqueness: {case_sensitive: false }
validate :without_spaces

  def without_spaces
    if username.include?(" ")
    errors.add(:username, message: "Il ne peut pas y avoir d'espace dans le username")
    end

  end
end
