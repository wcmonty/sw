file=nitro
flags=-n
run: exploit.txt
	./bufbomb $(flags) -u wmontg2 < exploit-raw.txt

submit: exploit.txt
	./bufbomb -s $(flags) -u wmontg2 <exploit-raw.txt

raw: exploit.txt
	./hex2raw $(flags) < exploit.txt > exploit-raw.txt
	objdump -d $(file).o | sed -n 's/\(\s\+[0-9a-f]\+:\s\+\)\(....................\)\(.*\)/\2/p' >$(file).d

