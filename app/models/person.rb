class Person < ApplicationRecord
  has_many :castings, foreign_key: "actor_id"
  has_many :actuated_movies, through: :castings, source: :movie

  def full_name
    "#{first_name} #{last_name}"
  end
end
