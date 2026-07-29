import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DigitalHumanitiesCanonicalLaneLean

structure DigitalArchivingPackage where
  sourceDocuments : List String
  digitizationMetadata : List (String × String)
  preservationFormat : String
  checksumAlgorithm : String
  archivalIntegrity : Prop
  archivalIntegrityTerm : archivalIntegrity

structure DigitalArchivingEvidence (D : DigitalArchivingPackage) where
  sourceDocumentsClosed : D.sourceDocuments.length > 0
  digitizationMetadataClosed : D.digitizationMetadata.All (fun (_, fmt) => fmt ≠ "")
  preservationFormatClosed : D.preservationFormat ≠ ""
  checksumAlgorithmClosed : D.checksumAlgorithm ∈ ["SHA256", "MD5", "SHA1"]
  archivalIntegrityClosed : D.archivalIntegrityTerm

def DigitalArchivingClosed (D : DigitalArchivingPackage) : Prop :=
  D.archivalIntegrity

theorem digital_archiving_closed_from_evidence (D : DigitalArchivingPackage) (E : DigitalArchivingEvidence D) :
    DigitalArchivingClosed D := by
  exact E.archivalIntegrityClosed

end DigitalHumanitiesCanonicalLaneLean
end HautevilleHouse