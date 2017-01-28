FROM ubuntu:xenial

RUN apt-get update && apt-get -y install cmake git build-essential vim python clang && apt-get -y remove gcc g++
RUN mkdir /src
RUN cd /src && git clone http://llvm.org/git/llvm.git && cd /src/llvm 
RUN mkdir /src/llvm/build 
RUN sed -i -e s/Hexagon/Lanai/ /src/llvm/CMakeLists.txt
RUN cd /src/llvm/build && cmake -DLLVM_TARGETS_TO_BUILD="X86;Lanai" .. && cd /src/llvm/build && make -j 3 && cd /src/llvm/build && make install && rm -Rf /src

WORKDIR /mnt/
