FROM alpine:latest

COPY srcs/* ./

RUN apk update && apk add vim && rm -rf /etc/vim/vimrc \
    && mkdir /etc/vim/colors && mv vimrc /etc/vim \
    && mv forest-night.vim /usr/share/vim/vim82/colors

CMD vim /home/User
