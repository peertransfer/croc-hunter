#!/bin/bash

cat > croc-hunter-controller.json <<EOF
{
  "kind": "ReplicationController",
  "apiVersion": "v1beta3",
  "metadata": {
    "name": "croc-hunter",
    "labels": {
      "name": "croc-hunter"
    }
  },
  "spec": {
    "replicas": 3,
    "selector": {
      "name": "croc-hunter"
    },
    "template": {
      "metadata": {
        "labels": {
          "name": "croc-hunter",
          "deployment": "${WERCKER_GIT_COMMIT}"
        }
      },
      "spec": {
        "containers": [
          {
            "imagePullPolicy": "Always",
            "image": "quay.io/flywire/croc-hunter:${WERCKER_GIT_COMMIT}",
            "name": "croc-hunter",
            "ports": [
              {
                "name": "http-server",
                "containerPort": 8080,
                "protocol": "TCP"
              }
            ]
          }
        ]
      }
    }
  }
}
EOF
