class MovieSerializer < ActiveModel::Serializer
  
  attributes :title, :release_year

  # Relationship
  has_many :directors, serializer: PersonSerializer
  has_many :producers, serializer: PersonSerializer
  has_many :actors,    serializer: PersonSerializer
end
