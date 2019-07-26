
main: main.cpp
	g++ -pthread -o main main.cpp -lgtest -lPocoFoundation

clean:
	@rm -f main *.o *.a *.so

.PHONY: clean
