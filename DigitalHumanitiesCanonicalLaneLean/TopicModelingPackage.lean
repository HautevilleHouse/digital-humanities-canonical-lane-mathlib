import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DigitalHumanitiesCanonicalLaneLean

structure TopicModelingPackage where
  corpusTokenization : Prop
  latentDirichletAllocation : Prop
  topicDistribution : Prop
  documentTopicClusters : Prop
  corpusTokenizationTerm : corpusTokenization
  latentDirichletAllocationTerm : latentDirichletAllocation
  topicDistributionTerm : topicDistribution
  documentTopicClustersTerm : documentTopicClusters

structure TopicModelingEvidence (T : TopicModelingPackage) where
  corpusTokenizationClosed : T.corpusTokenization
  latentDirichletAllocationClosed : T.latentDirichletAllocation
  topicDistributionClosed : T.topicDistribution
  documentTopicClustersClosed : T.documentTopicClusters

def TopicModelingClosed (T : TopicModelingPackage) : Prop :=
  T.corpusTokenization ∧ T.latentDirichletAllocation ∧ T.topicDistribution ∧ T.documentTopicClusters

theorem topic_modeling_closed_from_evidence
    (T : TopicModelingPackage) (E : TopicModelingEvidence T) : TopicModelingClosed T :=
  And.intro E.corpusTokenizationClosed
    (And.intro E.latentDirichletAllocationClosed
      (And.intro E.topicDistributionClosed E.documentTopicClustersClosed))

end DigitalHumanitiesCanonicalLaneLean
end HautevilleHouse
