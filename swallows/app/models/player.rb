class Player 
  include Neo4j::ActiveNode
  property :name, type: String
	    validates :name,uniqueness: true
    has_many :out, :ages,type: :Age,model_class: :Age
    has_many :out, :numbers,type: :Number,model_class: :Number
    has_many :out, :positions,type: :Position,model_class: :Position
    has_many :out, :birthdays,type: :Birthday,model_class: :Birthday
    has_many :out, :lengths,type: :Length,model_class: :Length
    has_many :out, :heights,type: :Height,model_class: :Height
    has_many :out, :weights,type: :Weight,model_class: :Weight
    has_many :out, :bloods,type: :Blood,model_class: :Blood
    has_many :out, :throwbats,type: :Throwbat,model_class: :Throwbat
    has_many :out, :places,type: :Place,model_class: :Place
    has_many :out, :salaries,type: :Salary,model_class: :Salary


end
