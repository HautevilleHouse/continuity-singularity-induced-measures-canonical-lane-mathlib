import canonicalLaneMathlib.AdmissibleClass
import Mathlib.MeasureTheory.MeasureSpace

namespace HautevilleHouse
namespace ContinuitySingularityInducedMeasuresCanonicalLaneLean

structure MeasureSpacePackage where
  baseSpace : Type u
  sigmaAlgebra : MeasurableSpace baseSpace
  referenceMeasure : MeasureTheory.Measure baseSpace
  inducedMeasure : MeasureTheory.Measure baseSpace
  absoluteContinuity : inducedMeasure ≪ referenceMeasure
  singularityCandidate : Set baseSpace
  singularComponent : MeasureTheory.Measure baseSpace
  lebesgueDecomposition : referenceMeasure = inducedMeasure + singularComponent

structure MeasureSpaceEvidence (M : MeasureSpacePackage) where
  absoluteContinuityClosed : M.absoluteContinuity
  lebesgueDecompositionClosed : M.lebesgueDecomposition

def MeasureSpaceClosed (M : MeasureSpacePackage) : Prop :=
  M.absoluteContinuity ∧ M.lebesgueDecomposition

theorem measure_space_closed_from_evidence (M : MeasureSpacePackage)
    (E : MeasureSpaceEvidence M) : MeasureSpaceClosed M := by
  exact And.intro E.absoluteContinuityClosed E.lebesgueDecompositionClosed

end ContinuitySingularityInducedMeasuresCanonicalLaneLean
end HautevilleHouse
