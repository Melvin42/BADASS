#!/bin/bash
docker build -t router -f router.Dockerfile . ;
docker build -t alpine -f host.Dockerfile .
