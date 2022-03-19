class RenameGaji < ActiveRecord::Migration[6.0]
  def change
    rename_column :gajis, :id_karyawan, :karyawan_id
    rename_column :gajis, :id_tunjangan, :tunjangan_ids
  end
end
