# Kubernetes Helm Charts

[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](https://opensource.org/licenses/MIT)
[![Artifact Hub](https://img.shields.io/endpoint?url=https://artifacthub.io/badge/repository/node-hostname)](https://artifacthub.io/packages/search?repo=node-hostname)

These charts are provided as-is with no warranties.

## Usage

[Helm](https://helm.sh) must be installed to use the charts, please refer to Helm's [documentation](https://helm.sh/docs/) to get started.

Once Helm is set up properly, add the repo as follows:

```shell
helm repo add node-hostname https://christianhuth.github.io/node-hostname
helm repo update
```

You can then run `helm search repo node-hostname` to see the current list of available charts.

## License

[MIT License](./LICENSE)

## List of available Charts

| Chart name                              | Image source                                                                        | Description                                                                                           |
|-----------------------------------------|-------------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------------|
| [node-hostname](./charts/node-hostname) | [christianhuth/node-hostname](https://hub.docker.com/r/christianhuth/node-hostname) | [Dummy application to test container infrastructures](https://github.com/christianhuth/node-hostname) |

## Development

### Using a Dev Container

The easiest way to contribute is using the provided Dev Container.

### Using your local environment

#### Creating the necessary prerequisites

1. (Optional) Install the [pre-commit](https://pre-commit.com/) hooks

  ```console
  pip3 install pre-commit
  pre-commit install --install-hooks
  ```

1. (Optional) Setup a minikube cluster with Nginx ingress support

  ```console
  minikube start --addons=ingress --cpus=4 --memory=8g --profile=helm-charts-development
  minikube profile helm-charts-development
  ```

#### Development Process

1. Make changes to the desired Chart

1. Bump the version in the changed `Chart.yaml` according to Semantic Versioning

1. Update the changes annotation in the `Chart.yaml`

1. Commit your changes to the repository. The CI Pipeline will test your changes. Create a Merge Request.
