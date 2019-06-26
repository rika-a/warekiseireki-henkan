class AddWarekiToMemos < ActiveRecord::Migration[5.2]
  def change
    add_column :memos, :wareki, :string
  end
end
