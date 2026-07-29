import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellularityTopologicalManifoldsCanonicalLaneLean

structure CellularitySpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure CellComplex where
  space : CellularitySpace
  cells : Nat → Set (CellularitySpace carrier)
  cellAttachments : ∀ n, (cells n) → (CellularitySpace.carrier → CellularitySpace.carrier)
  closureFinite : ∀ n, ∀ c ∈ cells n, closure (c) ∈ ⋃ k ≤ n, cells k
  weakTopology : TopologicalSpace.induced (⋃ n, cells n) = CellularitySpace.topology carrier

structure AdmittedCellularObject where
  complex : CellComplex
  manifoldsAdmitted : Prop
  conclusion : manifoldsAdmitted

structure AdmissibleCellularityClass where
  object : AdmittedCellularObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedCellularityClosure (A : AdmissibleCellularityClass) : Prop :=
  CellularityWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

def CellularityWitnessClosed (O : AdmittedCellularObject) : Prop :=
  O.manifoldsAdmitted

end CellularityTopologicalManifoldsCanonicalLaneLean
end HautevilleHouse
