class University 
  include Neo4j::ActiveNode
  property :name, type: String
	has_many :out,:Faculties,type: :has
	validates :name,uniqueness: true	
end
