class Salary 
  include Neo4j::ActiveNode
  property :name, type: Integer
    has_many :in, :players,type: :Salary,model_class: :Player
	    validates :name,uniqueness: true


end
