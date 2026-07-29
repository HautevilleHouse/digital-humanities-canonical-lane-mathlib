import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DigitalHumanitiesCanonicalLaneLean

def ConstrainedDigitalHumanitiesClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_digital_humanities_endgame (A : AdmissibleClass) :
    ConstrainedDigitalHumanitiesClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DigitalHumanitiesCanonicalLaneLean
end HautevilleHouse
