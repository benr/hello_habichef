# HabiChef Test

This repo is a simplified test of the "HabiChef" Pattern.  Running this package will run a single cookbook which simply create the file "/tmp/HABITAT_WAS_HERE".

## The Workflow

To create such a package yourself, the workflow is thus:

1. Create a Git Repo
3. Create a **cookbooks/** directory and add your cookbooks.  
   * To create one from scratch, use: *chef generate cookbook mycookbook*
4. Create a **policyfiles/** directory and create a new Policyfile using *chef generate policyfile*
   * Rename the Policyfile.rb to any name you choose (example: "habichef.rb")
   * Edit the Policyfile, change the name to the name you've chosen
   * Specify your cookbooks, ensure the path is prefixed with "../cookbooks/"
5. Create a **habitat/** directory and create a new plan.sh
   * Paste in the template below
   * Modify "scaffold_policy_name" to match your Policyfile above
   * Modify "pkg_name" to the name you want for this Habitat package (does not need to match Policyfile)
   * Modify "pkg_origin" to your Habitat Builder Origin
   * Modify "pkg_version" 
   * Update anything else as you wish but leave "pkg_scaffolding" set to "core/scaffolding-chef"

## Building the Package

Follow the Habitat Builder documentation here: https://www.habitat.sh/docs/using-builder/

After you connect Github and Build your package, ensure that you "Promote to Stable" one of the builds.

## Executing the Package

To actually run the cookbook on a node, install Habitat (https://www.habitat.sh/docs/install-habitat/) and execute like this:

```
$ sudo hab sup run cuddletech/hello_habichef --strategy at-once

hab-sup(MR): core/hab-sup (core/hab-sup/0.64.1/20180928012737)
hab-sup(MR): Supervisor Member-ID 3079939c1273439293c300b07f5cecf1
hab-sup(AG): The cuddletech/hello_habichef service was successfully loaded
hab-sup(MR): Starting cuddletech/hello_habichef (cuddletech/hello_habichef/0.0.1/20181003190749)
hello_habichef.default(UCW): Watching user.toml
hab-sup(MR): Starting gossip-listener on 0.0.0.0:9638
hab-sup(MR): Starting ctl-gateway on 127.0.0.1:9632
hab-sup(MR): Starting http-gateway on 0.0.0.0:9631
hello_habichef.default(HK): Hooks compiled
hello_habichef.default(SR): Initializing
hello_habichef.default(SV): Starting service as user=root, group=hab
hello_habichef.default(O): Starting Chef Client, version 14.2.0
hello_habichef.default(O): Using policy 'hello_habichef' at revision '0840a223859434a7aa5abe813d9e4f2d053e0de6377b2ed4335d4a77f63c9df3'
hello_habichef.default(O): resolving cookbooks for run list: ["hello::default@0.1.0 (472349c)"]
hello_habichef.default(O): Synchronizing Cookbooks:
hello_habichef.default(O):   - hello (0.1.0)
hello_habichef.default(O): Installing Cookbook Gems:
hello_habichef.default(O): Compiling Cookbooks...
hello_habichef.default(O): Converging 1 resources
hello_habichef.default(O): Recipe: hello::default
hello_habichef.default(O):   * file[/tmp/HABITAT_WAS_HERE] action create
hello_habichef.default(O):     - create new file /tmp/HABITAT_WAS_HERE
hello_habichef.default(O):     - update content in file /tmp/HABITAT_WAS_HERE from none to df2e38
hello_habichef.default(O):     --- /tmp/HABITAT_WAS_HERE        2018-10-04 08:19:32.223198450 +0000
hello_habichef.default(O):     +++ /tmp/.chef-HABITAT_WAS_HERE20181004-11881-siw2vg     2018-10-04 08:19:32.223198450 +0000
hello_habichef.default(O):     @@ -1 +1,2 @@
hello_habichef.default(O):     +All hail HabiChef.
hello_habichef.default(O):     - change mode from '' to '0755'
hello_habichef.default(O): 
hello_habichef.default(O): Running handlers:
hello_habichef.default(O): Running handlers complete
hello_habichef.default(O): Chef Client finished, 1/1 resources updated in 01 seconds
```




