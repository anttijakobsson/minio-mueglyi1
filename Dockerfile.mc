FROM quay.io/minio/aistor/mc:RELEASE.2026-09-06T02-44-40Z

ENTRYPOINT ["/bin/sh", "-c"]

CMD ["mc alias set render http://$MINIO_HOST:9000 \"$MINIO_ROOT_USER\" \"$MINIO_ROOT_PASSWORD\" && mc anonymous set download render/ryhti-kmtk && mc anonymous get render/ryhti-kmtk"]
