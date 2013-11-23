baselines
baseline: spec
  <baseline>
  spec
    for: #'common'
    do: [ 
      spec
        baseline: 'Alternate'
          with: [ spec repository: 'github://dalehenrich/alternate:otto/repository' ];
        import: 'Alternate' provides: #('Alternate Core' 'Alternate Tests');
        yourself.
      spec
        package: 'Example-Core' with: [ spec requires: #('Alternate Core') ];
        package: 'Example-Tests' with: [ spec requires: #('Alternate Tests') ];
        yourself.
      spec
        group: 'default' with: #('Core');
        group: 'Core' with: #('Example-Core');
        group: 'Tests' with: #('Example-Tests');
        group: 'Example Core' with: #('Core');
        group: 'Example Tests' with: #('Tests');
        yourself ]