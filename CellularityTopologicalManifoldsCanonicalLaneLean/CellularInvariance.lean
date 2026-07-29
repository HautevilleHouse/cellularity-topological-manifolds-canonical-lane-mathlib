import CellularityTopologicalManifoldsCanonicalLaneLean.CellularStructures

/-!
# Cellular Invariance Package
-/

namespace HautevilleHouse
namespace CellularityTopologicalManifoldsCanonicalLaneLean

structure CellularInvariancePackage (X : CWComplex n) where
  homotopyInvariance : Prop
  cellularApproximation : Prop
  invarianceUnderBarycentricSubdivision : Prop
  invarianceUnderCellulation : Prop

typealias CellularInvarianceData X := CellularInvariancePackage X

structure CellularInvarianceEvidence (X : CWComplex n) (P : CellularInvariancePackage X) where
  homotopyInvarianceClosed : P.homotopyInvariance
  cellularApproximationClosed : P.cellularApproximation
  invarianceUnderBarycentricSubdivisionClosed : P.invarianceUnderBarycentricSubdivision
  invarianceUnderCellulationClosed : P.invarianceUnderCellulation

def CellularInvarianceClosed (X : CWComplex n) (P : CellularInvariancePackage X) : Prop :=
  P.homotopyInvariance ∧ P.cellularApproximation ∧
  P.invarianceUnderBarycentricSubdivision ∧ P.invarianceUnderCellulation

theorem cellular_invariance_closed_from_evidence (X : CWComplex n) (P : CellularInvariancePackage X)
    (E : CellularInvarianceEvidence X P) : CellularInvarianceClosed X P := by
  exact And.intro E.homotopyInvarianceClosed
    (And.intro E.cellularApproximationClosed
      (And.intro E.invarianceUnderBarycentricSubdivisionClosed
        E.invarianceUnderCellulationClosed))

end CellularityTopologicalManifoldsCanonicalLaneLean
end HautevilleHouse