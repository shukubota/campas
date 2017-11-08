class Position 
  include Neo4j::ActiveNode
  property :name, type: String
  validates :name,uniqueness: true


end
