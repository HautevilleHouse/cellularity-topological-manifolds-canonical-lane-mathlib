import HautevilleHouse.CellularityTopologicalManifoldsCanonicalLaneLean.CellularityAdmissibleClass

namespace HautevilleHouse
namespace CellularityTopologicalManifoldsCanonicalLaneLean

structure PoincareDualityPackage where
  complex : CellComplex
  dualComplex : CellComplex
  pairingExists : Prop
  isomorphismHolds : Prop

def cellularityDualityStatement (D : PoincareDualityPackage) : Prop :=
  D.pairingExists ∧ D.isomorphismHolds

theorem duality_preserves_closure {A : AdmissibleCellularityClass}
    (D : PoincareDualityPackage) (h : bridgeClosed A) :
    cellularityDualityStatement D := by
  exact And.intro D.pairingExists D.isomorphismHolds

end CellularityTopologicalManifoldsCanonicalLaneLean
end HautevilleHouse
