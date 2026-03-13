#!/bin/bash

echo "Deleting completed pods..."

kubectl delete pod \
--field-selector=status.phase=Succeeded

echo "Deleting failed pods..."

kubectl delete pod \
--field-selector=status.phase=Failed
