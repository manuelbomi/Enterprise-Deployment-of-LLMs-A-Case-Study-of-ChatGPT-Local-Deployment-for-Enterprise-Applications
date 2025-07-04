## Enterprise Deployment of LLMs: A Case Study of ChatGPT Local Deployment for Enterprise Applications

#### This project shows how LLMs such as ChatGPT can be deployed locally for enterprise applications. 
---
#### Intending users are free to clone the project under the generic MIT License and deploy it locally using Docker. The requirement.txt and the Docker file that will aid the deployment are part of the code. Django was used as the backend server database. It is used to store usernames and other vital encrypted information of enterprise users. It is also used to store and track the number of ChatGPT tokens used across the enterprise. On the front end, sqlite is used to persist vital front end data. Vue was used to provide more front end functionalities for enterprise users. 
---
## Enterprise Deployment

#### The code here shows a Docker based (front end UI and the back end server) deployment for only a single use application. To transition it to enterprise usage, enterprise solution architects can deploy the application on Docker in cloud kubernetes pods (e.g. K8s) in their cloud platform of choice. To satisfy enterprise usage when number of users increases, multiple pods of the initial K8s instance can then be created as need arises. Nginx or other load balancers can then be used to direct traffics to the kubernetes pods. 
---
#### Examples of usage and how the application front end displays on the single-use Docker instance are availble in the images below: 
---
<img width="1430" height="722" alt="Image" src="https://github.com/user-attachments/assets/9cb9f969-ff46-4eaa-9702-15ab11f94d2e" />
---

<img width="1430" height="663" alt="Image" src="https://github.com/user-attachments/assets/368aadf1-78f7-4d3d-ad83-ff05df844b48" />
---

<img width="1430" height="662" alt="Image" src="https://github.com/user-attachments/assets/3edcea55-f35c-40bd-b9ca-fb1d47dd345e" />
---

<img width="1430" height="642" alt="Image" src="https://github.com/user-attachments/assets/a67dd6ca-77e7-4be0-9b7f-0c4df6a9fa44" />
---

<img width="1796" height="656" alt="Image" src="https://github.com/user-attachments/assets/dd4e66bc-3269-4e24-a62d-b9ca77513ea0" />
---
Example of the application Running on Desktop Docker instance
---
<img width="1907" height="907" alt="Image" src="https://github.com/user-attachments/assets/b0101dbf-6d70-45e6-a9e9-4eacdf7e6207" />
---
<img width="1907" height="907" alt="Image" src="https://github.com/user-attachments/assets/9760ce87-369c-4b61-a2e5-db92c5181feb" />
---


References: https://github.com/WongSaang/chatgpt-ui
