import canonicalLaneMathlib.AdmissibleClass
import canonicalLaneMathlib.SingularityDensity

namespace HautevilleHouse
namespace ContinuitySingularityInducedMeasuresCanonicalLaneLean

structure ContinuityProperty (M : MeasureSpacePackage) where
  density : DensityPackage M
  absolutelyContinuousPartContinuous : Prop
  singularPartContinuous : Prop
  transitionContinuous : Prop

structure ContinuityEvidence {M : MeasureSpacePackage} (C : ContinuityProperty M) where
  absolutelyContinuousPartContinuousClosed : C.absolutelyContinuousPartContinuous
  singularPartContinuousClosed : C.singularPartContinuous
  transitionContinuousClosed : C.transitionContinuous

def ContinuityClosed {M : MeasureSpacePackage} (C : ContinuityProperty M) : Prop :=
  C.absolutelyContinuousPartContinuous ∧ C.singularPartContinuous ∧ C.transitionContinuous

theorem continuity_closed_from_evidence {M : MeasureSpacePackage} (C : ContinuityProperty M)
    (E : ContinuityEvidence C) : ContinuityClosed C := by
  exact And.intro E.absolutelyContinuousPartContinuousClosed
    (And.intro E.singularPartContinuousClosed E.transitionContinuousClosed)

end ContinuitySingularityInducedMeasuresCanonicalLaneLean
end HautevilleHouse
