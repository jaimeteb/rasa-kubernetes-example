# Rasa Kubernetes

Basic Kubernetes deployment for Rasa 1.10.1

## Structure

| Type        | Name              | Description                               |
|-------------|-------------------|-------------------------------------------|
| Namespace   | `chatbot`         | Namespace for components                  |
| Service     | `rasa-service`    | Service for `rasa` deployment             |
| Service     | `actions-service` | Service for `actions` deployment          |
| Service     | `redis-service`   | Service for `redis` stateful set          |
| Deployment  | `rasa`            | Rasa trained model server                 |
| Deployment  | `actions`         | Rasa action server                        |
| StatefulSet | `redis`           | Redis instance                            |
| ConfigMap   | `chatbot-config`  | Configuration (env vars, passwords, etc.) |

## Usage

To run this example locally, you first have to start a Docker image registry. To do so, run:

```bash
docker run -p 5555:5000 --name k8s-registry -d registry
```

To build the images run:

```bash
make build
```

Then, to upload to the registry:

```bash
make push
```

Finally, to deploy the application:

```bash
make deploy
```

## Important Notes

For simplification purposes, some elements are omitted, though they are important in a real application, such as:

- Resource limits to all containers
- Volume mounts for stateful sets
- Security contexts
- Use of secrets for sensitive data
