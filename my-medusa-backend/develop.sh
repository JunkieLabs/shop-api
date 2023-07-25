#!/bin/bash

medusa migrations run

# medusa seed -f ./data/seed.json
npm run seed

medusa $1