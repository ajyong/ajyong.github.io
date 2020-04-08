.DEFAULT_GOAL := help

## This Makefile is ONLY USED if you are not running in a remote container.

docker-run-prefix := docker run --rm -ti
docker-image := dragas/nikola:alpine
demo-path 	  := $(PWD)/demo
project-path  := $(PWD)/website

.PHONY		  : help
help:  			## Show this help menu
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

init: 			## Initialize a Nikola web project using its wizard (creates a website folder)
	$(docker-run-prefix) -v $(PWD):/nikola $(docker-image) nikola init website

build: 			## Build your Nikola web project
	$(docker-run-prefix) -v $(project-path):/nikola $(docker-image) nikola build

auto:  			## Start the autoreloading development server for your web project
	$(docker-run-prefix) -p 8000:8000 -d -v $(project-path):/nikola $(docker-image) nikola auto -a 0.0.0.0

init-demo: 		## Quietly initializes a Nikola web project in Demo mode (creates a demo folder)
	$(docker-run-prefix) -v $(PWD):/nikola $(docker-image) nikola init --demo --quiet demo

build-demo: 	## Build the demo Nikola web project
	$(docker-run-prefix) -v $(demo-path):/nikola $(docker-image) nikola build

auto-demo: 	## Start the autoreloading development server for the demo project
	$(docker-run-prefix) -p 8000:8000 -d -v $(demo-path):/nikola $(docker-image) nikola auto -a 0.0.0.0

newpost-demo:   ## Create a new blog post in the Demo project
	$(docker-run-prefix) -v $(demo-path):/nikola $(docker-image) nikola new_post

nuke-demo:		## Removes the demo folder
	rm -rf ./demo
