class Teacher < ApplicationRecord
    has_many :goals
    has_many :students
    after_create :puts_hello

    def puts_hello
        puts "hello"
    end
end
