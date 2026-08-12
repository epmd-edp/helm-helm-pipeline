# custom-tekton-resources

![Version: 1.0.0](https://img.shields.io/badge/Version-1.0.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 1.0.0](https://img.shields.io/badge/AppVersion-1.0.0-informational?style=flat-square)

Custom Tekton pipelines and tasks for KubeRocketCI, aligned with the edp-tekton 0.27 platform contract

**Homepage:** <https://docs.kuberocketci.io/>

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| epmd-edp | <SupportEPMD-EDP@epam.com> | <https://solutionshub.epam.com/solution/kuberocketci> |
| sergk |  | <https://github.com/SergK> |

## Source Code

* <https://github.com/epam/helm-helm-pipeline>

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| clusterName | string | `""` | Cluster name segment of portal links; defaults to the first label of dnsWildCard. |
| dnsWildCard | string | `"example.com"` | Cluster DNS wildcard; drives the portal links in every pipeline. |
| global.gerritSSHPort | string | `"30003"` | Gerrit SSH port; match the platform pipelines-library value. |
| podTemplate | list | `[]` | Specifies a Pod template to use as the basis for the configuration of the Pod that executes each Task. |
| portalHost | string | `""` | Portal ingress host override; defaults to krci-portal-<namespace>.<dnsWildCard>. |
