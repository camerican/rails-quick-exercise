class CreateClans < ActiveRecord::Migration[5.0]
  def change
    create_table :clans do |t|
      t.string :title
      t.string :motto

      t.timestamps
    end
  end
end
