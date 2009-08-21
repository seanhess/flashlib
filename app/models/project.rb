require 'models/couch'

class Project < CouchRest::ExtendedDocument
  use_database Couch.db
  
  property :name
  property :description
  property :home_page
  
  view_by :name
  
  def self.test
    view :test
  end
end