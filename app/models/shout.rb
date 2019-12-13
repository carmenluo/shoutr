class Shout < ApplicationRecord
  belongs_to :user
  belongs_to :content, polymorphic: true
  validates :user, presence: true
  delegate :username, to: :user;
  # we can define it by ourserlf or just like above using delegate
  # def username
  #   user.username
  # end
end
