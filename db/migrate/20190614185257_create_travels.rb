class CreateTravels < ActiveRecord::Migration[5.2]
  def change
    create_table :travels do |t|
      t.text :location
      t.string :description
      t.text :address
      t.text :username
      t.text :fname
      t.text :lname
      t.string :bio
      t.timestamps
    end
  end
end
