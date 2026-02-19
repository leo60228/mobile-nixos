{ mobile-nixos
, linux_6_6
, ...
}:

mobile-nixos.kernel-builder {
  version = linux_6_6.version;
  configfile = ./config.aarch64;

  src = linux_6_6.src;

  isModular = true;
  isCompressed = false;
}
