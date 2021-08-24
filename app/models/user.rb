class User < ApplicationRecord

    has_many :todos, dependent: :destroy

    validates :username, presence: true, uniqueness: { case_sensitive: false }

end
