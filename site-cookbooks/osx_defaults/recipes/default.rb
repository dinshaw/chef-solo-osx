include_recipe "mac_os_x::settings"

mac_os_x_userdefaults "show hard drives on the desktop" do
  domain "com.apple.finder"
  key "ShowHardDrivesOnDesktop"
  value "false"
  type "bool"
end

mac_os_x_userdefaults "full keyboard access to all controls" do
  key "AppleKeyboardUIMode"
  global true
  value "3"
end


