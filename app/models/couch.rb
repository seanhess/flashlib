require 'rubygems'
require 'couchrest'

class Couch
  DB = "flashlib"
  Server = CouchRest.new # Can add parameters to override defaults
  
  def self.connect
    Server.default_database = self::DB
  end
  
  def self.db
    Server.default_database
  end
  
  def self.delete!
    Server.default_database.delete!
  end
end

Couch.connect