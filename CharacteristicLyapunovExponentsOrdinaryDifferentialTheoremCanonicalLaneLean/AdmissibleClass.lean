import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacteristicLyapunovExponentsOrdinaryDifferentialTheoremCanonicalLaneLean

structure LyapunovAdmittedObject where
  differentialSystem : Type u
  trajectorySpace : Type v
  solutionFlow : Type w
  linearization : differentialSystem → Type x
  spectrumDefined : Prop
  conclusion : spectrumDefined

structure AdmissibleClass where
  object : LyapunovAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

end CharacteristicLyapunovExponentsOrdinaryDifferentialTheoremCanonicalLaneLean
end HautevilleHouse