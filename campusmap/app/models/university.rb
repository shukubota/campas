class University 
  include Neo4j::ActiveNode
  property :name, type: String
	has_many :out,:faculties,type: :has, model_class: :Faculty
	validates :name,uniqueness: true	
end
