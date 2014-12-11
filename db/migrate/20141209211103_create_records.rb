class CreateRecords < ActiveRecord::Migration
  def change
    create_table :records do |t|
      t.text :country
      t.text :city
      t.text :name
      t.text :postcode
      t.text :website
      t.text :link
      t.boolean :status

      t.timestamps
    end
  end
end
