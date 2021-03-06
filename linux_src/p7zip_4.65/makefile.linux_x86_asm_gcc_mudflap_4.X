#
# makefile for Linux (x86, PPC, alpha ...)
#

OPTFLAGS=-g2

ALLFLAGS=${OPTFLAGS} -m32 -pthread -fmudflap \
    	-D_FILE_OFFSET_BITS=64 -D_LARGEFILE_SOURCE \
	-DNDEBUG -DENV_UNIX \
	$(LOCAL_FLAGS)

CXX=g++ $(ALLFLAGS)
CC=gcc $(ALLFLAGS)
CC_SHARED=-fPIC
LINK_SHARED=-fPIC -shared
ASM=nasm -f elf

LOCAL_LIBS=-lmudflap
LOCAL_LIBS_DLL=$(LOCAL_LIBS) -ldl

CPU=x86
OBJ_CRC32=$(OBJ_CRC32_x86)

