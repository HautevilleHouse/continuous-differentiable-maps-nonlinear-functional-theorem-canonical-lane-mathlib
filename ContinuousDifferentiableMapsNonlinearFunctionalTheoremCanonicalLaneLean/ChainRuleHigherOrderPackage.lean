import ContinuousDifferentiableMapsNonlinearFunctionalTheoremCanonicalLaneLean.NonlinearFunctionalInverseTheorem

namespace HautevilleHouse
namespace ContinuousDifferentiableMapsNonlinearFunctionalTheoremCanonicalLaneLean

structure ChainRuleHigherOrderPackage where
  compositionSmooth : Prop
  higherDerivatives : Prop
  chainRuleFormula : Prop
  faàDiBruno : Prop

structure ChainRuleHigherOrderEvidence (C : ChainRuleHigherOrderPackage) where
  compositionSmoothClosed : C.compositionSmooth
  higherDerivativesClosed : C.higherDerivatives
  chainRuleFormulaClosed : C.chainRuleFormula
  faàDiBrunoClosed : C.faàDiBruno

def ChainRuleHigherOrderClosed (C : ChainRuleHigherOrderPackage) : Prop :=
  C.compositionSmooth ∧ C.higherDerivatives ∧ C.chainRuleFormula ∧ C.faàDiBruno

theorem chain_rule_higher_order_closed_from_evidence (C : ChainRuleHigherOrderPackage)
    (E : ChainRuleHigherOrderEvidence C) : ChainRuleHigherOrderClosed C :=
  And.intro E.compositionSmoothClosed
    (And.intro E.higherDerivativesClosed
      (And.intro E.chainRuleFormulaClosed E.faàDiBrunoClosed))

end ContinuousDifferentiableMapsNonlinearFunctionalTheoremCanonicalLaneLean
end HautevilleHouse