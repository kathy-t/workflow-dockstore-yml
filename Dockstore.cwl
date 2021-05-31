
cwlVersion: v1.0
class: Workflow
doc: "This is a description"

dct:creator:
  foaf:name: Test User
  foaf:mbox: mailto:test@dockstore.org

inputs:
  input_file: File
outputs:
  output_file:
    type: File
    outputSource: md5sum/output_file
steps:
  md5sum:
    run: dockstore-tool-md5sum.cwl
    in:
      input_file: input_file
    out: [output_file]
  latestDocker:
    run:
      cwlVersion: v1.1
      class: CommandLineTool
      baseCommand: echo
      requirements:
      - class: DockerRequirement
        dockerPull: katetran/dockstore-tool-helloworld:latest
      inputs:
        message:
          type: string
          inputBinding:
            position: 1
      outputs: []
  taglessDocker:
    run:
      cwlVersion: v1.0
      class: CommandLineTool
      baseCommand: echo
      requirements:
      - class: DockerRequirement
        dockerPull: katetran/dockstore-tool-helloworld
      inputs:
        message:
          type: string
          inputBinding:
            position: 1
      outputs: []
  versionedDocker:
    run:
      cwlVersion: v1.0
      class: CommandLineTool
      baseCommand: echo
      requirements:
      - class: DockerRequirement
        dockerPull: katetran/dockstore-tool-helloworld:1
      inputs:
        message:
          type: string
          inputBinding:
            position: 1
      outputs: []
  latestDocker:
    run:
      cwlVersion: v1.1
      class: CommandLineTool
      baseCommand: echo
      requirements:
      - class: DockerRequirement
        dockerPull: katetran/dockstore-tool-helloworld@sha256:0484449b6bdd6e39a34f630a86e18253f6b88899d64faa652c926e90001c84d4
      inputs:
        message:
          type: string
          inputBinding:
            position: 1
      outputs: []
