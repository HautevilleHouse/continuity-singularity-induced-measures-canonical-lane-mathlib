import canonicalLaneMathlib.AdmissibleClass
import canonicalLaneMathlib.ContinuityProperties

namespace HautevilleHouse
namespace ContinuitySingularityInducedMeasuresCanonicalLaneLean

structure EndpointPackagement {M : MeasureSpacePackage} (C : ContinuityProperty M) where
  endpointMeasure : MeasureTheory.Measure M.baseSpace
  endpointContinuity : Prop
  endpointSingularity : Prop
  endpointMeasuresConverge : Prop

structure EndpointEvidence {M : MeasureSpacePackage} {C : ContinuityProperty M}
    (E : EndpointPackagement C) where
  endpointContinuityClosed : E.endpointContinuity
  endpointSingularityClosed : E.endpointSingularity
  endpointMeasuresConvergeClosed : E.endpointMeasuresConverge

def EndpointClassificationClosed {M : MeasureSpacePackage} {C : ContinuityProperty M}
    (E : EndpointPackagement C) : Prop :=
  E.endpointContinuity ∧ E.endpointSingularity ∧ E.endpointMeasuresConverge

theorem endpoint_classification_closed_from_evidence {M : MeasureSpacePackage}
    {C : ContinuityProperty M} (Ep : EndpointPackagement C) (Ev : EndpointEvidence Ep) :
    EndpointClassificationClosed Ep := by
  exact And.intro Ev.endpointContinuityClosed
    (And.intro Ev.endpointSingularityClosed Ev.endpointMeasuresConvergeClosed)

end ContinuitySingularityInducedMeasuresCanonicalLaneLean
end HautevilleHouse
