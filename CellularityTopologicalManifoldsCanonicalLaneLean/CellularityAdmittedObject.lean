import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellularityTopologicalManifoldsCanonicalLaneLean

structure CellularitySpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure CellularityAdmittedObject where
  space : CellularitySpace
  compact : Prop
  hausdorff : Prop
  secondCountable : Prop
  cellularHomologyFlows : Prop
  conclusion : cellularHomologyFlows

def CellularityWitnessClosed (O : CellularityAdmittedObject) : Prop :=
  O.cellularHomologyFlows

end CellularityTopologicalManifoldsCanonicalLaneLean
end HautevilleHouse