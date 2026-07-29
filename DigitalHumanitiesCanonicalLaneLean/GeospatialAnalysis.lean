import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DigitalHumanitiesCanonicalLaneLean

structure GeospatialAnalysisPackage where
  placeNameResolution : Prop
  coordinateAlignment : Prop
  spatialDistribution : Prop
  temporalMapping : Prop

structure GeospatialAnalysisEvidence (G : GeospatialAnalysisPackage) where
  placeNameResolutionClosed : G.placeNameResolution
  coordinateAlignmentClosed : G.coordinateAlignment
  spatialDistributionClosed : G.spatialDistribution
  temporalMappingClosed : G.temporalMapping

def GeospatialAnalysisClosed (G : GeospatialAnalysisPackage) : Prop :=
  G.placeNameResolution ∧ G.coordinateAlignment ∧ G.spatialDistribution ∧ G.temporalMapping

theorem geospatial_analysis_closed_from_evidence (G : GeospatialAnalysisPackage) (E : GeospatialAnalysisEvidence G) :
    GeospatialAnalysisClosed G := by
  exact And.intro E.placeNameResolutionClosed (And.intro E.coordinateAlignmentClosed (And.intro E.spatialDistributionClosed E.temporalMappingClosed))

end DigitalHumanitiesCanonicalLaneLean
end HautevilleHouse
