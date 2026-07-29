import cellularityTopologicalManifoldsCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace CellularityTopologicalManifoldsCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure CellularitySpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure CellularityAdmittedObject where
  space : CellularitySpace
  compact : Prop
  hausdorff : Prop
  secondCountable : Prop
  locallyEuclidean : Prop
  modelType : Type
  modelTopology : TopologicalSpace modelType
  homeomorphicToModel : Prop
  conclusion : homeomorphicToModel

structure CellularityEndgameState where
  object : CellularityAdmittedObject

def CellularityWitnessClosed (O : CellularityAdmittedObject) : Prop :=
  O.homeomorphicToModel

end CellularityTopologicalManifoldsCanonicalLaneLean
end HautevilleHouse
