# Overview

In this project, you will build a Github repository from scratch and create a scaffolding that will assist you in performing both Continuous Integration and Continuous Delivery. You'll use Github Actions along with a Makefile, requirements.txt and application code to perform an initial lint, test, and install cycle. Next, you'll integrate this project with Azure Pipelines to enable Continuous Delivery to Azure App Service.

## Project Plan

* [Trello Board](https://trello.com/b/yFThNF3M/udacity-azure-devops-project-02)
* [Google Sheets Project Plan](https://docs.google.com/spreadsheets/d/1ojUWSqfUgFnG1rUK4QC0-39u_VIw-yWCK8sqdlwNIus/edit#gid=1348135932)

## Pre requisites

* An Azure Account ( https://portal.azure.com/)
* A GitHub Account ( http://github.com/)
* An Azure DevOps Account (https://dev.azure.com/)

## Instructions

* Architectural Diagram (Shows how key parts of the system work)>

  ![image](https://github.com/Nbson1981/uda-azure-devops-project-02/assets/96762751/aa63fe54-8e11-4077-8713-67c3b22da256)

* Enter to Azure Portal with your Accoutn and open a Azure Cloud shell ( use Bash)

> If you are not created one , just follow the first creation and wait a seconds to get your Cloud Shell.

* First of all set up SSH Keys in your azure cloud shell, add the `id_rsa.pub` key to your GitHub repo ( ssh keys)  and then clone the project there.

```sh
ssh-keygen -t rsa
 cat ~/.ssh/id_rsa.pub
```

* Project cloned into Azure Cloud Shell
```sh
  git clone git@github.com:Nbson1981/uda-azure-devops-project-02.git
```

* Passing tests that are displayed after running the `make all` command from the `Makefile`
![image](https://github.com/Nbson1981/uda-azure-devops-project-02/assets/96762751/287c194c-058d-4c8a-8a70-7f6bb159c369)


* Successful deploy of the project in Azure Pipelines.

![image](https://github.com/Nbson1981/uda-azure-devops-project-02/assets/96762751/de19ba7b-49e0-4a3f-807b-49ed76f24a6b)

  
* Running Azure App Service from Azure Pipelines automatic deployment

  ![image](https://github.com/Nbson1981/uda-azure-devops-project-02/assets/96762751/80027958-72b6-4018-8da1-85445ecedad5)


* Successful prediction from deployed flask app in Azure Cloud Shell.

  ![image](https://github.com/Nbson1981/uda-azure-devops-project-02/assets/96762751/3f77176d-4e3e-4102-87aa-368dd2e60c5a)


* Output of streamed log files from deployed application
 `az webapp log tail -g "{resource-group-name}" -n "{app-name}"`
![image](https://github.com/Nbson1981/uda-azure-devops-project-02/assets/96762751/fa9b11a7-a170-41b3-9d58-272e1843f072)


## Tests
Install locust `pip install locust`

Start test `locust -f locustfile.py --host https://helloflask-app.azurewebsites.net/ --users 500 --spawn-rate 5`

![image](https://github.com/Nbson1981/uda-azure-devops-project-02/assets/96762751/f55e1ea5-1824-4e5f-8c39-25535e183dee)


## Enhancements

Here lies a short list of possible future improvements to this project

- Better Tests in the Testing scripts
- Extending the Flask App to have new endpoints
- Adding additional parameters to the predict endpoint
    - Type of Housing (Condo, House, Attached or Dettached housing etc.)
    - Postal Code or Address to help predict closer housing prices in an area
- Flesh out load testing scenarios

## Demo 

<TODO: Add link Screencast on YouTube>


