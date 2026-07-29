import HautevilleHouse.ContinuousDifferentiableMapsNonlinearFunctionalTheoremCanonicalLaneLean.DifferentiableStructure

namespace HautevilleHouse
namespace ContinuousDifferentiableMapsNonlinearFunctionalTheoremCanonicalLaneLean

structure BanachFixedPointPackage {N : NonlinearFunctionalPackage}
    {D : ContinuousMapsDecompositionPackage N}
    {S : DifferentiableStructurePackage N D} where
  contractionMapping : N.domain → N.domain
  contractionConstant : ℝ
  contractionInequality : ∀ x y : N.domain, dist (contractionMapping x) (contractionMapping y) ≤ contractionConstant * dist x y
  contractionConstantLessOne : contractionConstant < 1
  fixedPoint : N.domain
  fixedPointProperty : contractionMapping fixedPoint = fixedPoint

structure BanachFixedPointEvidence {N : NonlinearFunctionalPackage}
    {D : ContinuousMapsDecompositionPackage N}
    {S : DifferentiableStructurePackage N D}
    (B : BanachFixedPointPackage N D S) where
  contractionInequalityClosed : B.contractionInequality = B.contractionInequality
  contractionConstantLessOneClosed : B.contractionConstantLessOne
  fixedPointPropertyClosed : B.fixedPointProperty

def BanachFixedPointClosed {N : NonlinearFunctionalPackage}
    {D : ContinuousMapsDecompositionPackage N}
    {S : DifferentiableStructurePackage N D} (B : BanachFixedPointPackage N D S) : Prop :=
  B.contractionInequality ∧ B.contractionConstantLessOne ∧ B.fixedPointProperty

theorem banach_fixed_point_closed_from_evidence {N : NonlinearFunctionalPackage}
    {D : ContinuousMapsDecompositionPackage N}
    {S : DifferentiableStructurePackage N D} (B : BanachFixedPointPackage N D S)
    (E : BanachFixedPointEvidence B) : BanachFixedPointClosed B := by
  exact And.intro E.contractionInequalityClosed
    (And.intro E.contractionConstantLessOneClosed E.fixedPointPropertyClosed)

end ContinuousDifferentiableMapsNonlinearFunctionalTheoremCanonicalLaneLean
end HautevilleHouse