import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuousDifferentiableMapsNonlinearFunctionalTheoremCanonicalLaneLean

structure NonlinearFunctionalAdmittedObject where
  sourceSpace : Type u
  targetSpace : Type v
  map : sourceSpace → targetSpace
  isContinuous : Prop
  isDifferentiable : Prop
  isFredholm : Prop
  hasMorseTheory : Prop
  conclusion : isContinuous ∧ isDifferentiable ∧ isFredholm ∧ hasMorseTheory

structure AdmissibleClass where
  object : NonlinearFunctionalAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.isContinuous ∧ A.object.isDifferentiable ∧
   A.object.isFredholm ∧ A.object.hasMorseTheory) ∧
  (A.endpointSatisfied ∨ A.remainderRecorded)

end ContinuousDifferentiableMapsNonlinearFunctionalTheoremCanonicalLaneLean
end HautevilleHouse
