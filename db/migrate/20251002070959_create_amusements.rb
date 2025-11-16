class CreateAmusements < ActiveRecord::Migration[7.2]
  def change
    create_table :amusements do |t|
      t.string :att_name
      t.string :park_name
      t.string :comment

      t.timestamps
    end
  end
end
