class Movie < ApplicationRecord

  # Relationship
  has_many :castings
  has_many :actors, through: :castings

  has_many :producers_movies
  has_many :producers, through: :producers_movies

  has_many :directors_movies
  has_many :directors, through: :directors_movies
end
