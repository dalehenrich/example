baselines
baseline: spec
  <baseline>
  spec
    for: #'common'
    do: [ 
      spec
        configuration: 'External'
          with: [ 
              spec
                version: #'otto';
                loads: 'External Core';
                repository: 'http://ss3.gemstone.com/ss/external' ];
        baseline: 'Sample'
          with: [ spec repository: 'github://dalehenrich/sample:otto/repository' ];
        import: 'Sample' provides: #('Sample Core' 'Sample Tests');
        yourself.
      spec
        package: 'Example-Core'
          with: [ spec requires: #('Sample Core' 'External') ];
        package: 'Example-Tests'
          with: [ spec requires: #('Example-Core' 'Sample Tests') ];
        yourself.
      spec
        group: 'default' with: #('Core');
        group: 'Core' with: #('Example-Core');
        group: 'Tests' with: #('Example-Tests');
        group: 'Example Core' with: #('Core');
        group: 'Example Tests' with: #('Tests');
        yourself ]