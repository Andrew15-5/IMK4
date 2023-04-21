command=latexmk
tex_command=lualatex

all: build
	make clean

build: clean
	${command} -${tex_command}

clean:
	${command} -c

watch: clean
	sh -c "trap 'make clean' INT; ${command} -${tex_command} -pvc"
