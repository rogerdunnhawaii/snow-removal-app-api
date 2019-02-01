class JobSerializer < ActiveModel::Serializer
  attributes :id, :Customer, :Worker, :Price, :Address, :Date, :Time, :status, :user_id
end
