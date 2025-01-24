# node-hostname

Dummy application to test container infrastructures

## TL;DR;

```console
helm repo add node-hostname https://christianhuth.github.io/node-hostname
helm repo update
helm install my-release node-hostname/node-hostname
```

## Introduction

This chart bootstraps the [Node Hostname Application](https://github.com/christianhuth/node-hostname) on a [Kubernetes](http://kubernetes.io) cluster using the [Helm](https://helm.sh) package manager.

## Prerequisites

- Kubernetes 1.19+

## Installing the Chart

To install the chart with the release name `my-release`:

```console
helm repo add node-hostname https://christianhuth.github.io/node-hostname
helm repo update
helm install my-release node-hostname/node-hostname
```

These commands deploy the Node Hostname Application on the Kubernetes cluster in the default configuration. The [Values](#values) section lists the values that can be configured during installation.

> **Tip**: List all releases using `helm list`

## Uninstalling the Chart

To uninstall the `my-release` deployment:

```console
helm uninstall my-release
```

The command removes all the Kubernetes components associated with the chart and deletes the release.

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` | Affinity settings for pod assignment |
| extraEnv | list | `[]` | additional environment variables to be added to the pods |
| fullnameOverride | string | `""` | String to fully override `"argocd-extension-metrics.fullname"` |
| image.pullPolicy | string | `"Always"` | image pull policy |
| image.registry | string | `"docker.io"` | image registory |
| image.repository | string | `"christianhuth/node-hostname"` | image repository |
| image.tag | string | `"1.0.1"` | Overrides the image tag |
| imagePullSecrets | list | `[]` | If defined, uses a Secret to pull an image from a private Docker registry or repository. |
| ingress.annotations | object | `{}` | Additional annotations for the Ingress resource |
| ingress.className | string | `""` | IngressClass that will be be used to implement the Ingress |
| ingress.enabled | bool | `false` | Enable ingress record generation |
| ingress.hostname | string | `"chart-example.local"` | The publicly reachable hostname |
| ingress.path | string | `"/"` | The path under witch the frontend should be reached |
| ingress.pathType | string | `"Prefix"` | Valid values: ImplementationSpecific, Exact, Prefix |
| ingress.tls | list | `[]` | An array with the tls configuration |
| nameOverride | string | `""` | Provide a name in place of `argocd-extension-metrics` |
| nodeSelector | object | `{}` | Node labels for pod assignment |
| podSecurityContext | object | `{}` | pod-level security context |
| replicaCount | int | `1` | Number of replicas |
| resources | object | `{"requests":{"cpu":"100m","memory":"100Mi"}}` | Resource limits and requests for the controller pods. |
| revisionHistoryLimit | int | `0` | The number of old ReplicaSets to retain |
| securityContext | object | see [values.yaml](./values.yaml) | container-level security context |
| service.port | int | `3000` | Kubernetes port where service is exposed |
| service.type | string | `"ClusterIP"` | Kubernetes service type |
| serviceAccount.annotations | object | `{}` | Annotations to add to the service account |
| serviceAccount.create | bool | `true` | Specifies whether a service account should be created |
| serviceAccount.name | string | `""` | The name of the service account to use. If not set and create is true, a name is generated using the fullname template |
| tolerations | list | `[]` | Toleration labels for pod assignment |

Specify each parameter using the `--set key=value[,key=value]` argument to `helm install`.

Alternatively, a YAML file that specifies the values for the parameters can be provided while installing the chart. For example,

```console
helm install my-release -f values.yaml node-hostname/node-hostname
```
