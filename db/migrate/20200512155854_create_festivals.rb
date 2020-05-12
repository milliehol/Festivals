class CreateFestivals < ActiveRecord::Migration[5.2]
  def change
    create_table :festivals do |t|
      t.string :name
      t.string :theme
      t.string :description
      t.belongs_to :user, foreign_key: true
      t.belongs_to :city, foreign_key: true

      t.timestamps
    end
  end
end
