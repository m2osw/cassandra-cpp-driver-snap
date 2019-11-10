#!/bin/sh
#
# Sample script to run make without having to retype the long path each time
# This will work if you built the environment using our ~/bin/build-snap script

case $1 in
"-l")
	make -C ../../../BUILD/contrib/cassandra-cpp-driver-snap 2>&1 | less -SR
	;;

"-i")
	make -C ../../../BUILD/contrib/cassandra-cpp-driver-snap install
	;;

*)
	make -C ../../../BUILD/contrib/cassandra-cpp-driver-snap
	;;

esac
