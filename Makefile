all: listtester

listtester: listtester.o List.o
	g++ -o listtester listtester.o List.o

List.o: List.cpp List.h
	g++ -c List.cpp

listtester.o: listtester.cpp List.h
	g++ -c listtester.cpp

clean:
	rm -Rf *.o listtester

pack:
	tar cvzf static-list.tgz *.cpp *.h Makefile
