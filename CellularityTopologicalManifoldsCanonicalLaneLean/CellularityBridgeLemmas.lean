import HautevilleHouse.CellularityTopologicalManifoldsCanonicalLaneLean.CellularityAdmissibleClass

namespace HautevilleHouse
namespace CellularityTopologicalManifoldsCanonicalLaneLean

def bridgeClosed (A : AdmissibleCellularityClass) : Prop :=
  CellularityWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleCellularityClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CellularityTopologicalManifoldsCanonicalLaneLean
end HautevilleHouse
