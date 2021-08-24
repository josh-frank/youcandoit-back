class Todo < ApplicationRecord

    belongs_to :user

    validates :content, presence: true, allow_blank: false

end
