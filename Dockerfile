FROM ubuntu:14.10
MAINTAINER azyobuzin <azyobuzin@users.sourceforge.jp>

RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
RUN echo "deb http://download.mono-project.com/repo/debian wheezy main" | tee /etc/apt/sources.list.d/mono-xamarin.list
RUN apt-get update
RUN apt-get install -y git autoconf libtool automake build-essential mono-devel gettext
WORKDIR /var/sources
RUN git clone https://github.com/mono/mono.git
WORKDIR mono
RUN ./autogen.sh && make -j4 && make install -j4
WORKDIR /
RUN rm -rf /var/sources
RUN apt-get remove -y mono-runtime
RUN mozroots --import --sync
