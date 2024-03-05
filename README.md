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
| https://epam.github.io/edp-helm-charts/stable | edp-tekton-common-library | 0.2.17 |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| fullnameOverride | string | `""` |  |
| github.host | string | `"github.com"` | The GitHub host, adjust this if you run a GitHub enterprise. Default: github.com |
| github.webhook.existingSecret | string | `"github"` | Existing secret which holds GitHub integration credentials: Username, Access Token, Secret String and Private SSH Key |
| gitlab.host | string | `"git.epam.com"` | The GitLab host, adjust this if you run a GitLab enterprise. Default: gitlab.com |
| gitlab.webhook.existingSecret | string | `"gitlab"` | Existing secret which holds GitLab integration credentials: Username, Access Token, Secret String and Private SSH Key |
| global.dnsWildCard | string | `""` |  |
| global.gerritSSHPort | string | `"30003"` |  |
| global.gitProvider | string | `"github"` |  |
| nameOverride | string | `""` |  |
