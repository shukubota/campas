
require 'json'
require 'uri'
require 'net/http'



facultylist=[]
univlist=[]

File.open("school.json") do |file|

	hash=JSON.load(file)

	
	hash.each do |f|
		##############		
		if !f["学部"].nil?
			f["学部"].each do |b|
				if !facultylist.include?(b)
					facultylist.push(b)
				end
			end
		end
		#################

		if !f["大学"].nil?
			univlist.push(f["大学"])
			
		end
	end




	facultylist.each do |faculty|
		Faculty.create(name: faculty)
	end



	for i in 0...univlist.length
		univnode=univlist[i]
		University.create(name: univnode)
		
		hash[i*2+1]["学部"].each do |gakubu|
		
			a=Faculty.find_by(name: gakubu)
			b=University.find_by(name: univnode)
			b.Faculties << a
		end
	end






end
