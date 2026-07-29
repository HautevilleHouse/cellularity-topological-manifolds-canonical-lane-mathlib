import HautevilleHouse.CellularityTopologicalManifoldsCanonicalLaneLean.CellularityBridgeLemmas

namespace HautevilleHouse
namespace CellularityTopologicalManifoldsCanonicalLaneLean

def gateClosed (A : AdmissibleCellularityClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleCellularityClass) :
    gateClosed A := by
  exact A.gateWitness

end CellularityTopologicalManifoldsCanonicalLaneLean
end HautevilleHouse
