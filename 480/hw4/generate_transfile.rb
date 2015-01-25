#!/usr/bin/ruby

$percent_of_bad_managers = 0.1
$number_of_commands = 200
$max_managers = 5


class Person
	def initialize id, good_managers, bad_managers
		@id = id
		@name = rand(36**10).to_s(36)
		@salary = rand(1...1000000)
		@good_managers = good_managers
		@bad_managers = bad_managers
		@managers = Array.new
	end

	def add_managers number
		number.times do
			if rand.denominator < $percent_of_bad_managers
				add_bad_manager
			elsif @good_managers.size > 0
				add_good_manager
			end
		end

	end

	def add_good_manager
		@managers.push @good_managers.sample
	end

	def add_bad_manager
		@managers.push @bad_managers.sample
	end
	
	def to_s
		string = @id.to_s + " " +  @name.to_s + " " + @salary.to_s
		@managers.each do | manager_id |
			string = string + " " + manager_id.to_s
		end
		string
	end
end


class Command
	def initialize command_number, next_id
		@command_number = command_number
		@next_id = next_id
		@percent_of_bad_managers = $percent_of_bad_managers
	end

	def do_it
		case @command_number  # was case obj.class
		when 1
			puts @command_number.to_s + " " + rand(1...$number_of_commands).to_s 	
		when 2
			person = Person.new @next_id, (1..(@next_id-1)).to_a, (@next_id+1..($number_of_commands + 50)).to_a
			person.add_managers rand(0..$max_managers)
			puts @command_number.to_s + " " + person.to_s
		when 3
			puts 3.to_s	
		when 4
			puts 4.to_s + " " + rand(1...($number_of_commands + 50)).to_s
		when 5
			puts 5.to_s + " " + rand(1...($number_of_commands + 50)).to_s
		when 6
			puts 6.to_s
		else
		  print('It is not a string')
		end
	end

end

(1..$number_of_commands).each do | number |
	command = Command.new rand(1...6), number
	command.do_it
end
