import CellularityTopologicalManifoldsCanonicalLaneLean.AdmissibleClass

/-!
# Cellular Structures Package
-/

namespace HautevilleHouse
namespace CellularityTopologicalManifoldsCanonicalLaneLean

structure CellComplex (n : ℕ) where
  cells : Type u
  boundaryMaps : Type v
  attachingMaps : Type w
  hausdorffSecondCountable : Prop
  closureFinite : Prop
  weakTopology : Prop

typealias CellComplexData n := CellComplex n

structure RegularCellComplex (n : ℕ) extends CellComplex n where
  characteristicMapsHomeomorphisms : Prop
  regularAdjunction : Prop

typealias RegularCellComplexData n := RegularCellComplex n

structure CWComplex (n : ℕ) where
  skeletonChain : ℕ → RegularCellComplexData
  colimitTopology : Prop
  closureFiniteAndWeak : Prop

typealias CWComplexData n := CWComplex n

structure CellularHomology (X : CWComplexData n) where
  chainGroups : ℕ → Type u
  boundaryOperators : ℕ → (chainGroups (n+1) → chainGroups n)
  homologyGroups : ℕ → Type u

typealias CellularHomologyData X := CellularHomology X

theorem cw_complex_is_hausdorff (X : CWComplex n) : X.skeletonChain 0 = some := by
  sorry

end CellularityTopologicalManifoldsCanonicalLaneLean
end HautevilleHouse