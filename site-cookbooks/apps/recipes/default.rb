dmg_package 'Google Chrome' do
  dmg_name 'googlechrome'
  source   'https://dl-ssl.google.com/chrome/mac/stable/GGRM/googlechrome.dmg'
  checksum '7daa2dc5c46d9bfb14f1d7ff4b33884325e5e63e694810adc58f14795165c91a'
  action   :install
end

dmg_package 'Sonos' do
  dmg_name 'sonos'
  source "http://www.sonos.com/redir/controller_software_mac"
  action :install
  accept_eula true
end

# defaults to homebrew package provider
package 'mysql' do
  action :install
end

package 'redis' do
  action :install
end

package 'rbenv' do
  action :install
end

package 'ruby-build' do
  action :install
end
