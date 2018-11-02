class DirectorsMovie < ApplicationRecord

  # Relationship
  belongs_to :movie
  belongs_to :director, class_name: "Person"
end
