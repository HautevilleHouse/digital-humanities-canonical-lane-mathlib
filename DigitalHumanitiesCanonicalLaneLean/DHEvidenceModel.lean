import DHAdmissibleClass

namespace HautevilleHouse
namespace DigitalHumanitiesCanonicalLaneLean

structure DHEvidencePackage where
  textualEvidence : Prop
  contextualEvidence : Prop
  statisticalEvidence : Prop
  evidenceSynthesis : Prop

def DHEvidenceClosed (E : DHEvidencePackage) : Prop :=
  E.textualEvidence ∧ E.contextualEvidence ∧ E.statisticalEvidence ∧ E.evidenceSynthesis

theorem evidence_closed_from_synthesis (E : DHEvidencePackage) (h : E.evidenceSynthesis) : DHEvidenceClosed E := by
  refine And.intro ?_ (And.intro ?_ (And.intro ?_ h))
  · exact h
  · exact h
  · exact h

end DigitalHumanitiesCanonicalLaneLean
end HautevilleHouse