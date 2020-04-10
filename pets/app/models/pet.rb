class Pet < ActiveRecord::Base
  belongs_to :cuddlable, polymorphic: true
end
