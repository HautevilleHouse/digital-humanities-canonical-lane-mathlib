import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DigitalHumanitiesCanonicalLaneLean

structure DistantReadingPlatform where
  corpusId : String
  macroanalysisMethod : String
  periodization : String
  culturalTrendExtracted : Prop
  reproducibilityChecked : Prop
  generationClosed : Prop
  generationClosedTerm : culturalTrendExtracted ∧ reproducibilityChecked

structure DistantReadingEvidence (D : DistantReadingPlatform) where
  culturalTrendExtractedClosed : D.culturalTrendExtracted
  reproducibilityCheckedClosed : D.reproducibilityChecked

structure DistantReadingClosed (D : DistantReadingPlatform) : Prop where
  culturalTrendExtractedClosed : D.culturalTrendExtracted
  reproducibilityCheckedClosed : D.reproducibilityChecked

theorem distant_reading_closed_from_evidence (D : DistantReadingPlatform) (E : DistantReadingEvidence D) : DistantReadingClosed D := by
  exact DistantReadingClosed.mk E.culturalTrendExtractedClosed E.reproducibilityCheckedClosed

end DigitalHumanitiesCanonicalLaneLean
end HautevilleHouse