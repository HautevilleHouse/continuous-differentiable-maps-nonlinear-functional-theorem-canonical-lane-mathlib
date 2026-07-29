import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ContinuousDifferentiableMapsNonlinearFunctionalTheoremCanonicalLaneLean.ContinuousDifferentiableMapStructure

namespace HautevilleHouse
namespace ContinuousDifferentiableMapsNonlinearFunctionalTheoremCanonicalLaneLean

structure NonlinearFunctionalAdmissibleClass where
  mapStructure : ContinuousDifferentiableMapStructure
  functionalWellDefined : Prop
  gateCondition : Prop
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def bridgeClosed (A : NonlinearFunctionalAdmissibleClass) : Prop :=
  ClosedDifferentiableMapStructure A.mapStructure ∧ A.functionalWellDefined

theorem bridge_from_admissible_class (A : NonlinearFunctionalAdmissibleClass) : bridgeClosed A := by
  exact And.intro (by
    have h : ClosedDifferentiableMapStructure A.mapStructure := sorry
    exact h
  ) A.functionalWellDefined

end ContinuousDifferentiableMapsNonlinearFunctionalTheoremCanonicalLaneLean
end HautevilleHouse