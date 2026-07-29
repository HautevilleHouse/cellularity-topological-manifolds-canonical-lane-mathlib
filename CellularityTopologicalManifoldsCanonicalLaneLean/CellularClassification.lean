import CellularityTopologicalManifoldsCanonicalLaneLean.CellularDuality

/-!
# Cellular Classification Package
-/

namespace HautevilleHouse
namespace CellularityTopologicalManifoldsCanonicalLaneLean

structure CellularClassificationPackage (X : CWComplex n) where
  manifoldDimension : ℕ
  simplyConnectedness : Prop
  homologySphereCondition : Prop
  cellulationUpToHomeomorphism : Prop

typealias CellularClassificationData X := CellularClassificationPackage X

structure CellularClassificationEvidence (X : CWComplex n) (C : CellularClassificationPackage X) where
  simplyConnectednessClosed : C.simplyConnectedness
  homologySphereConditionClosed : C.homologySphereCondition
  cellulationUpToHomeomorphismClosed : C.cellulationUpToHomeomorphism

def CellularClassificationClosed (X : CWComplex n) (C : CellularClassificationPackage X) : Prop :=
  C.simplyConnectedness ∧ C.homologySphereCondition ∧
  C.cellulationUpToHomeomorphism

theorem cellular_classification_closed_from_evidence (X : CWComplex n)
    (C : CellularClassificationPackage X) (E : CellularClassificationEvidence X C) :
    CellularClassificationClosed X C := by
  exact And.intro E.simplyConnectednessClosed
    (And.intro E.homologySphereConditionClosed
      E.cellulationUpToHomeomorphismClosed)

end CellularityTopologicalManifoldsCanonicalLaneLean
end HautevilleHouse