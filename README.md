# custom-tekton-chart

![Version: 1.0.0](https://img.shields.io/badge/Version-1.0.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 1.0.0](https://img.shields.io/badge/AppVersion-1.0.0-informational?style=flat-square)

Custom Tekton Chart

**Homepage:** <https://epam.github.io/edp-install/>

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| epmd-edp | <SupportEPMD-EDP@epam.com> | <https://solutionshub.epam.com/solution/epam-delivery-platform> |
| sergk |  | <https://github.com/SergK> |

## Source Code

* <https://github.com/epam/helm-helm-pipeline>

## Requirements

| Repository | Name | Version |
|------------|------|---------|
| https://epam.github.io/edp-helm-charts/stable | edp-tekton-common-library | 0.2.18 |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| fullnameOverride | string | `""` |  |
| gitServers.github.eventListener.enabled | bool | `true` | Enable EventListener |
| gitServers.github.eventListener.ingress.enabled | bool | `true` | Enable ingress controller resource |
| gitServers.github.eventListener.resources | object | `{"limits":{"cpu":"500m","memory":"128Mi"},"requests":{"cpu":"50m","memory":"64Mi"}}` | EventListener resources |
| gitServers.github.gitProvider | string | `"github"` |  |
| gitServers.github.host | string | `"github.com"` |  |
| gitServers.gitlab.eventListener.enabled | bool | `true` |  |
| gitServers.gitlab.eventListener.ingress.enabled | bool | `true` | Enable ingress controller resource |
| gitServers.gitlab.eventListener.resources | object | `{"limits":{"cpu":"500m","memory":"128Mi"},"requests":{"cpu":"50m","memory":"64Mi"}}` | EventListener resources |
| gitServers.gitlab.gitProvider | string | `"gitlab"` |  |
| gitServers.gitlab.host | string | `"gitlab.com"` |  |
| gitServers.gitlab.webhook.skipWebhookSSLVerification | bool | `false` |  |
| gitServers.gitlab.webhook.url | string | `"http://gitlab.example.com"` |  |
| global.dnsWildCard | string | `""` |  |
| global.gitProviders[0] | string | `"github"` |  |
| global.gitProviders[1] | string | `"gitlab"` |  |
| nameOverride | string | `""` |  |
