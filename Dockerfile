FROM gentoo/stage3-amd64

RUN emerge-webrsync -v

RUN emerge -DN @world
RUN emerge net-libs/nodejs dev-vcs/git
RUN rm -rf /usr/portage
