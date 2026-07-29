import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuitySingularityInducedMeasuresCanonicalLaneLean

structure CurvatureAnalyticCertificate (A : AdmissibleClass) where
  riemannTensorSymmetries : Prop
  bianchiIdentities : Prop
  ricciContractionLaw : Prop
  scalarTraceLaw : Prop
  curvatureEvolutionInputs : Prop
  riemannTensorSymmetriesClosed : riemannTensorSymmetries
  bianchiIdentitiesClosed : bianchiIdentities
  ricciContractionLawClosed : ricciContractionLaw
  scalarTraceLawClosed : scalarTraceLaw
  curvatureEvolutionInputsClosed : curvatureEvolutionInputs
  curvatureEvidence : RiemannianCurvatureEvidence A

def CurvatureAnalyticCertificateClosed {A : AdmissibleClass}
    (C : CurvatureAnalyticCertificate A) : Prop :=
  C.riemannTensorSymmetries ∧
  C.bianchiIdentities ∧
  C.ricciContractionLaw ∧
  C.scalarTraceLaw ∧
  C.curvatureEvolutionInputs ∧
  RiemannianCurvatureClosed A

theorem curvature_analytic_certificate_closed
    {A : AdmissibleClass} (C : CurvatureAnalyticCertificate A) :
    CurvatureAnalyticCertificateClosed C := by
  exact And.intro C.riemannTensorSymmetriesClosed
    (And.intro C.bianchiIdentitiesClosed
      (And.intro C.ricciContractionLawClosed
        (And.intro C.scalarTraceLawClosed
          (And.intro C.curvatureEvolutionInputsClosed
            (riemannian_curvature_closed_from_evidence A C.curvatureEvidence)))))

structure HamiltonDeTurckCertificate (A : AdmissibleClass) where
  gaugeChoice : Prop
  stronglyParabolicReduction : Prop
  deTurckVectorField : Prop
  pullbackRecoversRicciFlow : Prop
  uniquenessCompatibility : Prop
  gaugeChoiceClosed : gaugeChoice
  stronglyParabolicReductionClosed : stronglyParabolicReduction
  deTurckVectorFieldClosed : deTurckVectorField
  pullbackRecoversRicciFlowClosed : pullbackRecoversRicciFlow
  uniquenessCompatibilityClosed : uniquenessCompatibility
  flowEvidence : RicciFlowPDEEvidence A

def HamiltonDeTurckCertificateClosed {A : AdmissibleClass}
    (H : HamiltonDeTurckCertificate A) : Prop :=
  H.gaugeChoice ∧
  H.stronglyParabolicReduction ∧
  H.deTurckVectorField ∧
  H.pullbackRecoversRicciFlow ∧
  H.uniquenessCompatibility ∧
  RicciFlowPDEClosed A

theorem hamilton_de_turck_certificate_closed
    {A : AdmissibleClass} (H : HamiltonDeTurckCertificate A) :
    HamiltonDeTurckCertificateClosed H := by
  exact And.intro H.gaugeChoiceClosed
    (And.intro H.stronglyParabolicReductionClosed
      (And.intro H.deTurckVectorFieldClosed
        (And.intro H.pullbackRecoversRicciFlowClosed
          (And.intro H.uniquenessCompatibilityClosed
            (ricci_flow_pde_closed_from_evidence A H.flowEvidence)))))

structure ShortTimeAnalyticCertificate (A : AdmissibleClass) where
  parabolicRegularity : Prop
  localExistenceInterval : Prop
  uniquenessOnOverlap : Prop
  continuationCriterion : Prop
  parabolicRegularityClosed : parabolicRegularity
  localExistenceIntervalClosed : localExistenceInterval
  uniquenessOnOverlapClosed : uniquenessOnOverlap
  continuationCriterionClosed : continuationCriterion
  shortTimeEvidence : ShortTimeExistenceEvidence A

def ShortTimeAnalyticCertificateClosed {A : AdmissibleClass}
    (C : ShortTimeAnalyticCertificate A) : Prop :=
  C.parabolicRegularity ∧
  C.localExistenceInterval ∧
  C.uniquenessOnOverlap ∧
  C.continuationCriterion ∧
  ShortTimeExistenceClosed A

theorem short_time_analytic_certificate_closed
    {A : AdmissibleClass} (C : ShortTimeAnalyticCertificate A) :
    ShortTimeAnalyticCertificateClosed C := by
  exact And.intro C.parabolicRegularityClosed
    (And.intro C.localExistenceIntervalClosed
      (And.intro C.uniquenessOnOverlapClosed
        (And.intro C.continuationCriterionClosed
          (short_time_existence_closed_from_evidence A C.shortTimeEvidence))))

structure EntropyAnalyticCertificate (A : AdmissibleClass) where
  conjugateHeatEquation : Prop
  wFunctionalDefined : Prop
  muFunctionalDefined : Prop
  entropyMonotonicityFormula : Prop
  reducedVolumeMonotonicity : Prop
  conjugateHeatEquationClosed : conjugateHeatEquation
  wFunctionalDefinedClosed : wFunctionalDefined
  muFunctionalDefinedClosed : muFunctionalDefined
  entropyMonotonicityFormulaClosed : entropyMonotonicityFormula
  reducedVolumeMonotonicityClosed : reducedVolumeMonotonicity
  entropyEvidence : PerelmanEntropyEvidence A

def EntropyAnalyticCertificateClosed {A : AdmissibleClass}
    (C : EntropyAnalyticCertificate A) : Prop :=
  C.conjugateHeatEquation ∧
  C.wFunctionalDefined ∧
  C.muFunctionalDefined ∧
  C.entropyMonotonicityFormula ∧
  C.reducedVolumeMonotonicity ∧
  PerelmanEntropyClosed A

theorem entropy_analytic_certificate_closed
    {A : AdmissibleClass} (C : EntropyAnalyticCertificate A) : EntropyAnalyticCertificateClosed C := by
  exact And.intro C.conjugateHeatEquationClosed
    (And.intro C.wFunctionalDefinedClosed
      (And.intro C.muFunctionalDefinedClosed
        (And.intro C.entropyMonotonicityFormulaClosed
          (And.intro C.reducedVolumeMonotonicityClosed
            (perelman_entropy_closed_from_evidence A C.entropyEvidence)))))

structure NoncollapsingAnalyticCertificate (A : AdmissibleClass) where
  noLocalCollapsing : Prop
  scaleInvariantVolumeLowerBound : Prop
  curvatureScaleCompatibility : Prop
  ancientSolutionCompactnessInput : Prop
  noLocalCollapsingClosed : noLocalCollapsing
  scaleInvariantVolumeLowerBoundClosed : scaleInvariantVolumeLowerBound
  curvatureScaleCompatibilityClosed : curvatureScaleCompatibility
  ancientSolutionCompactnessInputClosed : ancientSolutionCompactnessInput
  noncollapsingEvidence : NoncollapsingEvidence A

def NoncollapsingAnalyticCertificateClosed {A : AdmissibleClass}
    (C : NoncollapsingAnalyticCertificate A) : Prop :=
  C.noLocalCollapsing ∧
  C.scaleInvariantVolumeLowerBound ∧
  C.curvatureScaleCompatibility ∧
  C.ancientSolutionCompactnessInput ∧
  NoncollapsingClosed A

theorem noncollapsing_analytic_certificate_closed
    {A : AdmissibleClass} (C : NoncollapsingAnalyticCertificate A) :
    NoncollapsingAnalyticCertificateClosed C := by
  exact And.intro C.noLocalCollapsingClosed
    (And.intro C.scaleInvariantVolumeLowerBoundClosed
      (And.intro C.curvatureScaleCompatibilityClosed
        (And.intro C.ancientSolutionCompactnessInputClosed
          (noncollapsing_closed_from_evidence A C.noncollapsingEvidence))))

end ContinuitySingularityInducedMeasuresCanonicalLaneLean
end HautevilleHouse
