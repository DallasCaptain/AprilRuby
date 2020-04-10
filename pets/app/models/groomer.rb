class Groomer < ActiveRecord::Base
    has_many :pets, as: :cuddlable
end
