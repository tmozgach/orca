FROM linuxbrew/linuxbrew
USER root
RUN echo '%orca_users ALL=(linuxbrew) NOPASSWD:ALL' >> /etc/sudoers \
 && echo 'alias brew="sudo -u linuxbrew /home/linuxbrew/.linuxbrew/bin/brew"' >$
USER linuxbrew

