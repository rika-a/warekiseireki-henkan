class ChangeDatatypeWhenOfMemos < ActiveRecord::Migration[5.2]
  def change
    change_column :memos, :when, :string
  end
end
