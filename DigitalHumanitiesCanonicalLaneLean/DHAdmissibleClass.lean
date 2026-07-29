import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DigitalHumanitiesCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure DHContextObject where
  sourceText : Type
  annotationLayer : Type
  criticalInterpretation : Prop

structure DHAdmittedObject where
  context : DHContextObject
  interpretationClosed : Prop
  gateWitness : interpretationClosed

def DHWitnessClosed (O : DHAdmittedObject) : Prop :=
  O.interpretationClosed

end DigitalHumanitiesCanonicalLaneLean
end HautevilleHouse