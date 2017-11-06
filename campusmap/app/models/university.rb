class University 
  include Neo4j::ActiveNode
  property :name, type: String	
 # has_many :faculties


end
