require 'data_mapper'
require 'dm-postgres-adapter'
require 'pg'

class User
    include DataMapper::Resource

    property :id       , Serial
    property :name     , String
    property :username , String
    property :email    , String, format: :email_address
    property :password , String, length: 6..25
    has n, :peeps
end
