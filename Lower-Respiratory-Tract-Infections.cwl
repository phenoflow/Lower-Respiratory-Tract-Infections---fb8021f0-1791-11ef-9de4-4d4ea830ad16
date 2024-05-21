cwlVersion: v1.0
steps:
  read-potential-cases-disc:
    run: read-potential-cases-disc.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
      potentialCases:
        id: potentialCases
        source: potentialCases
  lower-respiratory-tract-infections-pneumonia---secondary:
    run: lower-respiratory-tract-infections-pneumonia---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-disc/output
  lower-respiratory-tract-infections-capsulati---secondary:
    run: lower-respiratory-tract-infections-capsulati---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: lower-respiratory-tract-infections-pneumonia---secondary/output
  lower-respiratory-tract-infections-classified---secondary:
    run: lower-respiratory-tract-infections-classified---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: lower-respiratory-tract-infections-capsulati---secondary/output
  pulmonary-lower-respiratory-tract-infections---secondary:
    run: pulmonary-lower-respiratory-tract-infections---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: lower-respiratory-tract-infections-classified---secondary/output
  lower-respiratory-tract-infections---secondary:
    run: lower-respiratory-tract-infections---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: pulmonary-lower-respiratory-tract-infections---secondary/output
  lower-respiratory-tract-infections-influenza---secondary:
    run: lower-respiratory-tract-infections-influenza---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: lower-respiratory-tract-infections---secondary/output
  lower-respiratory-tract-infections-organism---secondary:
    run: lower-respiratory-tract-infections-organism---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: lower-respiratory-tract-infections-influenza---secondary/output
  lower-respiratory-tract-infections-coccidioidomycosis---secondary:
    run: lower-respiratory-tract-infections-coccidioidomycosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: lower-respiratory-tract-infections-organism---secondary/output
  acute-lower-respiratory-tract-infections---secondary:
    run: acute-lower-respiratory-tract-infections---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: lower-respiratory-tract-infections-coccidioidomycosis---secondary/output
  lower-respiratory-tract-infections-pneumocystosis---secondary:
    run: lower-respiratory-tract-infections-pneumocystosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: acute-lower-respiratory-tract-infections---secondary/output
  lower-respiratory-tract-infections-blastomycosis---secondary:
    run: lower-respiratory-tract-infections-blastomycosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: lower-respiratory-tract-infections-pneumocystosis---secondary/output
  lower-respiratory-tract-infections-abscess---secondary:
    run: lower-respiratory-tract-infections-abscess---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: lower-respiratory-tract-infections-blastomycosis---secondary/output
  lower-respiratory-tract-infections-identified---secondary:
    run: lower-respiratory-tract-infections-identified---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: lower-respiratory-tract-infections-abscess---secondary/output
  lower-respiratory-tract-infections-histoplasmosis---secondary:
    run: lower-respiratory-tract-infections-histoplasmosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: lower-respiratory-tract-infections-identified---secondary/output
  lower-respiratory-tract-infections-aspergillosis---secondary:
    run: lower-respiratory-tract-infections-aspergillosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: lower-respiratory-tract-infections-histoplasmosis---secondary/output
  lower-respiratory-tract-infections-confirmed---secondary:
    run: lower-respiratory-tract-infections-confirmed---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: lower-respiratory-tract-infections-aspergillosis---secondary/output
  lower-respiratory-tract-infections-tuberculosis---secondary:
    run: lower-respiratory-tract-infections-tuberculosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: lower-respiratory-tract-infections-confirmed---secondary/output
  lower-respiratory-tract-infections-unspecified---secondary:
    run: lower-respiratory-tract-infections-unspecified---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: lower-respiratory-tract-infections-tuberculosis---secondary/output
  lower-respiratory-tract-infections-pyothorax---secondary:
    run: lower-respiratory-tract-infections-pyothorax---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: lower-respiratory-tract-infections-unspecified---secondary/output
  obstructive-lower-respiratory-tract-infections---secondary:
    run: obstructive-lower-respiratory-tract-infections---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: lower-respiratory-tract-infections-pyothorax---secondary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: obstructive-lower-respiratory-tract-infections---secondary/output
class: Workflow
inputs:
  potentialCases:
    id: potentialCases
    doc: Input of potential cases for processing
    type: File
  inputModule1:
    id: inputModule1
    doc: Python implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
