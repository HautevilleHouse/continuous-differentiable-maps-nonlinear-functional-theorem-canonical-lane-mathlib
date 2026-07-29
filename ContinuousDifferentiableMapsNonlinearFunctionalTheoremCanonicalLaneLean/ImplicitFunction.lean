import HautevilleHouse.ContinuousDifferentiableMapsNonlinearFunctionalTheoremCanonicalLaneLean.BanachFixedPoint

namespace HautevilleHouse
namespace ContinuousDifferentiableMapsNonlinearFunctionalTheoremCanonicalLaneLean

structure ImplicitFunctionPackage {N : NonlinearFunctionalPackage}
    {D : ContinuousMapsDecompositionPackage N}
    {S : DifferentiableStructurePackage N D}
    {B : BanachFixedPointPackage N D S} where
  mapping : N.domain × N.domain → N.codomain
  differentiableInSecond : Prop
  partialDerivativeInvertible : Prop
  implicitSolution : N.domain → N.domain
  implicitEquation : ∀ x : N.domain, mapping (x, implicitSolution x) = 0

structure ImplicitFunctionEvidence {N : NonlinearFunctionalPackage}
    {D : ContinuousMapsDecompositionPackage N}
    {S : DifferentiableStructurePackage N D}
    {B : BanachFixedPointPackage N D S}
    (I : ImplicitFunctionPackage N D S B) where
  differentiableInSecondClosed : I.differentiableInSecond
  partialDerivativeInvertibleClosed : I.partialDerivativeInvertible
  implicitEquationClosed : I.implicitEquation = I.implicitEquation

def ImplicitFunctionClosed {N : NonlinearFunctionalPackage}
    {D : ContinuousMapsDecompositionPackage N}
    {S : DifferentiableStructurePackage N D}
    {B : BanachFixedPointPackage N D S} (I : ImplicitFunctionPackage N D S B) : Prop :=
  I.differentiableInSecond ∧ I.partialDerivativeInvertible

theorem implicit_function_closed_from_evidence {N : NonlinearFunctionalPackage}
    {D : ContinuousMapsDecompositionPackage N}
    {S : DifferentiableStructurePackage N D}
    {B : BanachFixedPointPackage N D S} (I : ImplicitFunctionPackage N D S B)
    (E : ImplicitFunctionEvidence I) : ImplicitFunctionClosed I := by
  exact And.intro E.differentiableInSecondClosed E.partialDerivativeInvertibleClosed

end ContinuousDifferentiableMapsNonlinearFunctionalTheoremCanonicalLaneLean
end HautevilleHouse