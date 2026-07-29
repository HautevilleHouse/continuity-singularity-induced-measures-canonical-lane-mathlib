import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuitySingularityInducedMeasuresCanonicalLaneLean

structure ContinuitySingularitySpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure ContinuitySingularityAdmittedObject where
  space : ContinuitySingularitySpace
  measure : carrier → ℝ
  singularitySet : Set carrier
  continuityCondition : Prop
  measureAbsoluteContinuity : Prop
  conclusion : continuityCondition ∧ measureAbsoluteContinuity

def ContinuitySingularityWitnessClosed (O : ContinuitySingularityAdmittedObject) : Prop :=
  O.continuityCondition ∧ O.measureAbsoluteContinuity

end ContinuitySingularityInducedMeasuresCanonicalLaneLean
end HautevilleHouse