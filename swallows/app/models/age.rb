class Age 
  include Neo4j::ActiveNode
  property :name, type: Integer
	has_many :in, :players,type: :Age,model_class: :Player
	validates :name,uniqueness: true


end
