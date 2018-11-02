class ProducersMovie < ApplicationRecord
  # Relationship
  belongs_to :movie
  belongs_to :producer, class_name: "Person"
end
