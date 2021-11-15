NAME=boot_sect_memory_org

$(NAME).bin: $(NAME).asm
	nasm -fbin $^ -o $@
asm: 
	vim $(NAME).asm
start:	
	qemu-system-x86_64 $(NAME).bin
