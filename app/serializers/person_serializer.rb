class PersonSerializer < ActiveModel::Serializer
  attributes :first_name, :last_name

  # Relationship
  has_many :actuated_movies, serializer: MovieSerializer
  has_many :produced_movies, serializer: MovieSerializer
  has_many :directed_movies, serializer: MovieSerializer  
end
