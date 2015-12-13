class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.text :name
      t.text :email
      t.text :address
      t.float :latitude
      t.float :longitude
      t.timestamps
    end
  end
end
