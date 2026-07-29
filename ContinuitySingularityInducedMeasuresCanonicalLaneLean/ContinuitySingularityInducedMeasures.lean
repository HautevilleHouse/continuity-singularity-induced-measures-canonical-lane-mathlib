import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuitySingularityInducedMeasuresCanonicalLaneLean

structure MeasureClass (M : Type u) [TopologicalSpace M] [MeasurableSpace M] where
  baseMeasure : Measure M
  singularPart : Measure M
  continuousPart : Measure M
  singularityData : Prop

structure SingularityInducedMeasure (M : Type u) [TopologicalSpace M] [MeasurableSpace M] extends MeasureClass M where
  absolutelyContinuous : baseMeasure ≪ continuousPart
  singularDisjoint : singularPart ⟂ continuousPart

end ContinuitySingularityInducedMeasuresCanonicalLaneLean
end HautevilleHouse