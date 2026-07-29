import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuitySingularityInducedMeasuresCanonicalLaneLean

def gateClosed (A : ContinuitySingularityAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : ContinuitySingularityAdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end ContinuitySingularityInducedMeasuresCanonicalLaneLean
end HautevilleHouse