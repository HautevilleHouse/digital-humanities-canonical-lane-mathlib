import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DigitalHumanitiesCanonicalLaneLean

structure CanonicalTextPackage where
  textBody : String
  textSource : String
  textDate : String
  authorshipMetadata : Prop
  authorshipMetadataTerm : authorshipMetadata

structure CanonicalTextEvidence (T : CanonicalTextPackage) where
  authorshipMetadataClosed : T.authorshipMetadata

def CanonicalTextClosed (T : CanonicalTextPackage) : Prop :=
  T.authorshipMetadata

theorem canonical_text_closed_from_evidence
    (T : CanonicalTextPackage) (E : CanonicalTextEvidence T) : CanonicalTextClosed T :=
  E.authorshipMetadataClosed

end DigitalHumanitiesCanonicalLaneLean
end HautevilleHouse
