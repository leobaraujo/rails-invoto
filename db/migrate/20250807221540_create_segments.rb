class CreateSegments < ActiveRecord::Migration[8.0]
  def change
    create_table :segments do |t|
      t.string :name
      t.integer :status, default: 0
      t.references :region, null: false, foreign_key: true

      t.timestamps
    end
  end
end
