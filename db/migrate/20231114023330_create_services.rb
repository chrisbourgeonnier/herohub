class CreateServices < ActiveRecord::Migration[7.0]
  def change
    create_table :services do |t|
      t.string :superhero_name
      t.string :race
      t.string :powers
      t.integer :fee
      t.string :image_url
      t.string :team
      t.references :user, null: false, foreign_key: true
      t.string :bio

      t.timestamps
    end
  end
end
