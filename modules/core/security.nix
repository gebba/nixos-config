{ ... }:
{
  security.rtkit.enable = true;
  security.sudo.enable = true;
  security.pam.services.swaylock = {
  	enableGnomeKeyring = true;
  };
  security.pam.services.hyprlock = {
	enableGnomeKeyring = true;
  };
}
