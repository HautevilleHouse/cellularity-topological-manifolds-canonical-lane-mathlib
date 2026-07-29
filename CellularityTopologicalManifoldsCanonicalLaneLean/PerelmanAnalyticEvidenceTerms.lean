import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellularityTopologicalManifoldsCanonicalLaneLean

structure CWComplexEvidenceTerms (G : CWComplexPackage) (C : CWComplexAnalyticCertificate G) where
  cellStructureClosed : C.cellStructure
  homologyGroupsComputed : C.homologyGroupsComputed
  cwComplexClosed : CWComplexClosed G

def CWComplexAnalyticCertificate.evidenceTerms {G : CWComplexPackage} (C : CWComplexAnalyticCertificate G) : CWComplexEvidenceTerms G C :=
  {
    cellStructureClosed := C.cellStructureClosed
    homologyGroupsComputed := C.homologyGroupsComputedClosed
    cwComplexClosed := cw_complex_closed_from_evidence G C.cwEvidence
  }

structure CellularInvariantEvidenceTerms {G : CWComplexPackage} (C : CellularInvariantAnalyticCertificate G) where
  eulerCharacteristicComputed : C.eulerCharacteristicComputed
  homologyGroupsComputed : C.homologyGroupsComputed
  invariantClosed : CellularInvariantClosed G

def CellularInvariantAnalyticCertificate.evidenceTerms {G : CWComplexPackage} (C : CellularInvariantAnalyticCertificate G) : CellularInvariantEvidenceTerms G C :=
  {
    eulerCharacteristicComputed := C.eulerCharacteristicComputedClosed
    homologyGroupsComputed := C.homologyGroupsComputedClosed
    invariantClosed := cellular_invariant_closed_from_evidence G C.invariantEvidence
  }

end CellularityTopologicalManifoldsCanonicalLaneLean
end HautevilleHouse