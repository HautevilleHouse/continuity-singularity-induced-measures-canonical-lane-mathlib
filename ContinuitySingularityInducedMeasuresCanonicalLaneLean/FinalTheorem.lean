import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuitySingularityInducedMeasuresCanonicalLaneLean

def ConstrainedCSIMClosure (A : ContinuitySingularityAdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_csim_endgame (A : ContinuitySingularityAdmissibleClass) :
    ConstrainedCSIMClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ContinuitySingularityInducedMeasuresCanonicalLaneLean
end HautevilleHouse