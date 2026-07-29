import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DigitalHumanitiesCanonicalLaneLean

structure TextReuseLayer where
  textCorpus : Type u
  similarityMetric : Type v
  pairwiseAlignments : Prop
  alignmentScoreBound : Prop
  noiseFiltered : Prop

structure TextReuseEvidence (R : TextReuseLayer) where
  pairwiseAlignmentsClosed : R.pairwiseAlignments
  alignmentScoreBoundClosed : R.alignmentScoreBound
  noiseFilteredClosed : R.noiseFiltered

def TextReuseClosed (R : TextReuseLayer) : Prop :=
  R.pairwiseAlignments ∧ R.alignmentScoreBound ∧ R.noiseFiltered

theorem text_reuse_closed_from_evidence (R : TextReuseLayer)
    (E : TextReuseEvidence R) : TextReuseClosed R := by
  exact And.intro E.pairwiseAlignmentsClosed
    (And.intro E.alignmentScoreBoundClosed E.noiseFilteredClosed)

end DigitalHumanitiesCanonicalLaneLean
end HautevilleHouse