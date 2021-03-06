#! /bin/bash
set -e

echo $CIRCLE_TAG

if [[ $CIRCLE_TAG == *"next"* ]]; then
  echo "pre release - releasing to dist tag next"
  yarn publish --non-interactive --dist-tag next --access public
else
  echo "normal release - releasing to dist tag latest"
  yarn publish --non-interactive --access public
fi
