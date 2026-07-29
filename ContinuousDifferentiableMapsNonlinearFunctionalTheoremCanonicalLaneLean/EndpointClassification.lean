import ContinuousDifferentiableMapsNonlinearFunctionalTheoremCanonicalLaneLean.MorseTheory

namespace HautevilleHouse
namespace ContinuousDifferentiableMapsNonlinearFunctionalTheoremCanonicalLaneLean

structure EndpointClassificationPackage {B : BanachSpaceMapsPackage}
    {N : NonlinearFunctionalAnalysisPackage B}
    {D : DegreeTheoryPackage N}
    {M : MorseTheoryPackage D} where
  targetBanachSpace : Type u
  targetTopology : TopologicalSpace targetBanachSpace
  compactDifferentiableMaps : Prop
  endpointAttained : Prop
  criticalPointExistence : Prop
  endpointMatchesStatement : Prop

structure EndpointClassificationEvidence {B : BanachSpaceMapsPackage}
    {N : NonlinearFunctionalAnalysisPackage B}
    {D : DegreeTheoryPackage N}
    {M : MorseTheoryPackage D}
    (E : EndpointClassificationPackage M) where
  compactDifferentiableMapsClosed : E.compactDifferentiableMaps
  endpointAttainedClosed : E.endpointAttained
  criticalPointExistenceClosed : E.criticalPointExistence
  endpointMatchesStatementClosed : E.endpointMatchesStatement

def EndpointClassificationClosed {B : BanachSpaceMapsPackage}
    {N : NonlinearFunctionalAnalysisPackage B}
    {D : DegreeTheoryPackage N}
    {M : MorseTheoryPackage D}
    (E : EndpointClassificationPackage M) : Prop :=
  E.compactDifferentiableMaps ∧ E.endpointAttained ∧
  E.criticalPointExistence ∧ E.endpointMatchesStatement

theorem endpoint_classification_closed_from_evidence
    {B : BanachSpaceMapsPackage} {N : NonlinearFunctionalAnalysisPackage B}
    {D : DegreeTheoryPackage N} {M : MorseTheoryPackage D}
    (E : EndpointClassificationPackage M)
    (Ev : EndpointClassificationEvidence E) :
    EndpointClassificationClosed E := by
  exact And.intro Ev.compactDifferentiableMapsClosed
    (And.intro Ev.endpointAttainedClosed
      (And.intro Ev.criticalPointExistenceClosed
        Ev.endpointMatchesStatementClosed))

theorem endpoint_classification_supplies_statement
    {B : BanachSpaceMapsPackage} {N : NonlinearFunctionalAnalysisPackage B}
    {D : DegreeTheoryPackage N} {M : MorseTheoryPackage D}
    (E : EndpointClassificationPackage M) : E.endpointMatchesStatement :=
  E.endpointMatchesStatement

end ContinuousDifferentiableMapsNonlinearFunctionalTheoremCanonicalLaneLean
end HautevilleHouse