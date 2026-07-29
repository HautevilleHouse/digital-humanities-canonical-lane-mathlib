import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DigitalHumanitiesCanonicalLaneLean

structure TopicModelPlatform where
  corpusId : String
  numTopics : Nat
  algorithm : String
  coherenceThreshold : Nat
  topicCoherence : Nat
  reproducibilityChecked : Prop
  reproducibilityCheckedTerm : topicCoherence ≥ coherenceThreshold ∧ reproducibilityChecked

structure TopicModelEvidence (T : TopicModelPlatform) where
  topicCoherenceClosed : T.topicCoherence ≥ T.coherenceThreshold
  reproducibilityCheckedClosed : T.reproducibilityChecked

structure TopicModelClosed (T : TopicModelPlatform) : Prop where
  topicCoherenceClosed : T.topicCoherence ≥ T.coherenceThreshold
  reproducibilityCheckedClosed : T.reproducibilityChecked

theorem topic_model_closed_from_evidence (T : TopicModelPlatform) (E : TopicModelEvidence T) : TopicModelClosed T := by
  exact TopicModelClosed.mk E.topicCoherenceClosed E.reproducibilityCheckedClosed

end DigitalHumanitiesCanonicalLaneLean
end HautevilleHouse