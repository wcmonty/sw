################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../sim/pipe/ncopy.c \
../sim/pipe/pipe-std.c \
../sim/pipe/psim.c 

OBJS += \
./sim/pipe/ncopy.o \
./sim/pipe/pipe-std.o \
./sim/pipe/psim.o 

C_DEPS += \
./sim/pipe/ncopy.d \
./sim/pipe/pipe-std.d \
./sim/pipe/psim.d 


# Each subdirectory must supply rules for building sources it contributes
sim/pipe/%.o: ../sim/pipe/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


