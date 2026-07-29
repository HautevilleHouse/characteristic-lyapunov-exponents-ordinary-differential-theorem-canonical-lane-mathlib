import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CharacteristicLyapunovExponentsOrdinaryDifferentialTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CharacteristicLyapunovExponentsOrdinaryDifferentialTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.conclusion

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CharacteristicLyapunovExponentsOrdinaryDifferentialTheoremCanonicalLaneLean
end HautevilleHouse