### Creating a new Repository in Github ####

- In a new directory on you computer lets call it makeNewGitRepo make sure this directory is not under a directory already in a git repository.
- navigate to that directory in a terminal
- run the command to initialize the directory and its children
               git init
-next you will need to issue a restful api call to Github to create an bare repository that you can push to. This can be done using the standard linux tool 'curl'
  - lets set a couple variables in your terminal
                github_user=Some_Real_Github_User_Name_Here
                github_org=CLCLinux
  - Next you can execute the following curl command that will issue a POST to the Github API creating a new empty repo with your user into the CLCLinux organization with the name of your current directory.
                curl -u "$github_user" https://api.github.com/orgs/$github_org/repos -d "{\"name\":\"$current_dir\"}"
 


Assumptions:

