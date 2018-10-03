#
# Cookbook:: hello
# Recipe:: default
#
# Copyright:: 2018, benr, All Rights Reserved.

file '/tmp/HABITAT_WAS_HERE' do
  content 'All hail HabiChef.'
  mode '0755'
end
