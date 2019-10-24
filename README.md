# Sample NodeJS App

# Docker locally

```
docker-compose up -d --build
```

Open your browser on: [http://localhost:3331](http://localhost:3331)

# Docker staging

```
docker-compose -f docker-compose-staging.yml up -d --build
```

Create a load balancer that will listen to port `:8002` upstream

# Docker production

Different approach