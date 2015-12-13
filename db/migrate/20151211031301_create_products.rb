class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.text :name
      t.text :description
      t.text :image
      t.text :price
      t.boolean :available, :default => true
      t.timestamps
    end
  end
end
