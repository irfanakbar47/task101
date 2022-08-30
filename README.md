# demo
There are total 5 workflows
1- Build Workflow building the application, using maven "if any things changes in main branch This workflow will be triggered" and will start building the application, we can change branch where ever this is required. 

2- TestingMVN workflow is to test automation, also main branch if any changes pushed in the branch.

3- sonarcloud is for linting, any push on main branch will trigger this action. 

4- aws is for building the image with the image tag and pushing it to aws ecr. aws creds are saved in github secrets and any push in master branch will trigger this action.

5- docker (extra was not required) is for just docke image to create wit tag, also any push on main branch will trigger this action. 
..
