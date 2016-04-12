PKGS = harfbuzz cairo-ft freetype2

CFLAGS = `pkg-config --cflags $(PKGS)`
LDFLAGS = `pkg-config --libs $(PKGS)` -lm -Wl,-rpath -Wl,/usr/local/lib

all: hello-harfbuzz

%: %.c
	$(CC) -std=c99 -o $@ $^ $(CFLAGS) $(LDFLAGS)
