import cellularityTopologicalManifoldsCanonicalLaneLean.Triangulation

/-!
# Simplicial Complex Package
-/

namespace HautevilleHouse
namespace CellularityTopologicalManifoldsCanonicalLaneLean

structure SimplicialComplexPackage where
  vertexSet : Type u
  simplexSet : Type v
  faceRelations : Type w
  simplicialTopology : Prop
  pureSimplicial : Prop
  simplicialTopologyClosed : simplicialTopology
  pureSimplicialClosed : pureSimplicial

def SimplicialComplexClosed (S : SimplicialComplexPackage) : Prop :=
  S.simplicialTopology ∧ S.pureSimplicial

theorem simplicial_complex_closed_from_evidence (S : SimplicialComplexPackage) :
    SimplicialComplexClosed S := by
  exact And.intro S.simplicialTopologyClosed S.pureSimplicialClosed

end CellularityTopologicalManifoldsCanonicalLaneLean
end HautevilleHouse
