import CellularityTopologicalManifoldsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CellularityTopologicalManifoldsCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def cellularityProjection : Projection CellularityEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem cellularity_projection_idempotent (x : CellularityEndgameState) :
    cellularityProjection.toFun (cellularityProjection.toFun x) = cellularityProjection.toFun x := by
  exact cellularityProjection.idempotent x

end CellularityTopologicalManifoldsCanonicalLaneLean
end HautevilleHouse