# restful-api-python-flask
### Build and run docker container with Flask RESTful API

Clone repo `git clone https://github.com/LeeDongJin93/restful-api-python-flask.git'
Chande directory `cd restful-api-python-flask`

Build image `docker build -t restful-api .` 
  
Run container in detached mode and publish port 8080 `docker run -d -p 8080:8080 restful-api`
  
API should be accessible on port 8080 `curl -i localhost:8080/todo/api/v1.0/tasks`

Cloud Build     `gcloud builds submit --tag gcr.io/projectID/restful-api`

Cloud Run에 container image deploy     `gcloud beta run deploy --image gcr.io/projectID/restful-api`

URL:https://restful-api-mwaaecp4bq-an.a.run.app/todo/api/v1.0/tasks
