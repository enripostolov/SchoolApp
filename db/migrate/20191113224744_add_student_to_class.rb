class AddStudentToClass < ActiveRecord::Migration[6.0]
  def change
    change_table :students do |s|
      s.belongs_to :school_class
    end
  end
end
