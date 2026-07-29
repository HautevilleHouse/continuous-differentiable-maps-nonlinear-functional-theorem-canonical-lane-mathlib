import HautevilleHouse.ContinuousDifferentiableMapsNonlinearFunctionalTheoremCanonicalLaneLean.ContinuousMapsDecomposition

namespace HautevilleHouse
namespace ContinuousDifferentiableMapsNonlinearFunctionalTheoremCanonicalLaneLean

structure DifferentiableStructurePackage {N : NonlinearFunctionalPackage}
    {D : ContinuousMapsDecompositionPackage N} where
  frechetDerivative : N.domain → (N.domain →L[ℝ] N.codomain)
  derivativeContinuous : Prop
  meanValueInequality : Prop
  inverseFunctionTheorem : Prop

structure DifferentiableStructureEvidence {N : NonlinearFunctionalPackage}
    {D : ContinuousMapsDecompositionPackage N} (S : DifferentiableStructurePackage N D) where
  derivativeContinuousClosed : S.derivativeContinuous
  meanValueInequalityClosed : S.meanValueInequality
  inverseFunctionTheoremClosed : S.inverseFunctionTheorem

def DifferentiableStructureClosed {N : NonlinearFunctionalPackage}
    {D : ContinuousMapsDecompositionPackage N} (S : DifferentiableStructurePackage N D) : Prop :=
  S.derivativeContinuous ∧ S.meanValueInequality ∧ S.inverseFunctionTheorem

theorem differentiable_structure_closed_from_evidence {N : NonlinearFunctionalPackage}
    {D : ContinuousMapsDecompositionPackage N} (S : DifferentiableStructurePackage N D)
    (E : DifferentiableStructureEvidence S) : DifferentiableStructureClosed S := by
  exact And.intro E.derivativeContinuousClosed
    (And.intro E.meanValueInequalityClosed E.inverseFunctionTheoremClosed)

end ContinuousDifferentiableMapsNonlinearFunctionalTheoremCanonicalLaneLean
end HautevilleHouse