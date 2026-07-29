import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DigitalHumanitiesCanonicalLaneLean

structure SentimentAnalysisPackage where
  lexicalResources : Prop
  polarityScoring : Prop
  affectDetection : Prop
  culturalBiasAdjustment : Prop

structure SentimentAnalysisEvidence (S : SentimentAnalysisPackage) where
  lexicalResourcesClosed : S.lexicalResources
  polarityScoringClosed : S.polarityScoring
  affectDetectionClosed : S.affectDetection
  culturalBiasAdjustmentClosed : S.culturalBiasAdjustment

def SentimentAnalysisClosed (S : SentimentAnalysisPackage) : Prop :=
  S.lexicalResources ∧ S.polarityScoring ∧ S.affectDetection ∧ S.culturalBiasAdjustment

theorem sentiment_analysis_closed_from_evidence (S : SentimentAnalysisPackage) (E : SentimentAnalysisEvidence S) :
    SentimentAnalysisClosed S := by
  exact And.intro E.lexicalResourcesClosed (And.intro E.polarityScoringClosed (And.intro E.affectDetectionClosed E.culturalBiasAdjustmentClosed))

end DigitalHumanitiesCanonicalLaneLean
end HautevilleHouse
