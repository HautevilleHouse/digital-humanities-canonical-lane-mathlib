import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DigitalHumanitiesCanonicalLaneLean

structure TextualCriticismPackage where
  stemmaCodicum : Prop
  recensionSteps : Prop
  emendatioRatio : Prop
  editorialChoice : Prop

structure TextualCriticismEvidence (T : TextualCriticismPackage) where
  stemmaCodicumClosed : T.stemmaCodicum
  recensionStepsClosed : T.recensionSteps
  emendatioRatioClosed : T.emendatioRatio
  editorialChoiceClosed : T.editorialChoice

def TextualCriticismClosed (T : TextualCriticismPackage) : Prop :=
  T.stemmaCodicum ∧ T.recensionSteps ∧ T.emendatioRatio ∧ T.editorialChoice

theorem textual_criticism_closed_from_evidence (T : TextualCriticismPackage) (E : TextualCriticismEvidence T) :
    TextualCriticismClosed T := by
  exact And.intro E.stemmaCodicumClosed (And.intro E.recensionStepsClosed (And.intro E.emendatioRatioClosed E.editorialChoiceClosed))

end DigitalHumanitiesCanonicalLaneLean
end HautevilleHouse
