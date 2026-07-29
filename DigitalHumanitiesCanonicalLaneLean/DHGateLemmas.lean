import DHHermeneuticBridge

namespace HautevilleHouse
namespace DigitalHumanitiesCanonicalLaneLean

def gateClosed (A : DHAdmittedObject) : Prop :=
  A.interpretationClosed

theorem gate_from_admissible_class (A : DHAdmittedObject) : gateClosed A :=
  A.gateWitness

end DigitalHumanitiesCanonicalLaneLean
end HautevilleHouse