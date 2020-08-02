FROM alpine:latest

COPY srcs/* ./

RUN apk add vim && rm -rf /etc/vim/vimrc \
    && mkdir /etc/vim/colors && mv vimrc /etc/vim \
    && mv forest-night.vim /usr/share/vim/vim82/colors

ENV TERM=xterm-256color

ADD ./vim.sh /usr/local/bin/vim.sh

ENTRYPOINT ["/usr/local/bin/vim.sh"]
