#
#	Hello_Habichef Policy File (benr)
#
name 'hello_habichef'

# Where to find external cookbooks:
default_source :supermarket

# run_list: chef-client will run these recipes in the order specified.
run_list 'hello::default'

# Specify a custom source for a single cookbook:
cookbook 'hello', path: 'cookbooks/hello'
