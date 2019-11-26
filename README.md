
# Proc Image Transaformation Service

## Installation

### Prerequisite

```
Docker
Git
```

### Clone
- Clone this repo to your local machine  
```
git clone git@github.com:harikumar8984/proc_image_types.git
```

### Development Setup

#### Local Setup
```
docker-compose build
```

#### Running TestCase

```
docker-compose run web rspec
```

### Start Server
```
docker-compose up
```
#### API endpoints

```
GET http://#{request.host}/api/image_transformation/:public_id   
GET http://#{request.host}/api/image_transformation/:public_id/?image_format=jpg
GET http://#{request.host}/api/image_transformation/:public_id/?image_format=jpeg
GET http://#{request.host}/api/image_transformation/:public_id/?image_format=gif
GET http://#{request.host}/api/image_transformation/:public_id/?image_format=tiff
GET http://#{request.host}/api/image_transformation/:public_id/?image_format=png
```

- Server will up in the local machine *localhost:3001*
