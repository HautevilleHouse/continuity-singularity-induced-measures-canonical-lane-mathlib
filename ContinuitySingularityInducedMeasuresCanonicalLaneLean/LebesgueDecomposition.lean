import ContinuitySingularityInducedMeasuresCanonicalLaneLean.SingularityModels

/-!
# Lebesgue Decomposition Package
-/

namespace HautevilleHouse
namespace ContinuitySingularityInducedMeasuresCanonicalLaneLean

structure LebesgueDecompositionPackage {G : MeasureReferenceSpace}
    {F : SignedMeasurePackage G} {S : AbsoluteContinuityPackage F}
    (Q : SingularComponentPackage S) where
  absolutelyContinuousPart : Prop
  singularPart : Prop
  uniqueness : Prop
  radonNikodymDerivative : Prop
  decompositionClosed : Prop

structure LebesgueDecompositionEvidence {G : MeasureReferenceSpace}
    {F : SignedMeasurePackage G} {S : AbsoluteContinuityPackage F}
    {Q : SingularComponentPackage S} (C : LebesgueDecompositionPackage Q) where
  absolutelyContinuousPartClosed : C.absolutelyContinuousPart
  singularPartClosed : C.singularPart
  uniquenessClosed : C.uniqueness
  radonNikodymDerivativeClosed : C.radonNikodymDerivative
  decompositionClosedClosed : C.decompositionClosed

def LebesgueDecompositionClosed {G : MeasureReferenceSpace}
    {F : SignedMeasurePackage G} {S : AbsoluteContinuityPackage F}
    {Q : SingularComponentPackage S} (C : LebesgueDecompositionPackage Q) : Prop :=
  C.absolutelyContinuousPart ∧ C.singularPart ∧ C.uniqueness ∧ C.radonNikodymDerivative ∧ C.decompositionClosed

theorem lebesgue_decomposition_closed_from_evidence
    {G : MeasureReferenceSpace} {F : SignedMeasurePackage G}
    {S : AbsoluteContinuityPackage F} {Q : SingularComponentPackage S}
    (C : LebesgueDecompositionPackage Q) (E : LebesgueDecompositionEvidence C) :
    LebesgueDecompositionClosed C := by
  exact And.intro E.absolutelyContinuousPartClosed
    (And.intro E.singularPartClosed
      (And.intro E.uniquenessClosed
        (And.intro E.radonNikodymDerivativeClosed E.decompositionClosedClosed)))

end ContinuitySingularityInducedMeasuresCanonicalLaneLean
end HautevilleHouse