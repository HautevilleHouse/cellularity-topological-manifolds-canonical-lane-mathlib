import cellularityTopologicalManifoldsCanonicalLaneLean.SimplicialComplex

/-!
# Cellularity Package
-/

namespace HautevilleHouse
namespace CellularityTopologicalManifoldsCanonicalLaneLean

structure CellularityPackage where
  cellComplex : Type u
  characteristicMap : Type v
  cellAttachment : Type w
  closureFinite : Prop
  weakTopology : Prop
  boundaryCellular : Prop
  cellComplexClosed : closureFinite ∧ weakTopology ∧ boundaryCellular

structure CellularityEvidence (C : CellularityPackage) where
  closureFiniteClosed : C.closureFinite
  weakTopologyClosed : C.weakTopology
  boundaryCellularClosed : C.boundaryCellular

def CellularityClosed (C : CellularityPackage) : Prop :=
  C.closureFinite ∧ C.weakTopology ∧ C.boundaryCellular

theorem cellularity_closed_from_evidence (C : CellularityPackage) (E : CellularityEvidence C) :
    CellularityClosed C := by
  exact And.intro E.closureFiniteClosed (And.intro E.weakTopologyClosed E.boundaryCellularClosed)

end CellularityTopologicalManifoldsCanonicalLaneLean
end HautevilleHouse
