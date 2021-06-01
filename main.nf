#!/usr/bin/env nextflow

params.str = 'Hello world!'

process parameterizedDocker {
    exec:
    println "parameterizedDocker"
}

process latestDocker {
    exec:
    println "latestDocker"
}

process versionedDocker {
    exec:
    println "versionedDocker"
}

process taglessDocker {
    exec:
    println "taglessDocker"
}

process digestDocker {
    exec:
    println "digestDocker"
}
