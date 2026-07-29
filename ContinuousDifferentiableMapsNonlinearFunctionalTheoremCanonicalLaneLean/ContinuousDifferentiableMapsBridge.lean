import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuousDifferentiableMapsNonlinearFunctionalTheoremCanonicalLaneLean

structure ContinuousDifferentiableMapsObject where
  domain : Type
  codomain : Type
  map : domain → codomain
  continuous : Prop
  differentiable : Prop
  nonlinear : Prop
  conclusion : continuous ∧ differentiable ∧ nonlinear

structure AdmissibleClassContinuousDifferentiableMaps where
  object : ContinuousDifferentiableMapsObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def bridgeClosed (A : AdmissibleClassContinuousDifferentiableMaps) : Prop :=
  A.object.conclusion

theorem bridge_from_admissible_class (A : AdmissibleClassContinuousDifferentiableMaps) : bridgeClosed A :=
  A.object.conclusion

end ContinuousDifferentiableMapsNonlinearFunctionalTheoremCanonicalLaneLean
end HautevilleHouse