#
# Cookbook:: hello
# Recipe:: default
#
# Copyright:: 2018, benr, All Rights Reserved.

file '/tmp/HABITAT_WAS_HERE' do
  content 'All hail HabiChef v2.\n\n'
  mode '0755'
end
