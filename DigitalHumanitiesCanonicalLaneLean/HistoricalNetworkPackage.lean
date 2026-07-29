import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DigitalHumanitiesCanonicalLaneLean

structure HistoricalNetworkPackage where
  personEntityRecognition : Prop
  relationExtraction : Prop
  temporalAlignment : Prop
  networkCentrality : Prop
  personEntityRecognitionTerm : personEntityRecognition
  relationExtractionTerm : relationExtraction
  temporalAlignmentTerm : temporalAlignment
  networkCentralityTerm : networkCentrality

structure HistoricalNetworkEvidence (H : HistoricalNetworkPackage) where
  personEntityRecognitionClosed : H.personEntityRecognition
  relationExtractionClosed : H.relationExtraction
  temporalAlignmentClosed : H.temporalAlignment
  networkCentralityClosed : H.networkCentrality

def HistoricalNetworkClosed (H : HistoricalNetworkPackage) : Prop :=
  H.personEntityRecognition ∧ H.relationExtraction ∧ H.temporalAlignment ∧ H.networkCentrality

theorem historical_network_closed_from_evidence
    (H : HistoricalNetworkPackage) (E : HistoricalNetworkEvidence H) : HistoricalNetworkClosed H :=
  And.intro E.personEntityRecognitionClosed
    (And.intro E.relationExtractionClosed
      (And.intro E.temporalAlignmentClosed E.networkCentralityClosed))

end DigitalHumanitiesCanonicalLaneLean
end HautevilleHouse
