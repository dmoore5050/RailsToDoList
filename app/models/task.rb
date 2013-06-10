class Task < ActiveRecord::Base
  attr_accessible :name

  belongs_to :list
  accepts_nested_attributes_for :list
end
