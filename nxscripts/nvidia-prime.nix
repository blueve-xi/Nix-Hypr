{ config, lib, pkgs, ... }:

{
  hardware.nvidia.prime = {
    sync.enable = true;

    # Make sure to use the correct Bus ID values for your system!
    nvidiaBusId = "PCI:01:00:0";
    intelBusId = "PCI:0:2:0";
    # amdgpuBusId = "PCI:54:0:0"; For AMD GPU
  };
}

