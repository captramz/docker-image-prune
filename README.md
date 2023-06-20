# Docker Image Prune

This Docker image is designed to help clean up dangling images inside a Docker environment. Dangling images are images that have no associated containers and are taking up unnecessary space on your system. This image provides a convenient way to remove these dangling images.

## Usage

### docker-compose

```yaml
version: "3.8"
services:
  app:
    image: captramz/docker-image-prune:latest
    environment:
      TZ: "America/Los_Angeles"
      CRON: "0 0 * * *"
    volumes:
      - /var/run/docker.sock:/var/run/docker.sock:rw
    deploy:
      mode: replicated
      replicas: 2
      placement:
        max_replicas_per_node: 1
```

### Parameters

| Parameter              | Function                        |
| ---------------------- | ------------------------------- |
| TZ=America/Los_Angeles | Specify timezone                |
| CRON="0 0 \* \* \*"    | Cron which to run prune command |

License

This project is licensed under the MIT License. You are free to modify, distribute, and use this image in any way you see fit.

If you have any questions or need further assistance, please feel free to reach out to me at captramz@yahoo.com.
