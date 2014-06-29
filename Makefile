
TARGET=ejson
VSN=0.1.4
ERL_ROOT=/usr/local/lib/erlang
ERL_LIB=$(ERL_ROOT)/lib


all: $(TARGET) boot

$(TARGET):
	erl -make

boot:
	erl -noinput -eval 'systools:make_script("$(TARGET)")' -s erlang halt

clean:
	rm -rf *.beam *.script *.boot *~

install:
	install -d $(ERL_LIB)/$(TARGET)-$(VSN)/
	install -d $(ERL_LIB)/$(TARGET)-$(VSN)/ebin/
	install -d $(ERL_LIB)/$(TARGET)-$(VSN)/src/
	install -m 644 *.beam $(ERL_LIB)/$(TARGET)-$(VSN)/ebin/
	install -m 644 ejson.app $(ERL_LIB)/$(TARGET)-$(VSN)/ebin/
	install -m 644 *.erl $(ERL_LIB)/$(TARGET)-$(VSN)/src/
