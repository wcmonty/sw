################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../sim/seq/seq-std.c \
../sim/seq/ssim.c 

OBJS += \
./sim/seq/seq-std.o \
./sim/seq/ssim.o 

C_DEPS += \
./sim/seq/seq-std.d \
./sim/seq/ssim.d 


# Each subdirectory must supply rules for building sources it contributes
sim/seq/%.o: ../sim/seq/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


