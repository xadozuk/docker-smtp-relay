# docker/smtp-relay

Internal SMTP relay for docker containers.
You must configure your domain accordingly (reverse DNS, SPF, ...) for mail not to be considered as spam.

## Security Consideration

This image has not been extensively tested for security. *Only* containers from docker network can use the smtp relay.

## Usage

1. First start the smtp relay container

  ```
  docker run -d --name smtp-relay -e SMTP_HOSTNAME=smtp.domain.tld xadozuk/smtp-relay
  ```
  
2. Link the smtp relay to another container

  ```
  docker run -d --link smtp-relay:smtp <image>
  ```
  
3. Connect to the smtp relay with `smtp:25`.
4. Enjoy !
