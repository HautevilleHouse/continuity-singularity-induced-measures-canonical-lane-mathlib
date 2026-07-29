import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ContinuitySingularityInducedMeasuresCanonicalLaneLean.ContinuitySingularityInducedMeasures

namespace HautevilleHouse
namespace ContinuitySingularityInducedMeasuresCanonicalLaneLean

structure SingularityDecompositionPackage (M : Type u) [TopologicalSpace M] [MeasurableSpace M] where
  measureClass : MeasureClass M
  lebesgueDecomposition : Prop
  radonNikodymDerivative : (M → ℝ) 
  derivativeIntegrable : Prop
  decompositionUnique : Prop

structure SingularityDecompositionEvidence {M : Type u} [TopologicalSpace M] [MeasurableSpace M]
    (P : SingularityDecompositionPackage M) where
  lebesgueDecompositionClosed : P.lebesgueDecomposition
  derivativeIntegrableClosed : P.derivativeIntegrable
  decompositionUniqueClosed : P.decompositionUnique

def SingularityDecompositionClosed {M : Type u} [TopologicalSpace M] [MeasurableSpace M]
    (P : SingularityDecompositionPackage M) : Prop :=
  P.lebesgueDecomposition ∧ P.derivativeIntegrable ∧ P.decompositionUnique

theorem singularity_decomposition_closed_from_evidence
    {M : Type u} [TopologicalSpace M] [MeasurableSpace M]
    (P : SingularityDecompositionPackage M) (E : SingularityDecompositionEvidence P) :
    SingularityDecompositionClosed P := by
  exact And.intro E.lebesgueDecompositionClosed
    (And.intro E.derivativeIntegrableClosed E.decompositionUniqueClosed)

end ContinuitySingularityInducedMeasuresCanonicalLaneLean
end HautevilleHouse