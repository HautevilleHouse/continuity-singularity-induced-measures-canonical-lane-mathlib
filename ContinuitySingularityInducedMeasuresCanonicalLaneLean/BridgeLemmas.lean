import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuitySingularityInducedMeasuresCanonicalLaneLean

def bridgeClosed (A : ContinuitySingularityAdmissibleClass) : Prop :=
  A.object.conclusion

theorem bridge_from_admissible_class (A : ContinuitySingularityAdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end ContinuitySingularityInducedMeasuresCanonicalLaneLean
end HautevilleHouse