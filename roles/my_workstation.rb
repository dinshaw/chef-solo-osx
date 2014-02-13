name 'my_workstation'
description 'This role will contain everything I need as a developer.'
run_list [
  'recipe[homebrew]',
  'recipe[dmg]',
  'recipe[my_apps]',
  'recipe[mac_os_x::settings]'
]
default_attributes(
  'mac_os_x' => {
    'settings' => {
      'finder' => {
        'domain' => 'com.apple.finder',
        'FXPreferredViewStyle' => 'clmv', # column view
        'NewWindowTarget' => 'PfHm', # home directory
        'RemoveIDiskFromSidebarOnStartup' => true,
        'ShowExternalHardDrivesOnDesktop' => true,
        'ShowHardDrivesOnDesktop' => false,
        'ShowMountedServersOnDesktop' => true,
        'ShowRemovableMediaOnDesktop' => true,
        'ShowStatusBar' => true,
      }
    }
  }
)
