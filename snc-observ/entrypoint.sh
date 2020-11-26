#!/bin/bash

yq delete test.data stats[*].attributes.annotations


yq d test.data stats[*].attributes.annotations | yq d - stats[*].attributes.id | yq d - stats[*].attributes.metadata | yq d - stats[*].*.timestamp
