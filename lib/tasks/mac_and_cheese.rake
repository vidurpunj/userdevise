# From rails root directly call rake mac_and_cheese or rake fix_my_laptop
# To call a task under a namespace rake store:fix_my_laptop
# rake -P , Give list of all tasks
# rake -T , Give list of all documented tasks having desc "xyx" prior to them
# rake -T <string> , give list all tasks with boil in it <string> should be present in function name not in its desc
# rake -W <task name string>, to find in which file the task is defined and its line no 
# rake mac_and_cheese XYZ=abc, to set an environment variable before execution of the task, if we pass the argument & its value before task the shell will be handling it but in our case rake will be handling it, this varibale is not persistent its set untill pgm execution

desc "How ro mac and cheese"
task :mac_and_cheese => [:boil_water, :buy_cheese, :buy_pasta, :making] do

end
	task :boil_water => [:buy_cheese, :buy_pasta] do
		puts "Boil water."
	end

	task :buy_cheese => [:go_to_store] do
		puts "Buying cheese."
	end

	task :buy_pasta => [:go_to_store] do
		puts "Buying pasta."
	end
	
	task :making => [:boil_water] do
		puts "making mac and cheese water."
	end
	
	task :go_to_store do
		puts "Go to an general store"
	end
	
#Another task to fix my laptop
task :fix_my_laptop => [ :go_to_store] do
	puts 'fixed'
end
	
	
#put a task under a namespace

namespace :apple do
	task :go_to_store do
		puts "Go to an apple store"
	end
end

#show current directory
namespace :cli do
	task :show_current_directory do
		puts "PWD = #{`pwd`}"
	end
end

# cli Example: rake show_stuff show_stuff=Guru 
task :show_stuff do
	puts "SHOW_Stuff = #{ENV['show_stuff']}"
end

#task 
#1 calculate factorial by paasing value via cli
#2 Backup a file using library 'file_utils' , see ruby docmentation of 'file_utils' http://ruby-doc.org/stdlib-2.0.0/libdoc/fileutils/rdoc/FileUtils.html
#3 How to do things silently using verbose block

desc 'show git status'

task :git_status do
	sh "git status"
end
