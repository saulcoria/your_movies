class Person < ApplicationRecord
  acts_as_token_authenticatable
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  # devise :database_authenticatable, :registerable,
  #        :recoverable, :rememberable, :validatable

  devise :database_authenticatable,
         :recoverable, :rememberable, :trackable, :validatable
        # :lockable

  enum role: [:admin, :actor, :director, :producer, :default]

  # Callback
  after_initialize :set_default_role, :if => :new_record?

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

  private

  def set_default_role
    self.role ||= :default
  end
end
