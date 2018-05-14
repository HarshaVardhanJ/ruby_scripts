#!/usr/bin/ruby
#
# Author		:		Harsha Vardhan J (Obtained from Coursera's IT Support Professional
# 						Course)
#
# License		:		MIT
#
# Description	:		This ruby script creates a web-server that serves some text
# 						when it receives an HTTP request.
#
require "socket"

server = TCPServer.new("localhost", 2345)

while true
	socket = server.accept
	request = socket.gets
	puts request
	socket.print "HTTP/1.1 200\r\n"
	socket.print "Content-Type: text/html\r\n"
	socket.print "\r\n"
	socket.print "Hello! This is a web-server created by a Ruby script. The time is #{Time.now}"
	socket.close
end
