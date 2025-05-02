#!/usr/bin/env bash
jq -r '.library.categories[].books[] | select(.tags[] | test("philosophy|cosmology")) | "\(.title) by \(.author)"' scripts/library.json
