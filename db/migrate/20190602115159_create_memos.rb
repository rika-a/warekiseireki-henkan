class CreateMemos < ActiveRecord::Migration[5.2]
  def change
    create_table :memos do |t|
      t.string :what
      t.integer :when

      t.timestamps
    end
  end
end
