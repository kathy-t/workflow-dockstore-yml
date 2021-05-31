version 1.0

workflow myWorkflow {
    String? docker_image   = "quay.io/ucsc_cgl/verifybamid:1.3.0"

    call taglessDocker
    call latestDocker
    call parmeterizedDocker
    call versionedDocker
    call digestDocker
}

task taglessDocker {
    command {
        echo "hello world"
    }
    output {
        String out = read_string(stdout())
    }
    runtime {
        docker: "katetran/dockstore-tool-helloworld"
    }
}

task parmeterizedDocker {
    input {
        String docker_image
    }
    command {
        echo "hello world"
    }
    runtime {
        docker: docker_image
    }
}

task latestDocker {
    command {
        echo "hello world"
    }
    runtime {
        docker: "quay.io/kathy_t/dockstore-tool-helloworld:latest"
    }
}

task versionedDocker {
    command {
        echo "hello world"
    }
    runtime {
        docker: "katetran/dockstore-tool-helloworld:1"
    }
}

task digestDocker {
    command {
        echo "hello world"
    }
    runtime {
        docker: "katetran/dockstore-tool-helloworld@sha256:0484449b6bdd6e39a34f630a86e18253f6b88899d64faa652c926e90001c84d4"
    }
}
