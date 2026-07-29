import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DigitalHumanitiesCanonicalLaneLean

structure HistoricalNetworkAnalysisPackage where
  nodes : List String
  edges : List (String × String)
  edgeWeights : List Float
  centralityMeasures : List (String × Float)
  communityStructure : List String
  networkRegularity : Prop
  networkRegularityTerm : networkRegularity

structure HistoricalNetworkAnalysisEvidence (H : HistoricalNetworkAnalysisPackage) where
  nodesClosed : H.nodes.length > 0
  edgesClosed : H.edges.All (fun (a,b) => a ∈ H.nodes ∧ b ∈ H.nodes)
  edgeWeightsClosed : H.edgeWeights.All (fun w => w ≥ 0)
  centralityMeasuresClosed : H.centralityMeasures.All (fun (_, c) => c ≥ 0)
  communityStructureClosed : H.communityStructure.All (fun c => c ∈ H.nodes)
  networkRegularityClosed : H.networkRegularityTerm

def HistoricalNetworkAnalysisClosed (H : HistoricalNetworkAnalysisPackage) : Prop :=
  H.networkRegularity

theorem historical_network_analysis_closed_from_evidence (H : HistoricalNetworkAnalysisPackage) (E : HistoricalNetworkAnalysisEvidence H) :
    HistoricalNetworkAnalysisClosed H := by
  exact E.networkRegularityClosed

end DigitalHumanitiesCanonicalLaneLean
end HautevilleHouse