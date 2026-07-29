import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DigitalHumanitiesCanonicalLaneLean

structure StylometricPlatform where
  corpusSet : List String
  featureSpace : Type
  distanceMetric : String
  authorshipAttribution : String
  statisticalSignificance : Prop
  statisticalSignificanceTerm : statisticalSignificance

structure StylometricEvidence (S : StylometricPlatform) where
  featureSpaceClosed : S.featureSpace = (List Nat)
  distanceMetricClosed : S.distanceMetric = "chi-squared"
  statisticalSignificanceClosed : S.statisticalSignificance

structure StylometricClosed (S : StylometricPlatform) : Prop where
  featureSpaceClosed : S.featureSpace = (List Nat)
  distanceMetricClosed : S.distanceMetric = "chi-squared"
  statisticalSignificanceClosed : S.statisticalSignificance

theorem stylometric_closed_from_evidence (S : StylometricPlatform) (E : StylometricEvidence S) : StylometricClosed S := by
  exact StylometricClosed.mk E.featureSpaceClosed E.distanceMetricClosed E.statisticalSignificanceClosed

end DigitalHumanitiesCanonicalLaneLean
end HautevilleHouse