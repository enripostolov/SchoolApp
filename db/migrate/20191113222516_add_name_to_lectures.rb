class AddNameToLectures < ActiveRecord::Migration[6.0]
  def change
    add_column :lectures, :name, :string
  end
end
