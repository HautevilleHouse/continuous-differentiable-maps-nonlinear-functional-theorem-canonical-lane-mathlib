import ContinuousDifferentiableMapsNonlinearFunctionalTheoremCanonicalLaneLean.ChainRuleHigherOrderPackage

namespace HautevilleHouse
namespace ContinuousDifferentiableMapsNonlinearFunctionalTheoremCanonicalLaneLean

structure FixedPointIterationScheme {C : ChainRuleHigherOrderPackage} where
  contractionCondition : Prop
  iterationConverges : Prop
  fixedPointUniqueness : Prop
  stabilityUnderPerturbation : Prop

structure FixedPointIterationEvidence {C : ChainRuleHigherOrderPackage}
    (F : FixedPointIterationScheme C) where
  contractionConditionClosed : F.contractionCondition
  iterationConvergesClosed : F.iterationConverges
  fixedPointUniquenessClosed : F.fixedPointUniqueness
  stabilityUnderPerturbationClosed : F.stabilityUnderPerturbation

def FixedPointIterationClosed {C : ChainRuleHigherOrderPackage}
    (F : FixedPointIterationScheme C) : Prop :=
  F.contractionCondition ∧ F.iterationConverges ∧ F.fixedPointUniqueness ∧ F.stabilityUnderPerturbation

theorem fixed_point_iteration_closed_from_evidence {C : ChainRuleHigherOrderPackage}
    (F : FixedPointIterationScheme C) (E : FixedPointIterationEvidence F) :
    FixedPointIterationClosed F :=
  And.intro E.contractionConditionClosed
    (And.intro E.iterationConvergesClosed
      (And.intro E.fixedPointUniquenessClosed E.stabilityUnderPerturbationClosed))

end ContinuousDifferentiableMapsNonlinearFunctionalTheoremCanonicalLaneLean
end HautevilleHouse