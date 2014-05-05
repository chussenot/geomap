# encoding: utf-8

class User < GeoMap::Model

  attribute :email
  attribute :nickname
  attribute :token

  index :nickname
  index :email

  unique :email
  unique :token

  attribute :validated_at, Type::Date
  attribute :confirmed_at, Type::Date

end