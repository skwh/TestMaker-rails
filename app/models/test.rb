class Test < ActiveRecord::Base
  has_many :questions
  validates_presence_of :title, :description
  accepts_nested_attributes_for :questions,
                                allow_destroy: true,
                                reject_if: proc { |attributes| attributes['text'].blank? }
end
