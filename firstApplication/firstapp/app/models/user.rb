class User < ActiveRecord::Base
    validates :f_name, presence: true
    validates :l_name, presence: true
    validates :age, presence: true
    has_many :messages

    after_create :successfully_created



    def successfully_created
        puts "Successfully created a new user"
    end
end
