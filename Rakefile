host = '192.168.50.4'
port = 8888
server = 'thin'

task :run do 
	system "rackup -s #{server} -o #{host} -p #{port}"
end