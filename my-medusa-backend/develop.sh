#!/bin/bash

medusa migrations run

medusa seed -f ./data/seed.json

medusa $1