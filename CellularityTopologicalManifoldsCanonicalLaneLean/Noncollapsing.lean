import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellularityTopologicalManifoldsCanonicalLaneLean

structure NoncollapsingPackage (G : CWComplexPackage) where
  dimensionBound : Prop
  homologyFiniteness : Prop
  cellCountFinite : Prop

structure NoncollapsingEvidence {G : CWComplexPackage} (N : NoncollapsingPackage G) where
  dimensionBoundClosed : N.dimensionBound
  homologyFinitenessClosed : N.homologyFiniteness
  cellCountFiniteClosed : N.cellCountFinite

def NoncollapsingClosed {G : CWComplexPackage} (N : NoncollapsingPackage G) : Prop :=
  N.dimensionBound ∧ N.homologyFiniteness ∧ N.cellCountFinite

theorem noncollapsing_closed_from_evidence
    {G : CWComplexPackage} (N : NoncollapsingPackage G) (E : NoncollapsingEvidence N) :
    NoncollapsingClosed N := by
  exact And.intro E.dimensionBoundClosed (And.intro E.homologyFinitenessClosed E.cellCountFiniteClosed)

end CellularityTopologicalManifoldsCanonicalLaneLean
end HautevilleHouse