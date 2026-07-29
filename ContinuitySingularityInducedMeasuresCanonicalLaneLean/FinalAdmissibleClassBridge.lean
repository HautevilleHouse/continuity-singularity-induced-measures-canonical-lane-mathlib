import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuitySingularityInducedMeasuresCanonicalLaneLean

structure AdmissibleObject where
  space : ContinuitySingularitySpace
  measure : space.carrier → ℝ
  singularitySet : Set space.carrier
  bridgeProperty : Prop
  gateProperty : Prop
  bridgeClosed : bridgeProperty
  gateClosed : gateProperty

def admissibleObjectToClass (O : AdmissibleObject) : AdmissibleClass :=
  { object := {
      space := O.space
      measure := O.measure
      singularitySet := O.singularitySet
      continuityCondition := O.bridgeProperty
      measureAbsoluteContinuity := O.gateProperty
      conclusion := And.intro O.bridgeClosed O.gateClosed
    }
    endpointSatisfied := O.bridgeProperty
    remainderRecorded := O.gateProperty
    gateWitness := Or.inl O.bridgeClosed
  }

theorem admissible_object_closes (O : AdmissibleObject) :
    ConstrainedContinuitySingularityClosure (admissibleObjectToClass O) := by
  exact constrained_continuity_singularity_endgame (admissibleObjectToClass O)

end ContinuitySingularityInducedMeasuresCanonicalLaneLean
end HautevilleHouse