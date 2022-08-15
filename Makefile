TAG := v0.1.0

publish:
	acorn build \
		--tag docker.io/dukeman/acorn-scratch:$(TAG) \
		--platform linux/amd64,linux/arm64 \
		--push \
		.

release: publish
	kubectl kustomize | kubectl apply -f -
