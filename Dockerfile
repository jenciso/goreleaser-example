FROM golang:1.23.3-alpine3.20 AS build

COPY goreleaser-example /app/

FROM scratch
ARG USER_UID=10001
USER ${USER_UID}
COPY --from=build --chmod=755 /app/goreleaser-example /goreleaser-example

ENTRYPOINT ["/goreleaser-example"]
