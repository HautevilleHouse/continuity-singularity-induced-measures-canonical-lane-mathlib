import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuitySingularityInducedMeasuresCanonicalLaneLean

structure SingularityTheoremPackage where
  singularityMeasure : SingularityMeasureStructure
  bridgeCondition : Prop
  gateCondition : Prop
  bridgeEvidence : bridgeCondition
  gateEvidence : gateCondition

def SingularityTheoremClosed (P : SingularityTheoremPackage) : Prop :=
  SingularityMeasureClosed P.singularityMeasure ∧ P.bridgeCondition ∧ P.gateCondition

theorem singularity_theorem_closed (P : SingularityTheoremPackage) :
    SingularityTheoremClosed P := by
  refine And.intro ?_ (And.intro P.bridgeEvidence P.gateEvidence)
  exact singularity_measure_closed_from_evidence P.singularityMeasure ⟨by trivial, by trivial⟩

end ContinuitySingularityInducedMeasuresCanonicalLaneLean
end HautevilleHouse