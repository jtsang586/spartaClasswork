class Person < ApplicationRecord
    validates :name, :job, :password, :gender,  format: { with: /\A[a-zA-Z]+\z/,
    message: "only allows letters" }

    validates :age, :pay, numericality: {only_integer: true,
    message: "%{value} is not a number"}
end
