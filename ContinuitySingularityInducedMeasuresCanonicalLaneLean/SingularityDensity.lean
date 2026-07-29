import canonicalLaneMathlib.AdmissibleClass
import canonicalLaneMathlib.SingularityMeasureStructure

namespace HautevilleHouse
namespace ContinuitySingularityInducedMeasuresCanonicalLaneLean

structure DensityPackage (M : MeasureSpacePackage) where
  radonNikodymDerivative : M.baseSpace → ℝ
  integrable : Integrable radonNikodymDerivative M.referenceMeasure
  densityRecoversInduced : ∀ s, M.inducedMeasure s = ∫ x in s, radonNikodymDerivative x ∂M.referenceMeasure
  singularSupport : Set M.baseSpace
  singularMeasureZeroOnSupport : M.singularComponent singularSupport = 0

structure DensityEvidence {M : MeasureSpacePackage} (D : DensityPackage M) where
  densityRecoversInducedClosed : D.densityRecoversInduced
  singularMeasureZeroOnSupportClosed : D.singularMeasureZeroOnSupport

def DensityClosed {M : MeasureSpacePackage} (D : DensityPackage M) : Prop :=
  D.densityRecoversInduced ∧ D.singularMeasureZeroOnSupport

theorem density_closed_from_evidence {M : MeasureSpacePackage} (D : DensityPackage M)
    (E : DensityEvidence D) : DensityClosed D := by
  exact And.intro E.densityRecoversInducedClosed E.singularMeasureZeroOnSupportClosed

end ContinuitySingularityInducedMeasuresCanonicalLaneLean
end HautevilleHouse
