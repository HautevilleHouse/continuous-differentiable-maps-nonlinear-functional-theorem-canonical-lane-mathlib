import HautevilleHouse.ContinuousDifferentiableMapsNonlinearFunctionalTheoremCanonicalLaneLean.ImplicitFunction

namespace HautevilleHouse
namespace ContinuousDifferentiableMapsNonlinearFunctionalTheoremCanonicalLaneLean

structure CompactNonlinearOperatorsPackage {N : NonlinearFunctionalPackage}
    {D : ContinuousMapsDecompositionPackage N}
    {S : DifferentiableStructurePackage N D}
    {B : BanachFixedPointPackage N D S}
    {I : ImplicitFunctionPackage N D S B} where
  operator : N.domain → N.codomain
  compact : Prop
  nonlinear : Prop
  fixedPointIndex : ℤ

structure CompactNonlinearOperatorsEvidence {N : NonlinearFunctionalPackage}
    {D : ContinuousMapsDecompositionPackage N}
    {S : DifferentiableStructurePackage N D}
    {B : BanachFixedPointPackage N D S}
    {I : ImplicitFunctionPackage N D S B}
    (C : CompactNonlinearOperatorsPackage N D S B I) where
  compactClosed : C.compact
  nonlinearClosed : C.nonlinear

def CompactNonlinearOperatorsClosed {N : NonlinearFunctionalPackage}
    {D : ContinuousMapsDecompositionPackage N}
    {S : DifferentiableStructurePackage N D}
    {B : BanachFixedPointPackage N D S}
    {I : ImplicitFunctionPackage N D S B}
    (C : CompactNonlinearOperatorsPackage N D S B I) : Prop :=
  C.compact ∧ C.nonlinear

theorem compact_nonlinear_operators_closed_from_evidence {N : NonlinearFunctionalPackage}
    {D : ContinuousMapsDecompositionPackage N}
    {S : DifferentiableStructurePackage N D}
    {B : BanachFixedPointPackage N D S}
    {I : ImplicitFunctionPackage N D S B}
    (C : CompactNonlinearOperatorsPackage N D S B I)
    (E : CompactNonlinearOperatorsEvidence C) : CompactNonlinearOperatorsClosed C := by
  exact And.intro E.compactClosed E.nonlinearClosed

end ContinuousDifferentiableMapsNonlinearFunctionalTheoremCanonicalLaneLean
end HautevilleHouse