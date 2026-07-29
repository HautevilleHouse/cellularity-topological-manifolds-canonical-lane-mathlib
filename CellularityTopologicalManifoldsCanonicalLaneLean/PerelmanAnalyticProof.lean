import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellularityTopologicalManifoldsCanonicalLaneLean

structure CWComplexAnalyticCertificate (G : CWComplexPackage) where
  cellStructure : Prop
  homologyGroupsComputed : Prop
  cellStructureClosed : cellStructure
  homologyGroupsComputedClosed : homologyGroupsComputed
  cwEvidence : CWComplexEvidence G

def CWComplexAnalyticCertificateClosed {G : CWComplexPackage} (C : CWComplexAnalyticCertificate G) : Prop :=
  C.cellStructure ∧ C.homologyGroupsComputed ∧ CWComplexClosed G

theorem cw_complex_analytic_certificate_closed
    {G : CWComplexPackage} (C : CWComplexAnalyticCertificate G) :
    CWComplexAnalyticCertificateClosed C := by
  exact And.intro C.cellStructureClosed (And.intro C.homologyGroupsComputedClosed (cw_complex_closed_from_evidence G C.cwEvidence))

structure CellularInvariantAnalyticCertificate (G : CWComplexPackage) where
  eulerCharacteristicComputed : Prop
  homologyGroupsComputed : Prop
  eulerCharacteristicComputedClosed : eulerCharacteristicComputed
  homologyGroupsComputedClosed : homologyGroupsComputed
  invariantEvidence : CellularInvariantEvidence G

def CellularInvariantAnalyticCertificateClosed {G : CWComplexPackage} (C : CellularInvariantAnalyticCertificate G) : Prop :=
  C.eulerCharacteristicComputed ∧ C.homologyGroupsComputed ∧ CellularInvariantClosed G

theorem cellular_invariant_analytic_certificate_closed
    {G : CWComplexPackage} (C : CellularInvariantAnalyticCertificate G) :
    CellularInvariantAnalyticCertificateClosed C := by
  exact And.intro C.eulerCharacteristicComputedClosed (And.intro C.homologyGroupsComputedClosed (cellular_invariant_closed_from_evidence G C.invariantEvidence))

end CellularityTopologicalManifoldsCanonicalLaneLean
end HautevilleHouse