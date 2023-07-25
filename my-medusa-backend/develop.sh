#!/bin/bash

medusa migrations run

medusa run seed

medusa $1