class CreateKaryawans < ActiveRecord::Migration[6.0]
  def change
    create_table :karyawans do |t|
      t.integer :id_golongan
      t.string :nama
      t.string :jns_klm

      t.timestamps
    end
    add_index :karyawans, :id_golongan
  end
end
