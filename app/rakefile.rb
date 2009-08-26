require 'rake'
require 'models/project'

namespace :couch do 

  namespace :views do
    
    desc "Push all views to server"
    task :push do
      Project.view_by :a_test_name, :map => "function(doc){if(doc.tags){doc.tags.forEach(function(tag){emit(tag, 1);});}}"
      Project.save_design_doc
    end
  end
  
end