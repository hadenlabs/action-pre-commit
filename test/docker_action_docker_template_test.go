package test

import (
	"testing"

	"github.com/gruntwork-io/terratest/modules/docker"
	"github.com/stretchr/testify/assert"
)

func TestPreCommitHooksBuildSuccess(t *testing.T) {
	tag := "hadenlabs/action-pre-commit:latest"
	otherOptions := []string{}

	buildOptions := &docker.BuildOptions{
		Tags:         []string{tag},
		OtherOptions: otherOptions,
	}

	docker.Build(t, "../", buildOptions)
	opts := &docker.RunOptions{
		Command: []string{
			"-V",
		},
	}
	output := docker.Run(t, tag, opts)
	assert.NotEmpty(t, output, output)
}
