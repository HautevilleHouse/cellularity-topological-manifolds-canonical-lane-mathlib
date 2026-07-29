import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellularityTopologicalManifoldsCanonicalLaneLean

structure InvarianceOfDimension (M N : Type*) [TopologicalSpace M] [TopologicalSpace N] where
  homeo : M ≃ₜ N
  dimM : ℕ
  dimN : ℕ
  dimAreEqual : dimM = dimN

structure InvarianceEvidence (I : InvarianceOfDimension M N) where
  homeoClosed : I.homeo.Continuous ∧ I.homeo.symm.Continuous
  dimConstraint : I.dimAreEqual

def InvarianceClosed (I : InvarianceOfDimension M N) : Prop :=
  I.homeo.Continuous ∧ I.homeo.symm.Continuous ∧ I.dimAreEqual

theorem invariance_closed_from_evidence (I : InvarianceOfDimension M N) (E : InvarianceEvidence I) :
    InvarianceClosed I := by
  exact And.intro E.homeoClosed.1 (And.intro E.homeoClosed.2 E.dimConstraint)

end CellularityTopologicalManifoldsCanonicalLaneLean
end HautevilleHouse