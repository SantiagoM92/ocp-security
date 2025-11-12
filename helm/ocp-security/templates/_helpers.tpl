{{- define "ocp-security.fullname" -}}
{{- if .Values.serviceAccount.name -}}
{{ .Values.serviceAccount.name | trunc 63 | trimSuffix "-" }}
{{- else -}}
{{ include "ocp-security.name" . }}
{{- end -}}
{{- end }}

{{- define "ocp-security.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}
