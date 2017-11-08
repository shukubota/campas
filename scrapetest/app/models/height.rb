class Height 
  include Neo4j::ActiveNode
  property :name, type: Float
  validates :name,uniqueness: true


end
