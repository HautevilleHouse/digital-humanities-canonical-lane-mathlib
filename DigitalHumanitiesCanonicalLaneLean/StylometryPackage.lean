import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DigitalHumanitiesCanonicalLaneLean

structure StylometryPackage where
  wordFrequencyDistribution : Prop
  functionWordList : List String
  clusteringResult : Prop
  authorshipAttribution : Prop
  wordFrequencyDistributionTerm : wordFrequencyDistribution
  clusteringResultTerm : clusteringResult
  authorshipAttributionTerm : authorshipAttribution

structure StylometryEvidence (S : StylometryPackage) where
  wordFrequencyDistributionClosed : S.wordFrequencyDistribution
  clusteringResultClosed : S.clusteringResult
  authorshipAttributionClosed : S.authorshipAttribution

def StylometryClosed (S : StylometryPackage) : Prop :=
  S.wordFrequencyDistribution ∧ S.clusteringResult ∧ S.authorshipAttribution

theorem stylometry_closed_from_evidence
    (S : StylometryPackage) (E : StylometryEvidence S) : StylometryClosed S :=
  And.intro E.wordFrequencyDistributionClosed
    (And.intro E.clusteringResultClosed E.authorshipAttributionClosed)

end DigitalHumanitiesCanonicalLaneLean
end HautevilleHouse
