#!/bin/bash

# GO_EXAMPLE_COUNT=4
 
# message="Hello World"
# echo $message

# for number in {1..10}; do
#     echo $number
# done

# Node
cp ./node/prisma.yml ../../node/cli-app/prisma
cp ./node/prisma.yml ../../node/graphql/prisma
cp ./node/prisma.yml ../../node/graphql-auth/prisma
cp ./node/without-client/prisma.yml ../../node/graphql-schema-delegation/prisma
cp ./node/prisma.yml ../../node/graphql-subscriptions/prisma
cp ./node/prisma.yml ../../node/rest-express/prisma
cp ./node/prisma.yml ../../node/script/prisma

# TypeScript
cp ./typescript/prisma.yml ../../typescript/cli-app/prisma
cp ./typescript/prisma.yml ../../typescript/graphql/prisma
cp ./typescript/prisma.yml ../../typescript/graphql-auth/prisma
cp ./typescript/prisma.yml ../../typescript/graphql-schema-delegation/prisma
cp ./typescript/prisma.yml ../../typescript/graphql-subscriptions/prisma
cp ./typescript/prisma.yml ../../typescript/script/prisma

# Flow
cp ./flow/prisma.yml ../../flow/graphql/prisma
cp ./flow/prisma.yml ../../flow/script/prisma

# Go
cp ./go/prisma.yml ../../go/cli-app/prisma
cp ./go/prisma.yml ../../go/graphql/prisma
cp ./go/prisma.yml ../../go/http-mux/prisma
cp ./go/prisma.yml ../../go/rest-gin/prisma
cp ./go/prisma.yml ../../go/script/prisma