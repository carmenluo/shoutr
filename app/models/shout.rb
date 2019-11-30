class Shout < ApplicationRecord
  belongs_to :user
  validates :body, presence: true, length:{in: 1..144}
  validates :user, presence: true
  delegate :username, to: :user;
  # we can define it by ourserlf or just like above using delegate
  # def username
  #   user.username
  # end
end
