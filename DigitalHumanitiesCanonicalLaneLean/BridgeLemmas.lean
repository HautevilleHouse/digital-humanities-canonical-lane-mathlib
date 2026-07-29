import canonicalLaneMathlib.AdmissibleClass
import DigitalHumanitiesCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace DigitalHumanitiesCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  DigitalHumanitiesWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end DigitalHumanitiesCanonicalLaneLean
end HautevilleHouse