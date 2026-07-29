import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellularityTopologicalManifoldsCanonicalLaneLean

structure CellularHomologyPackage where
  homologyDimension : Nat
  cellComplexWellDefined : Prop
  invarianceUnderRefinement : Prop
  topologicalInvariance : Prop

structure CellularHomologyEvidence (C : CellularHomologyPackage) where
  cellComplexWellDefinedClosed : C.cellComplexWellDefined
  invarianceUnderRefinementClosed : C.invarianceUnderRefinement
  topologicalInvarianceClosed : C.topologicalInvariance

def CellularHomologyClosed (C : CellularHomologyPackage) : Prop :=
  C.cellComplexWellDefined ∧ C.invarianceUnderRefinement ∧ C.topologicalInvariance

theorem cellular_homology_closed_from_evidence (C : CellularHomologyPackage)
    (E : CellularHomologyEvidence C) : CellularHomologyClosed C := by
  exact And.intro E.cellComplexWellDefinedClosed
    (And.intro E.invarianceUnderRefinementClosed E.topologicalInvarianceClosed)

end CellularityTopologicalManifoldsCanonicalLaneLean
end HautevilleHouse