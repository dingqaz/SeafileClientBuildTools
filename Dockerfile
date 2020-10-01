FROM fedora

# RUN is in compiling time.
RUN dnf install git -y \
  && git clone https://github.com/vmcitrix/SeafileClientBuildTools.git /SeafileClientBuildTools \
  && bash /SeafileClientBuildTools/InstallDevPackagesFedora.sh

# CMD is in runtime.
CMD ["/SeafileClientBuildTools/DockerEntry.sh"]
