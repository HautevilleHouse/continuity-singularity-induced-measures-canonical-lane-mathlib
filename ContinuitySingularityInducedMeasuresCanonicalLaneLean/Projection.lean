import ContinuitySingularityInducedMeasuresCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ContinuitySingularityInducedMeasuresCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def continuitySingularityProjection : Projection ContinuitySingularityEndgameState := {
  toFun := fun x => x
  idempotent := by intro x; rfl
}

theorem continuity_singularity_projection_idempotent (x : ContinuitySingularityEndgameState) :
    continuitySingularityProjection.toFun (continuitySingularityProjection.toFun x) = continuitySingularityProjection.toFun x := by
  exact continuitySingularityProjection.idempotent x

end ContinuitySingularityInducedMeasuresCanonicalLaneLean
end HautevilleHouse