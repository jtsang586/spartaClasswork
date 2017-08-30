class Student < ApplicationRecord
    has_one :teachers, dependent: :destroy
end
