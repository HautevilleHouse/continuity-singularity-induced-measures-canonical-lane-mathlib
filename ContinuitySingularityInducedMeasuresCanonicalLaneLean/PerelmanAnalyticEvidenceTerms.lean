import ContinuitySingularityInducedMeasuresCanonicalLaneLean.PerelmanAnalyticProof

namespace HautevilleHouse
namespace ContinuitySingularityInducedMeasuresCanonicalLaneLean

structure CurvatureAnalyticEvidenceTerms {A : AdmissibleClass}
    (C : CurvatureAnalyticCertificate A) where
  riemannTensorSymmetries : C.riemannTensorSymmetries
  bianchiIdentities : C.bianchiIdentities
  ricciContractionLaw : C.ricciContractionLaw
  scalarTraceLaw : C.scalarTraceLaw
  curvatureEvolutionInputs : C.curvatureEvolutionInputs
  curvatureClosed : RiemannianCurvatureClosed A

def CurvatureAnalyticCertificate.evidenceTerms {A : AdmissibleClass}
    (C : CurvatureAnalyticCertificate A) : CurvatureAnalyticEvidenceTerms C :=
  {
    riemannTensorSymmetries := C.riemannTensorSymmetriesClosed
    bianchiIdentities := C.bianchiIdentitiesClosed
    ricciContractionLaw := C.ricciContractionLawClosed
    scalarTraceLaw := C.scalarTraceLawClosed
    curvatureEvolutionInputs := C.curvatureEvolutionInputsClosed
    curvatureClosed := riemannian_curvature_closed_from_evidence A C.curvatureEvidence
  }

structure HamiltonDeTurckEvidenceTerms {A : AdmissibleClass}
    (H : HamiltonDeTurckCertificate A) where
  gaugeChoice : H.gaugeChoice
  stronglyParabolicReduction : H.stronglyParabolicReduction
  deTurckVectorField : H.deTurckVectorField
  pullbackRecoversRicciFlow : H.pullbackRecoversRicciFlow
  uniquenessCompatibility : H.uniquenessCompatibility
  flowClosed : RicciFlowPDEClosed A

def HamiltonDeTurckCertificate.evidenceTerms {A : AdmissibleClass}
    (H : HamiltonDeTurckCertificate A) : HamiltonDeTurckEvidenceTerms H :=
  {
    gaugeChoice := H.gaugeChoiceClosed
    stronglyParabolicReduction := H.stronglyParabolicReductionClosed
    deTurckVectorField := H.deTurckVectorFieldClosed
    pullbackRecoversRicciFlow := H.pullbackRecoversRicciFlowClosed
    uniquenessCompatibility := H.uniquenessCompatibilityClosed
    flowClosed := ricci_flow_pde_closed_from_evidence A H.flowEvidence
  }

structure ShortTimeEvidenceTerms {A : AdmissibleClass}
    (C : ShortTimeAnalyticCertificate A) where
  parabolicRegularity : C.parabolicRegularity
  localExistenceInterval : C.localExistenceInterval
  uniquenessOnOverlap : C.uniquenessOnOverlap
  continuationCriterion : C.continuationCriterion
  shortTimeClosed : ShortTimeExistenceClosed A

def ShortTimeAnalyticCertificate.evidenceTerms {A : AdmissibleClass}
    (C : ShortTimeAnalyticCertificate A) : ShortTimeEvidenceTerms C :=
  {
    parabolicRegularity := C.parabolicRegularityClosed
    localExistenceInterval := C.localExistenceIntervalClosed
    uniquenessOnOverlap := C.uniquenessOnOverlapClosed
    continuationCriterion := C.continuationCriterionClosed
    shortTimeClosed := short_time_existence_closed_from_evidence A C.shortTimeEvidence
  }

structure EntropyEvidenceTerms {A : AdmissibleClass}
    (C : EntropyAnalyticCertificate A) where
  conjugateHeatEquation : C.conjugateHeatEquation
  wFunctionalDefined : C.wFunctionalDefined
  muFunctionalDefined : C.muFunctionalDefined
  entropyMonotonicityFormula : C.entropyMonotonicityFormula
  reducedVolumeMonotonicity : C.reducedVolumeMonotonicity
  entropyClosed : PerelmanEntropyClosed A

def EntropyAnalyticCertificate.evidenceTerms {A : AdmissibleClass}
    (C : EntropyAnalyticCertificate A) : EntropyEvidenceTerms C :=
  {
    conjugateHeatEquation := C.conjugateHeatEquationClosed
    wFunctionalDefined := C.wFunctionalDefinedClosed
    muFunctionalDefined := C.muFunctionalDefinedClosed
    entropyMonotonicityFormula := C.entropyMonotonicityFormulaClosed
    reducedVolumeMonotonicity := C.reducedVolumeMonotonicityClosed
    entropyClosed := perelman_entropy_closed_from_evidence A C.entropyEvidence
  }

structure NoncollapsingEvidenceTerms {A : AdmissibleClass}
    (C : NoncollapsingAnalyticCertificate A) where
  noLocalCollapsing : C.noLocalCollapsing
  scaleInvariantVolumeLowerBound : C.scaleInvariantVolumeLowerBound
  curvatureScaleCompatibility : C.curvatureScaleCompatibility
  ancientSolutionCompactnessInput : C.ancientSolutionCompactnessInput
  noncollapsingClosed : NoncollapsingClosed A

def NoncollapsingAnalyticCertificate.evidenceTerms {A : AdmissibleClass}
    (C : NoncollapsingAnalyticCertificate A) : NoncollapsingEvidenceTerms C :=
  {
    noLocalCollapsing := C.noLocalCollapsingClosed
    scaleInvariantVolumeLowerBound := C.scaleInvariantVolumeLowerBoundClosed
    curvatureScaleCompatibility := C.curvatureScaleCompatibilityClosed
    ancientSolutionCompactnessInput := C.ancientSolutionCompactnessInputClosed
    noncollapsingClosed := noncollapsing_closed_from_evidence A C.noncollapsingEvidence
  }

end ContinuitySingularityInducedMeasuresCanonicalLaneLean
end HautevilleHouse
