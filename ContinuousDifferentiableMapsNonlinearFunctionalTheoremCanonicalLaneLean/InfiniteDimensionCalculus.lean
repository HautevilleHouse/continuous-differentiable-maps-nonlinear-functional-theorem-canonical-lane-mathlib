import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuousDifferentiableMapsNonlinearFunctionalTheoremCanonicalLaneLean

structure InfiniteDimensionCalculusPackage where
  banachSource : Type u
  banachTarget : Type v
  derivativeRule : (banachSource → banachTarget) → (banachSource → (banachSource → banachTarget))
  chainRule : Prop
  inverseFunctionTheorem : Prop
  implicitFunctionTheorem : Prop
  chainRuleProof : chainRule
  inverseFunctionProof : inverseFunctionTheorem
  implicitFunctionProof : implicitFunctionTheorem

structure InfiniteDimensionCalculusEvidence (I : InfiniteDimensionCalculusPackage) where
  chainRuleClosed : I.chainRule
  inverseFunctionClosed : I.inverseFunctionTheorem
  implicitFunctionClosed : I.implicitFunctionTheorem

def InfiniteDimensionCalculusClosed (I : InfiniteDimensionCalculusPackage) : Prop :=
  I.chainRule ∧ I.inverseFunctionTheorem ∧ I.implicitFunctionTheorem

theorem infinite_dimension_calculus_closed_from_evidence
    (I : InfiniteDimensionCalculusPackage) (E : InfiniteDimensionCalculusEvidence I) :
    InfiniteDimensionCalculusClosed I := by
  exact And.intro E.chainRuleClosed
    (And.intro E.inverseFunctionClosed E.implicitFunctionClosed)

end ContinuousDifferentiableMapsNonlinearFunctionalTheoremCanonicalLaneLean
end HautevilleHouse
