class CreateSignatures < ActiveRecord::Migration
  def change
    create_table :signatures do |t|
      t.string :name
      t.json :signature

      t.timestamps
    end
  end
end
