dmg_package 'Google Chrome' do
  dmg_name 'googlechrome'
  source   'https://dl-ssl.google.com/chrome/mac/stable/GGRM/googlechrome.dmg'
  checksum '7daa2dc5c46d9bfb14f1d7ff4b33884325e5e63e694810adc58f14795165c91a'
  action   :install
end


dmg_package 'Aurora' do
  volumes_dir 'Aurora'
  app 'FirefoxAurora'
  source   'http://ftp.mozilla.org/pub/mozilla.org/firefox/nightly/latest-mozilla-aurora/firefox-29.0a2.en-US.mac.dmg'
  checksum '2f19bf95a02a299d5cf32d9f654d6fd29cd50945a556ead84480d0d209ff7332'
  action   :install
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

package 'phantomjs' do
  action :install
end

git "/Users/#{ENV['USER']}/.dotfiles" do
  repository "git://github.com/dinshaw/dotfiles.git"
  reference "master"
  action :sync
end

execute 'install Ruby' do
  command 'rbenv install 2.1.0'
  not_if 'rbenv versions | grep 2.1.0'
end

execute 'install Jruby' do
  command 'rbenv install jruby-1.7.10'
  not_if 'rbenv versions | grep jruby-1.7.10'
end
