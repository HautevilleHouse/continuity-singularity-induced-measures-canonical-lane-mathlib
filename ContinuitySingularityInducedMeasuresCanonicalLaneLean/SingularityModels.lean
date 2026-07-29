import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuitySingularityInducedMeasuresCanonicalLaneLean

structure SingularityModelPackage (A : ContinuitySingularityAdmissibleClass) where
  blowupSequenceExists : Prop
  ancientSolutionLimit : Prop
  measureContinuityCondition : Prop
  singularityInducedMeasure : Prop

structure SingularityModelEvidence {A : ContinuitySingularityAdmissibleClass} (P : SingularityModelPackage A) where
  blowupSequenceExistsClosed : P.blowupSequenceExists
  ancientSolutionLimitClosed : P.ancientSolutionLimit
  measureContinuityConditionClosed : P.measureContinuityCondition
  singularityInducedMeasureClosed : P.singularityInducedMeasure

def SingularityModelClosed {A : ContinuitySingularityAdmissibleClass} (P : SingularityModelPackage A) : Prop :=
  P.blowupSequenceExists ∧ P.ancientSolutionLimit ∧ P.measureContinuityCondition ∧ P.singularityInducedMeasure

theorem singularity_model_closed_from_evidence {A : ContinuitySingularityAdmissibleClass} (P : SingularityModelPackage A) (E : SingularityModelEvidence P) : SingularityModelClosed P := by
  exact And.intro E.blowupSequenceExistsClosed
    (And.intro E.ancientSolutionLimitClosed
      (And.intro E.measureContinuityConditionClosed E.singularityInducedMeasureClosed))

end ContinuitySingularityInducedMeasuresCanonicalLaneLean
end HautevilleHouse