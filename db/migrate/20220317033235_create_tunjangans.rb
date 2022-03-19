class CreateTunjangans < ActiveRecord::Migration[6.0]
  def change
    create_table :tunjangans do |t|
      t.string :nama
      t.integer :besar_tunjangan

      t.timestamps
    end
  end
end
