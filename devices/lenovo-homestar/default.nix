{ config, lib, pkgs, ... }:

{
  imports = [
    ../families/mainline-chromeos-sc7180
  ];

  mobile.device.name = "lenovo-homestar";
  mobile.device.identity = {
    name = "Chromebook Duet 5";
    manufacturer = "Lenovo";
  };
  mobile.device.supportLevel = "supported";

  mobile.hardware = {
    screen = {
      width = 1920; height = 1080;
    };
  };
}
