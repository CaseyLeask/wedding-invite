class CreateRsvps < ActiveRecord::Migration
  def change
    create_table :rsvps do |t|
      t.string :name
      t.string :number
      t.string :email
      t.text :address

      t.timestamps
    end
  end
end
