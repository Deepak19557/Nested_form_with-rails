class Workout < ApplicationRecord
	has_many :exercises, inverse_of: :workout
	accepts_nested_attributes_for :exercises, allow_destroy: true, reject_if: :all_blank 
end
