import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacteristicLyapunovExponentsOrdinaryDifferentialTheoremCanonicalLaneLean

structure LyapunovSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure LyapunovAdmittedObject where
  space : LyapunovSpace
  odinarySystem : Prop
  ergodicInvariantMeasure : Prop
  lyapunovExponentsExist : Prop
  conclusion : lyapunovExponentsExist

def LyapunovWitnessClosed (O : LyapunovAdmittedObject) : Prop :=
  O.lyapunovExponentsExist

end CharacteristicLyapunovExponentsOrdinaryDifferentialTheoremCanonicalLaneLean
end HautevilleHouse