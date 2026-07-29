import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuitySingularityInducedMeasuresCanonicalLaneLean

structure MeasureContinuityPackage (A : ContinuitySingularityAdmissibleClass) where
  measureFamily : Type
  continuityProperty : Prop
  singularityInduced : Prop
  endpointMeasure : Prop

structure MeasureContinuityEvidence {A : ContinuitySingularityAdmissibleClass} (P : MeasureContinuityPackage A) where
  continuityPropertyClosed : P.continuityProperty
  singularityInducedClosed : P.singularityInduced
  endpointMeasureClosed : P.endpointMeasure

def MeasureContinuityClosed {A : ContinuitySingularityAdmissibleClass} (P : MeasureContinuityPackage A) : Prop :=
  P.continuityProperty ∧ P.singularityInduced ∧ P.endpointMeasure

theorem measure_continuity_closed_from_evidence {A : ContinuitySingularityAdmissibleClass} (P : MeasureContinuityPackage A) (E : MeasureContinuityEvidence P) : MeasureContinuityClosed P := by
  exact And.intro E.continuityPropertyClosed (And.intro E.singularityInducedClosed E.endpointMeasureClosed)

end ContinuitySingularityInducedMeasuresCanonicalLaneLean
end HautevilleHouse