import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellularityTopologicalManifoldsCanonicalLaneLean

structure DualityTheoremPackage where
  poincareDuality : Prop
  lefschetzDuality : Prop
  alexanderDuality : Prop
  poincareLefschetzDuality : Prop

structure DualityTheoremEvidence (D : DualityTheoremPackage) where
  poincareDualityClosed : D.poincareDuality
  lefschetzDualityClosed : D.lefschetzDuality
  alexanderDualityClosed : D.alexanderDuality
  poincareLefschetzDualityClosed : D.poincareLefschetzDuality

def DualityTheoremClosed (D : DualityTheoremPackage) : Prop :=
  D.poincareDuality ∧ D.lefschetzDuality ∧ D.alexanderDuality ∧ D.poincareLefschetzDuality

theorem duality_theorem_closed_from_evidence (D : DualityTheoremPackage)
    (E : DualityTheoremEvidence D) : DualityTheoremClosed D := by
  exact And.intro E.poincareDualityClosed
    (And.intro E.lefschetzDualityClosed
      (And.intro E.alexanderDualityClosed E.poincareLefschetzDualityClosed))

end CellularityTopologicalManifoldsCanonicalLaneLean
end HautevilleHouse