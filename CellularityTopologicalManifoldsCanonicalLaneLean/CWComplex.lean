import cellularityTopologicalManifoldsCanonicalLaneLean.CellularityPackage

/-!
# CW Complex Package
-/

namespace HautevilleHouse
namespace CellularityTopologicalManifoldsCanonicalLaneLean

structure CWComplexPackage where
  skeletonSequence : Type u
  cellAttachment : Type v
  weakTopology : Prop
  closureFinite : Prop
  cwTopologyClosed : weakTopology ∧ closureFinite

theorem cw_complex_is_cellular (C : CWComplexPackage) :
    ∃ (P : CellularityPackage), CellularityClosed P := by
  refine ⟨{ cellComplex := C.skeletonSequence, characteristicMap := C.cellAttachment, cellAttachment := C.cellAttachment, closureFinite := C.closureFinite, weakTopology := C.weakTopology, boundaryCellular := True, cellComplexClosed := by exact And.intro C.cwTopologyClosed.2 C.cwTopologyClosed.1 }, ?_⟩
  exact And.intro C.cwTopologyClosed.2 (And.intro C.cwTopologyClosed.1 trivial)

end CellularityTopologicalManifoldsCanonicalLaneLean
end HautevilleHouse
