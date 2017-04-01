class Contact::ShowSerializer < ActiveModel::Serializer
  attributes :id, :email, :subject, :message
end
