import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellularityTopologicalManifoldsCanonicalLaneLean

def ConstrainedCellularityClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_cellularity_endgame (A : AdmissibleClass) :
    ConstrainedCellularityClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CellularityTopologicalManifoldsCanonicalLaneLean
end HautevilleHouse