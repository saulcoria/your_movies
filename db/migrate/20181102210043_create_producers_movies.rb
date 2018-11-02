class CreateProducersMovies < ActiveRecord::Migration[5.1]
  def change
    create_table :producers_movies do |t|
      t.references :movie, foreign_key: true
      t.references :producer, foreign_key: { to_table: :people }

      t.timestamps
    end
  end
end
