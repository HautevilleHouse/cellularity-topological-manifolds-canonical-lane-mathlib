import cellularityTopologicalManifoldsCanonicalLaneLean.CWComplex

/-!
# Triangulation Package
-/

namespace HautevilleHouse
namespace CellularityTopologicalManifoldsCanonicalLaneLean

structure TriangulationPackage (M : Type u) [TopologicalSpace M] where
  triangulation : Type v
  homeomorphism : M → triangulation
  piecewiseLinear : Prop
  triangulationClosed : piecewiseLinear

theorem triangulation_homeomorphic (M : Type u) [TopologicalSpace M] (T : TriangulationPackage M) :
    Nonempty (M ≃ₜ T.triangulation) := by
  exact ⟨⟨T.homeomorphism, sorry, sorry, sorry⟩⟩

end CellularityTopologicalManifoldsCanonicalLaneLean
end HautevilleHouse
