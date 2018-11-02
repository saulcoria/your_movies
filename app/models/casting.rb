class Casting < ApplicationRecord
  belongs_to :movie
  belongs_to :actor , class_name: "Person"
end