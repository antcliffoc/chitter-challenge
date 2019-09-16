require 'data_mapper'
require 'dm-postgres-adapter'
require 'pg'

class Peep
  include DataMapper::Resource

  property :id         , Serial
  property :text       , Text
  property :written_at , DateTime
  property :author     , String
  belongs_to :user
end
