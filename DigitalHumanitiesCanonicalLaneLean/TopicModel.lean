import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DigitalHumanitiesCanonicalLaneLean

structure CorpusTopicModel where
  documentTermMatrix : Type u
  latentTopics : Nat
  topicDistributions : Prop
  topicCoherence : Prop
  stabilityUnderPerturbation : Prop

structure TopicModelEvidence (C : CorpusTopicModel) where
  topicDistributionsClosed : C.topicDistributions
  topicCoherenceClosed : C.topicCoherence
  stabilityUnderPerturbationClosed : C.stabilityUnderPerturbation

def TopicModelClosed (C : CorpusTopicModel) : Prop :=
  C.topicDistributions ∧ C.topicCoherence ∧ C.stabilityUnderPerturbation

theorem topic_model_closed_from_evidence (C : CorpusTopicModel)
    (E : TopicModelEvidence C) : TopicModelClosed C := by
  exact And.intro E.topicDistributionsClosed
    (And.intro E.topicCoherenceClosed E.stabilityUnderPerturbationClosed)

end DigitalHumanitiesCanonicalLaneLean
end HautevilleHouse