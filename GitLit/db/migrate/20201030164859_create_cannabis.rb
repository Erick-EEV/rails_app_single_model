class CreateCannabis < ActiveRecord::Migration[6.0]
  def change
    create_table :cannabis do |t|
      t.string :strain
      t.string :classification
      t.integer :price
      t.text :description

      t.timestamps
    end
  end
end
