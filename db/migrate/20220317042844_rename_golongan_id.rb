class RenameGolonganId < ActiveRecord::Migration[6.0]
  def change
    rename_column :karyawans, :id_golongan, :golongan_id
  end
end
