{ pkgs, lib, ... }:
{
  imports = [
    ../../../../common/pc
    ../../../../common/pc/laptop
    ../../../../common/pc/laptop/acpi_call.nix
    ../../../../common/pc/laptop/ssd
    ../../../../common/cpu/intel
    ../../../../common/gpu/intel/kaby-lake/default.nix
  ];

  # Cooling management
  services.thermald.enable = lib.mkDefault true;

  # Allows for updating firmware via `fwupdmgr`.
  services.fwupd.enable = lib.mkDefault true;
}
