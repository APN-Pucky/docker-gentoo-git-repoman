# name the portage image
FROM gentoo/portage:latest as portage
FROM gentoo/stage3:latest
MAINTAINER APN
COPY --from=portage /var/db/repos/gentoo /var/db/repos/gentoo
RUN emerge -qv dev-vcs/git 
RUN emerge -qv app-portage/repoman
RUN mkdir -p /etc/portage/repos.conf/