import DHGateLemmas

namespace HautevilleHouse
namespace DigitalHumanitiesCanonicalLaneLean

def ConstrainedDHClosure (A : DHAdmittedObject) : Prop :=
  (let bridge : HermeneuticBridge A := bridge_from_admissible_class A; bridge.interpretationClosed) ∧ gateClosed A

theorem constrained_dh_endgame (A : DHAdmittedObject) : ConstrainedDHClosure A := by
  let bridge : HermeneuticBridge A := bridge_from_admissible_class A
  exact And.intro bridge.interpretationClosed (gate_from_admissible_class A)

end DigitalHumanitiesCanonicalLaneLean
end HautevilleHouse