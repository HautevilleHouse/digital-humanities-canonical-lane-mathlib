import DHEvidenceModel

namespace HautevilleHouse
namespace DigitalHumanitiesCanonicalLaneLean

structure HermeneuticBridge (A : DHAdmittedObject) where
  interpretationClosed : A.interpretationClosed
  evidenceClosed : DHEvidenceClosed (⟨A.interpretationClosed, A.interpretationClosed, A.interpretationClosed, A.interpretationClosed⟩ : DHEvidencePackage)

theorem bridge_from_admissible_class (A : DHAdmittedObject) : HermeneuticBridge A where
  interpretationClosed := A.gateWitness
  evidenceClosed := by
    let E : DHEvidencePackage := ⟨A.interpretationClosed, A.interpretationClosed, A.interpretationClosed, A.interpretationClosed⟩
    have h : E.evidenceSynthesis := A.interpretationClosed
    exact evidence_closed_from_synthesis E h

end DigitalHumanitiesCanonicalLaneLean
end HautevilleHouse