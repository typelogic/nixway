
main: main.cpp libhelper.so
	g++ -pthread -o main main.cpp -lPocoFoundation -lgtest -lgcov -fprofile-arcs -ftest-coverage -L. -lhelper 
	@echo "************************************************************************"
	@echo "TODO:"
	@echo 'export LD_LIBRARY_PATH=$${LD_LIBRARY_PATH}:.'

clean:
	@rm -f main *.o *.a *.so lib* app_* *.g???

helper.o: helper.cpp
	g++ -fPIC -Wall -c helper.cpp

helper.a: helper.o
	ar -cvq helper.a helper.o

libhelper.so: helper.o
	g++ -shared -Wl,-soname,libhelper.so.1.0.0 -o libhelper.so helper.o
	ln -sf libhelper.so libhelper.so.1.0.0

app_dynamic: app.cpp libhelper.so
	g++ -Wall -L. app.cpp -lhelper -o app_dynamic

app_static: app.cpp helper.a
	g++ -o app_static app.cpp helper.a

xxx:
	@echo "***** TODO ******"
	@echo 'export x=$${LD_LIBRARY_PATH}:.'

.PHONY: clean 
