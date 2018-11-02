class Casting < ApplicationRecord

  # Relationship
  belongs_to :movie
  belongs_to :actor, class_name: "Person"
end