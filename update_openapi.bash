#!/bin/bash

if ! command -v jq >/dev/null 2>&1 ; then
    echo "'jq' not found, please install it first"
    exit 1
fi

if ! command -v curl >/dev/null 2>&1 ; then
    echo "'curl' not found, please install it first"
    exit 1
fi

# Update OpenAPI for HTTP Gateway
curl https://http-gateway.vatis.tech/api-docs | \
  jq '.components.schemas.ErrorResponse.properties.nestedErrors.items = {"type": "object"} | .servers = [{"url": "https://http-gateway.vatis.tech", "description": "Default server"}]' \
  > api-reference/openapi/http-gateway.json

# Update OpenAPI for Stream Configuration Service
curl https://stream-configuration-service.vatis.tech/api-docs | \
  jq '.components.schemas.ErrorResponse.properties.nestedErrors.items = {"type": "object"} | .servers = [{"url": "https://stream-configuration-service.vatis.tech", "description": "Default server"}]' \
  > api-reference/openapi/stream-configuration-service.json

# Update OpenAPI for Stream Service
curl https://stream-service.vatis.tech/api-docs | \
  jq '.components.schemas.ErrorResponse.properties.nestedErrors.items = {"type": "object"} | .servers = [{"url": "https://stream-service.vatis.tech", "description": "Default server"}]' \
  > api-reference/openapi/stream-service.json

# Update OpenAPI for Egress Service
curl https://egress-service.vatis.tech/api-docs | \
  jq '.components.schemas.ErrorResponse.properties.nestedErrors.items = {"type": "object"} | .servers = [{"url": "https://egress-service.vatis.tech", "description": "Default server"}]' \
  > api-reference/openapi/egress-service.json

# Update OpenAPI for Notification Service
curl https://notification-service.vatis.tech/api-docs | \
  jq '.components.schemas.ErrorResponse.properties.nestedErrors.items = {"type": "object"} | .servers = [{"url": "https://notification-service.vatis.tech", "description": "Default server"}]' \
  > api-reference/openapi/notification-service.json

# Update OpenAPI for Export Service
curl https://export-service.vatis.tech/api-docs | \
  jq '.components.schemas.ErrorResponse.properties.nestedErrors.items = {"type": "object"} | .servers = [{"url": "https://export-service.vatis.tech", "description": "Default server"}]' \
  > api-reference/openapi/export-service.json

# Update OpenAPI for Export Service
curl https://usage-service.vatis.tech/api-docs | \
  jq '.components.schemas.ErrorResponse.properties.nestedErrors.items = {"type": "object"} | .servers = [{"url": "https://usage-service.vatis.tech", "description": "Default server"}]' \
  > api-reference/openapi/usage-service.json
