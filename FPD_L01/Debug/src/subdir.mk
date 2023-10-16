################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/FPD_01.c \
../src/FPD_02.c \
../src/FPD_03.c 

C_DEPS += \
./src/FPD_01.d \
./src/FPD_02.d \
./src/FPD_03.d 

OBJS += \
./src/FPD_01.o \
./src/FPD_02.o \
./src/FPD_03.o 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c src/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	mpicc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-src

clean-src:
	-$(RM) ./src/FPD_01.d ./src/FPD_01.o ./src/FPD_02.d ./src/FPD_02.o ./src/FPD_03.d ./src/FPD_03.o

.PHONY: clean-src

