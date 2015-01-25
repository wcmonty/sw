################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
O_SRCS += \
../sim/misc/isa.o \
../sim/misc/yas-grammar.o \
../sim/misc/yas.o \
../sim/misc/yis.o 

C_SRCS += \
../sim/misc/examples.c \
../sim/misc/hcl.tab.c \
../sim/misc/isa.c \
../sim/misc/lex.yy.c \
../sim/misc/node.c \
../sim/misc/outgen.c \
../sim/misc/yas-grammar.c \
../sim/misc/yas.c \
../sim/misc/yis.c 

OBJS += \
./sim/misc/examples.o \
./sim/misc/hcl.tab.o \
./sim/misc/isa.o \
./sim/misc/lex.yy.o \
./sim/misc/node.o \
./sim/misc/outgen.o \
./sim/misc/yas-grammar.o \
./sim/misc/yas.o \
./sim/misc/yis.o 

C_DEPS += \
./sim/misc/examples.d \
./sim/misc/hcl.tab.d \
./sim/misc/isa.d \
./sim/misc/lex.yy.d \
./sim/misc/node.d \
./sim/misc/outgen.d \
./sim/misc/yas-grammar.d \
./sim/misc/yas.d \
./sim/misc/yis.d 


# Each subdirectory must supply rules for building sources it contributes
sim/misc/%.o: ../sim/misc/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


