class Tables < ActiveRecord::Migration[6.0]
  def change
    create_table :teachers do |t|
      t.string :name
      t.string :surname
      t.text :subjects, :string, Array

      t.belongs_to :school_classes
    end

    create_table :school_classes do |c|
      c.string :number
      c.string :section

      c.belongs_to :teachers
    end

    create_table :lectures do |l|
      l.date :start_time
      l.date :end_time
      l.string :topics

      l.belongs_to :teacher
      l.belongs_to :school_class
    end

  end
end
