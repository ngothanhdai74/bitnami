{{/* vim: set filetype=mustache: */}}

{{/*
Create the name of the controller service account to use
*/}}
{{- define "metallb.controllerServiceAccountName" -}}
{{ include "common.secrets.name" (dict "existingSecret" .Values.controller.serviceAccount.name "defaultNameSuffix" "controller" "context" $) }}
{{- end -}}

{{/*
Create the name of the speaker service account to use
*/}}
{{- define "metallb.speakerServiceAccountName" -}}
{{ include "common.secrets.name" (dict "existingSecret" .Values.speaker.serviceAccount.name "defaultNameSuffix" "speaker" "context" $) }}
{{- end -}}

{{/*
Create the name of the settings ConfigMap to use.
*/}}
{{- define "metallb.configMapName" -}}
{{ include "common.secrets.name" (dict "existingSecret" .Values.existingConfigMap "defaultNameSuffix" "config" "context" $) }}
{{- end -}}

{{/*
Create the name of the member Secret to use.
*/}}
{{- define "metallb.speaker.secretName" -}}
{{ include "common.secrets.name" (dict "existingSecret" .Values.speaker.secretName "defaultNameSuffix" "memberlist" "context" $) }}
{{- end -}}

{{/*
Create the key of the member Secret to use.
*/}}
{{- define "metallb.speaker.secretKey" -}}
{{ include "common.secrets.key" (dict "existingSecret" .Values.speaker.secretKey "key" "secretkey") }}
{{- end -}}

