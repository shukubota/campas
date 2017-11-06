#p=University.create(name:"tokyo")

require 'json'
require 'uri'
require 'net/http'




#uri=URI.parse('https://www.dropbox.com/s/5jirjbyb1hca9rl/school.json')
#json=Net::HTTP.get(uri)





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

	#print facultylist
	#print univlist





	University.delete_all
	Faculty.delete_all
	#HAS.delete_all

	facultylist.each do |faculty|
		Faculty.create(name: faculty)
	end



	univlist.each do |univ|
		University.create(name: univ)
	end


	for i in 0..hash.length-1
		if i%2==0
			a=hash[i]["大学"]
			b=hash[i+1]["学部"]
			#print b,b.length
			#print "\n"

			

			for j in 0..b.length-1
				from=University.find_by(name: a)
				to=Faculty.find_by(name: b[j])
				rel=Has.create(from_node: from,to_node: to)
				#print a
				#print "\n"
				#print b[j]
				#print "\n"
			end	

		end
	
	
	
	end


end
