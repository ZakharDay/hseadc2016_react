class Oscillator < ApplicationRecord
  belongs_to :user
  acts_as_url :title
  validates :url, uniqueness: true

  def to_param
    id.to_s + "-" + url
  end
end
