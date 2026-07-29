import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuitySingularityInducedMeasuresCanonicalLaneLean

structure ContinuityFunction (M : Type u) [TopologicalSpace M] [MeasurableSpace M] where
  f : M → ℝ
  measurable : Measurable f
  continuitySet : Set M
  continuitySetMeasurable : MeasurableSet continuitySet
  continuousOn : ContinuousOn f continuitySet

structure AbsolutelyContinuousMeasure {M : Type u} [TopologicalSpace M] [MeasurableSpace M]
    (μ ν : Measure M) where
  absolutelyContinuous : μ ≪ ν

theorem absolutely_continuous_iff_density (μ ν : Measure M) [SigmaFinite ν] :
    μ ≪ ν ↔ ∃ (f : M → ℝ), (∀ s, μ s = ∫ x in s, f x ∂ν) := by
  sorry

end ContinuitySingularityInducedMeasuresCanonicalLaneLean
end HautevilleHouse