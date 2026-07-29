import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacteristicLyapunovExponentsOrdinaryDifferentialTheoremCanonicalLaneLean

structure LyapunovAdmittedObject where
  linearFlow : Type u
  ergodicMeasure : Prop
  lyapunovExponentsDefined : Prop
  conclusion : lyapunovExponentsDefined

def LyapunovWitnessClosed (O : LyapunovAdmittedObject) : Prop :=
  O.lyapunovExponentsDefined

end CharacteristicLyapunovExponentsOrdinaryDifferentialTheoremCanonicalLaneLean
end HautevilleHouse