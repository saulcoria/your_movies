class CreateCastings < ActiveRecord::Migration[5.1]
  def change
    create_table :castings do |t|
      t.references :movie, foreign_key: true
      t.references :actor, foreign_key: { to_table: :people }

      t.timestamps
    end
  end
end
