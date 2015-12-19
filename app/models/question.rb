class Question < ActiveRecord::Base
  has_many :options
  accepts_nested_attributes_for :options,
                                allow_destroy: true,
                                reject_if: proc { |attributes| attributes['text'].blank? }
end
