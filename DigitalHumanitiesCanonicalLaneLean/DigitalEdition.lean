import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DigitalHumanitiesCanonicalLaneLean

structure DigitalEditionPackage where
  textEncoding : Prop
  diplomaticTranscription : Prop
  criticalApparatus : Prop
  editorialAnnotations : Prop

structure DigitalEditionEvidence (D : DigitalEditionPackage) where
  textEncodingClosed : D.textEncoding
  diplomaticTranscriptionClosed : D.diplomaticTranscription
  criticalApparatusClosed : D.criticalApparatus
  editorialAnnotationsClosed : D.editorialAnnotations

def DigitalEditionClosed (D : DigitalEditionPackage) : Prop :=
  D.textEncoding ∧ D.diplomaticTranscription ∧ D.criticalApparatus ∧ D.editorialAnnotations

theorem digital_edition_closed_from_evidence (D : DigitalEditionPackage) (E : DigitalEditionEvidence D) :
    DigitalEditionClosed D := by
  exact And.intro E.textEncodingClosed (And.intro E.diplomaticTranscriptionClosed (And.intro E.criticalApparatusClosed E.editorialAnnotationsClosed))

end DigitalHumanitiesCanonicalLaneLean
end HautevilleHouse
