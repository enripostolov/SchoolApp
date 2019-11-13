class AddMarks < ActiveRecord::Migration[6.0]
  def change
    create_table :marks do |m|
      m.float :mark
      m.string :subject
      m.date :date
      m.string :notes

      m.belongs_to :student
      m.belongs_to :teacher
    end
  end
end
