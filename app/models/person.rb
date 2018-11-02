class Person < ApplicationRecord

  # Relationship
  has_many :castings, foreign_key: "actor_id"
  has_many :actuated_movies, through: :castings, source: :movie

  has_many :producers_movies, foreign_key: "producer_id"
  has_many :produced_movies, through: :producers_movies, source: :movie

  has_many :directors_movies, foreign_key: "director_id"
  has_many :directed_movies, through: :directors_movies, source: :movie

  def full_name
    "#{first_name} #{last_name}"
  end
end
