"Evaluate the following (with correct directory path) to produce metacello.json file:

  MetacelloFileTreeConstructor writeJsonFor:'/foos1/users/dhenrich/smalltalk/experiment'

"
^MetacelloFileTreeConstructor extractMethodSectionsForSpecBlock: [:spec |
      "Baseline spec"
      spec
          for: #'common'
          do: [
              spec package: 'GoferBar'.
              spec package: 'GoferFoo' with: [ spec requires: 'GoferBar' ].
              spec group: 'default' with: #('GoferBar' 'GoferFoo') ].
      spec
          for: #'pharo'
          do: [
              spec package: 'GoferPharo' with: [ spec requires: 'GoferBar' ].
              spec group: 'default' with: #('GoferPharo') ]. ].

