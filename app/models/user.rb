class User < ApplicationRecord
  include Clearance::User
  validates :username, presence: true, uniqueness: true
  has_many :shouts, dependent: :destroy
  has_attached_file :avatar, :styles => {:medium => "300*300", :thumb => "100*100"}, :default_url => "/public/image/default.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
end
