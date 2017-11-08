class Faculty 
  include Neo4j::ActiveNode
  property :name, type: String
	has_one :in ,:university,origin: :university
	validates :name,uniqueness: true
end
