class TodoSerializer < ActiveModel::Serializer

  attributes :id, :content, :finished

  has_one :user

end
