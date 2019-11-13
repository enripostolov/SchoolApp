class Lecture < ApplicationRecord
  attribute :name
  attribute :start_time, type: Date
  attribute :end_time, type: Date
  attribute :topics

  belongs_to :teacher
  belongs_to :school_class
end
