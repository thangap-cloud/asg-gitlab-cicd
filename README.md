# demo-cicd-nsearch

## This ci/cd pipeline does 2 parts 
 1. creates a docker image and push to dockerhub for project k8s-local-cluster-helm  
 2. It deploys the content under src to s3 bucket, created in project asg-app-deployment 
 3. After deployment to s3 the autscaling group will be refreshed 

## Prerequisite
 1. Please make sure to configure you AWS creds to variables in the ci/cd pipeline
 2. Please add you docker hub username and creds to variables
 3. Please update the s3 end-point in variables from the output of project asg-app-deployment
 4. Please get the "autoscaling group" name created from sg-app-deployment project and update in .gitlab-ci.yml file, here
    --auto-scaling-group-name demo-asg-group


