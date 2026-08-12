{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "edp-tekton.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "edp-tekton.labels" -}}
helm.sh/chart: {{ include "edp-tekton.chart" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

# Wildcard shared by both content sets (scaffold uses .Values.dnsWildCard,
# legacy samples use .Values.global.dnsWildCard).
{{- define "custom-tekton.dnsWildCard" -}}
{{- .Values.dnsWildCard | default ((.Values.global | default dict).dnsWildCard) -}}
{{- end -}}

# Host of the portal; mirrors edp-tekton pipelines-library. Override
# .Values.portalHost when the portal ingress uses a custom host.
{{- define "edp-tekton.portalHost" -}}
{{- .Values.portalHost | default (printf "krci-portal-%s.%s" $.Release.Namespace (include "custom-tekton.dnsWildCard" .)) -}}
{{- end -}}

# Base URL of the portal PipelineRun details pages; single source of truth,
# mirrors edp-tekton pipelines-library.
{{- define "edp-tekton.portalBaseUrl" -}}
https://{{ include "edp-tekton.portalHost" . }}/c/{{ $.Values.clusterName | default (include "custom-tekton.dnsWildCard" . | splitList "." | first) }}/cicd/pipelineruns
{{- end -}}
