class ApplicationRecord < ActiveRecord::Base
  primary_abstract_class
end
class Category < ActiveRecord::Base
  self.table_name = 'comentarios'
end
