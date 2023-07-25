#!/bin/bash

# medusa seed -f ./data/seed.json

# npx @medusajs/medusa-cli@latest seed -f ./data/seed.json

medusa migrations run

# npm run seed

medusa $1