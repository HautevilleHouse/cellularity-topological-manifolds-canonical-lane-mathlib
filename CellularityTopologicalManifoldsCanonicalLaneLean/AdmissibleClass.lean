import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellularityTopologicalManifoldsCanonicalLaneLean

structure AdmissibleClass where
  object : CellularityAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  CellularityWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CellularityTopologicalManifoldsCanonicalLaneLean
end HautevilleHouse