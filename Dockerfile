FROM node:12

RUN apt-get update
RUN apt-get install -y \
	texlive-xetex \
	ghostscript \
	make \
	wget \
	tar \
	poppler-utils

RUN wget http://www.imagemagick.org/download/ImageMagick.tar.gz && \
	tar -xvf ImageMagick.tar.gz && \
	cd ImageMagick-* && \
	./configure && \
	make && \
	make install && \
	ldconfig /usr/local/lib