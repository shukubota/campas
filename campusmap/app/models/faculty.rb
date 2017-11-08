class Faculty 
  include Neo4j::ActiveNode
  property :name, type: String
	has_many :in ,:universities,type: :has
	validates :name,uniqueness: true
end
