class Checklist < Thor
include Thor::Actions

source_root File.dirname(__FILE__)

  desc "execute","This thor script will execute rspec checklist on the targeted server"

  method_option :host, :aliases => "-h", :desc => "target machine hostname/ip"
  method_option :ssh_port, :aliases => "-o", :desc => "target machine ssh port", :default => 22
  method_option :user, :aliases => "-u", :desc => "target machine user"
  method_option :pass, :aliases => "-p", :desc => "target machine password"
  method_option :spass, :aliases => "-s", :desc => "target machine sudo pass"
  method_option :alfglob, :aliases => "-g", :desc => "target machine global properties"
  method_option :alflog, :aliases => "-l", :desc => "target machine alfresco log"
  method_option :alfmmt, :aliases => "-m", :desc => "target machine alfresco_mmt jar"
  method_option :alfwar, :aliases => "-f", :desc => "target machine alfresco war"
  method_option :shrwar, :aliases => "-r", :desc => "target machine share war"
  method_option :alfport, :desc => "alfresco port"
  method_option :shrport, :desc => "share port"

  def execute()

       remove_file("test.properties")
       template "props.erb","test.properties"

        puts "Options set:"
        options.each do |key,value|
          puts "#{key}=#{value}"
        end
	      exec "rspec spec"
  end

end
