# restful-api-python-flask
### Build and run docker container with Flask RESTful API

Clone repo `git clone https://github.com/LeeDongJin93/restful-api-python-flask.git'

Chande directory `cd restful-api-python-flask`

Build image `docker build -t restful-api .` 
  
Run container in detached mode and publish port 8080 `docker run -d -p 8080:8080 restful-api`
  
API should be accessible on port 8080 `curl -i localhost:8080/todo/api/v1.0/tasks`

Cloud Build     `gcloud builds submit --tag gcr.io/projectID/restful-api`

Cloud Run에 container image deploy     `gcloud beta run deploy --image gcr.io/projectID/restful-api`

GET URL:https://restful-api-mwaaecp4bq-an.a.run.app/todo/api/v1.0/tasks

## curl

### Create a new user

```
POST /todo/api/v1.0/tasks
```

#### Parameters

|Name|Type|Description|
|----|----|-----------|
|source_id|int|Authentication source ID. Remain default means a local user|
|login_name|string|Authentication source login name, **required** for non-local user|
|username|string|**Required** Unique user name|
|email|string|**Required** Unique email address of user|
|password|string|Default password for user, **required** for local user|
|send_notify|bool|Send a notification email for this creation, require mailer service enabled|


### Delete a user

```
DELETE /todo/api/v1.0/tasks
```

### Update a user

```
PUT /todo/api/v1.0/tasks
```
