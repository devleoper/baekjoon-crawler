class BaekjoonUser < ActiveRecord::Base
  has_many :problem_solvings
  has_many :problems, through: :problem_solvings

  has_many :folder_progresses
end
