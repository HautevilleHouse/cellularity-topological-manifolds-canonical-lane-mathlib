import CellularityTopologicalManifoldsCanonicalLaneLean.CellularInvariance

/-!
# Cellular Duality Package
-/

namespace HautevilleHouse
namespace CellularityTopologicalManifoldsCanonicalLaneLean

structure CellularDualityPackage (X : CWComplex n) where
  poincareDuality : Prop
  lefschetzDuality : Prop
  alexanderDuality : Prop
  dualityFromCellularChainComplex : Prop

typealias CellularDualityData X := CellularDualityPackage X

structure CellularDualityEvidence (X : CWComplex n) (D : CellularDualityPackage X) where
  poincareDualityClosed : D.poincareDuality
  lefschetzDualityClosed : D.lefschetzDuality
  alexanderDualityClosed : D.alexanderDuality
  dualityFromCellularChainComplexClosed : D.dualityFromCellularChainComplex

def CellularDualityClosed (X : CWComplex n) (D : CellularDualityPackage X) : Prop :=
  D.poincareDuality ∧ D.lefschetzDuality ∧
  D.alexanderDuality ∧ D.dualityFromCellularChainComplex

theorem cellular_duality_closed_from_evidence (X : CWComplex n) (D : CellularDualityPackage X)
    (E : CellularDualityEvidence X D) : CellularDualityClosed X D := by
  exact And.intro E.poincareDualityClosed
    (And.intro E.lefschetzDualityClosed
      (And.intro E.alexanderDualityClosed
        E.dualityFromCellularChainComplexClosed))

end CellularityTopologicalManifoldsCanonicalLaneLean
end HautevilleHouse