FROM d3v0x/gentoo

RUN emerge-webrsync -v
RUN echo "MAKEOPTS=\"-j$(cat /proc/cpuinfo | grep processor | wc -l)\"" >> /etc/portage/make.conf
RUN echo "USE=\"\${USE} -bindist\"" >> /etc/portage/make.conf

RUN emerge -DN @world
RUN emerge =net-libs/nodejs-0.12.6 dev-vcs/git
RUN rm -rf /usr/portage
