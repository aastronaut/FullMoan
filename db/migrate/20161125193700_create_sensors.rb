class CreateSensors < ActiveRecord::Migration[5.0]
  def change
    create_table :sensors do |t|
      t.string :name
      t.decimal :version
      t.decimal :power
      t.decimal :resolution
      t.decimal :maximum_range
      t.references :vendor, foreign_key: true
      t.references :type, foreign_key: true

      t.timestamps
    end
  end
end
