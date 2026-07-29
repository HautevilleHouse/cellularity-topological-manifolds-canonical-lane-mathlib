import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellularityTopologicalManifoldsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  CellularityWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CellularityTopologicalManifoldsCanonicalLaneLean
end HautevilleHouse