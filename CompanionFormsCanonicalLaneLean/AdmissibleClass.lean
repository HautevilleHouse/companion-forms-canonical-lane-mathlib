import CompanionFormsCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace CompanionFormsCanonicalLaneLean

structure AdmissibleClass where
  object : AdmittedTheoremObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  NativeClosureTheorem A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CompanionFormsCanonicalLaneLean
end HautevilleHouse
