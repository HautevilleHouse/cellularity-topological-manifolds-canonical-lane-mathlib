import HautevilleHouse.CellularityTopologicalManifoldsCanonicalLaneLean.CellularityGateLemmas

namespace HautevilleHouse
namespace CellularityTopologicalManifoldsCanonicalLaneLean

def ConstrainedCellularityClosure (A : AdmissibleCellularityClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_cellularity_endgame (A : AdmissibleCellularityClass) :
    ConstrainedCellularityClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CellularityTopologicalManifoldsCanonicalLaneLean
end HautevilleHouse
