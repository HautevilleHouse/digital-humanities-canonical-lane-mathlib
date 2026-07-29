import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DigitalHumanitiesCanonicalLaneLean

structure TextEncodingPlatform where
  encodingStandard : String
  characterSet : String
  markupLanguage : String
  annotationSchema : String
  platformProvenance : Prop
  platformProvenanceTerm : platformProvenance

structure TextEncodingEvidence (T : TextEncodingPlatform) where
  encodingStandardClosed : T.encodingStandard = "TEI P5"
  characterSetClosed : T.characterSet = "Unicode 14.0"
  markupLanguageClosed : T.markupLanguage = "XML"

structure TextEncodingClosed (T : TextEncodingPlatform) : Prop where
  encodingStandardClosed : T.encodingStandard = "TEI P5"
  characterSetClosed : T.characterSet = "Unicode 14.0"
  markupLanguageClosed : T.markupLanguage = "XML"

theorem text_encoding_closed_from_evidence (T : TextEncodingPlatform) (E : TextEncodingEvidence T) : TextEncodingClosed T := by
  exact TextEncodingClosed.mk E.encodingStandardClosed E.characterSetClosed E.markupLanguageClosed

end DigitalHumanitiesCanonicalLaneLean
end HautevilleHouse