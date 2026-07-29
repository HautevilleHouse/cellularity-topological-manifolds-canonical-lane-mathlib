import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellularityTopologicalManifoldsCanonicalLaneLean

structure InvariancePrinciplePackage where
  domainInvariance : Prop
  invarianceOfDomain : Prop
  homologyInvariance : Prop
  homotopyInvariance : Prop

structure InvariancePrincipleEvidence (I : InvariancePrinciplePackage) where
  domainInvarianceClosed : I.domainInvariance
  invarianceOfDomainClosed : I.invarianceOfDomain
  homologyInvarianceClosed : I.homologyInvariance
  homotopyInvarianceClosed : I.homotopyInvariance

def InvariancePrincipleClosed (I : InvariancePrinciplePackage) : Prop :=
  I.domainInvariance ∧ I.invarianceOfDomain ∧ I.homologyInvariance ∧ I.homotopyInvariance

theorem invariance_principle_closed_from_evidence (I : InvariancePrinciplePackage)
    (E : InvariancePrincipleEvidence I) : InvariancePrincipleClosed I := by
  exact And.intro E.domainInvarianceClosed
    (And.intro E.invarianceOfDomainClosed
      (And.intro E.homologyInvarianceClosed E.homotopyInvarianceClosed))

end CellularityTopologicalManifoldsCanonicalLaneLean
end HautevilleHouse