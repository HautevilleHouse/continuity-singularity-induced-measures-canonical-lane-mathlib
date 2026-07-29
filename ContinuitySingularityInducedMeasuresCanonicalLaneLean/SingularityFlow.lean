import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ContinuitySingularityInducedMeasuresCanonicalLaneLean.SingularityDecomposition

namespace HautevilleHouse
namespace ContinuitySingularityInducedMeasuresCanonicalLaneLean

structure SingularityFlowPackage {M : Type u} [TopologicalSpace M] [MeasurableSpace M]
    (P : SingularityDecompositionPackage M) where
  timeParameter : Type v
  flowMap : timeParameter → M → M
  flowMeasurable : ∀ t, Measurable (flowMap t)
  flowContinuous : ∀ t, Continuous (flowMap t)
  flowGroupProperty : ∀ t s, flowMap (t+s) = flowMap t ∘ flowMap s
  measurePreserving : ∀ t, MeasurePreserving (flowMap t)

structure SingularityFlowEvidence {M : Type u} [TopologicalSpace M] [MeasurableSpace M]
    {P : SingularityDecompositionPackage M} (F : SingularityFlowPackage P) where
  flowGroupPropertyClosed : F.flowGroupProperty
  measurePreservingClosed : F.measurePreserving

def SingularityFlowClosed {M : Type u} [TopologicalSpace M] [MeasurableSpace M]
    {P : SingularityDecompositionPackage M} (F : SingularityFlowPackage P) : Prop :=
  F.flowGroupProperty ∧ F.measurePreserving

theorem singularity_flow_closed_from_evidence
    {M : Type u} [TopologicalSpace M] [MeasurableSpace M]
    {P : SingularityDecompositionPackage M} (F : SingularityFlowPackage P)
    (E : SingularityFlowEvidence F) : SingularityFlowClosed F := by
  exact And.intro E.flowGroupPropertyClosed E.measurePreservingClosed

end ContinuitySingularityInducedMeasuresCanonicalLaneLean
end HautevilleHouse