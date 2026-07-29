import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellularityTopologicalManifoldsCanonicalLaneLean

structure CellularDecomposition (M : Type*) [TopologicalSpace M] where
  cells : Nat -> Set M
  cellDimension : (k : Nat) -> (c : cells k) -> Nat
  closureProperty : ∀ k, ∀ c : cells k, closure (c : Set M) = ⋃ (j ≤ k), cells j
  disjointOpenCells : ∀ (j ≠ k), Disjoint (cells j) (cells k)
  locallyFinite : ∀ x : M, ∃ U ∈ 𝓝 x, {k | (cells k).Nonempty ∧ (cells k) ∩ U ≠ ∅}.Finite

end CellularityTopologicalManifoldsCanonicalLaneLean
end HautevilleHouse