### Creating a new Repository in Github ####


#### Create your directory localy and initialize it as a git repo ####
- In a new directory on you computer lets call it makeNewGitRepo make sure this directory is not under a directory already in a git repository.  
- navigate to that directory in a terminal  
- run the command to initialize the directory and its children  
               git init  


#### Create remote bare repository that your local repository will be pushed to ####
- make sure you are at the root of the newly created local directory representing your repository.  
- next you will need to issue a restful api call to Github to create an bare repository that you can push to. This can be done using the standard linux tool 'curl'  
  - lets set a couple variables in your terminal  
                github_user=Some_Real_Github_User_Name_Here  
                github_org=CLCLinux # Note: this might not be the org you car to create the repo in!  
  - Next you can execute the following curl command that will issue a POST to the Github API creating a new empty repo with your user into the CLCLinux organization with the name of your current directory.  
                curl -u "$github_user" https://api.github.com/orgs/$github_org/repos -d "{\"name\":\"makeNewGitRepo\"}"  
 
#### Locally add files to your repository####
- make sure you are at the root of the newly created local directory representing your repository.  
- Check the status of your files by running the following command:  
                git status
    This should show as an example the following information:  

````            On branch master  
            Your branch is up-to-date with 'origin/master'.  
            Changes not staged for commit:  
              (use "git add <file>..." to update what will be committed)  
              (use "git checkout -- <file>..." to discard changes in working directory)  
  
                modified:   README.md  
            no changes added to commit (use "git add" and/or "git commit -a")  
````

- Next go ahead and add your files to the git repos index by issuing the following command:  
            git add README.md  
    At this point your files will be recognized as being part of the repositories indexed files. but to save the files version we will need to commit.  
-Next we will commit the file by issuing the following command:  
            git commit -m "This is a comment explaining what changes were made to this file"  
    At this point the file has been committed and has a saved version in the history of this repo.

#### Pushing the local repositories contents to the remote in Github####
- Now that we are ready to push the changes in our local repository up to the remote repository in Github we will want to set the configuration for our local repository to know where the remote repository is at. We do this by issuing the following command:  
            git remote add origin https://github.com/$github_org/makeNewGitRepo.git  
    Note: We set the variable $github_org above in the terminal. Now our local repository configuration knows where to push to.
- Next we want to push our repo to the remote by issuing the following command:
            git push --set-upstream origin master
    This pushes the local references in teh git repos indexs as well as the files up to the remote repository while adding a local tracking reference allowing the local repo to be able to issue the simpler 'git push' command for future pushes.  




  
Assumptions:
- github user with create repository rights for teh organization you want to create the repository in.  
