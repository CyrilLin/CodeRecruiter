class Interview < ApplicationRecord
  belongs_to :interviewer, class_name: 'User'

  has_many :interview_phases, dependent: :destroy

  def generate_candidate_token
    @candidate_token = Digest::MD5.hexdigest(@candidate_name + @candidate_email + Date.new.to_s)
  end
end
