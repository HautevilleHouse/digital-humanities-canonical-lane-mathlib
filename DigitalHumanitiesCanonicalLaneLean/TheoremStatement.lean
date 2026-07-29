import DigitalHumanitiesCanonicalLaneLean.ReviewerBridge

namespace HautevilleHouse
namespace DigitalHumanitiesCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  constrainedStatement : String
  certificateLane : String
  carriedRemainder : String
  deriving Repr, DecidableEq

def sourceTheoremStatement : TheoremStatement := {
  sourceKey := sourceRepository,
  theoremName := sourceRepository,
  theoremObject := sourceDescription,
  classicalBoundary := sourceTheoremBoundary.claimBoundary,
  constrainedStatement := "constrained theorem certificate internalized through baseline gates, source constants, and reviewer bridge",
  certificateLane := baselineCertificateLane,
  carriedRemainder := "classical source boundary carried by formalizationCertificate"
}

end DigitalHumanitiesCanonicalLaneLean
end HautevilleHouse