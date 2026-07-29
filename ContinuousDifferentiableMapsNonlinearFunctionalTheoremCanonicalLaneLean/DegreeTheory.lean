import ContinuousDifferentiableMapsNonlinearFunctionalTheoremCanonicalLaneLean.NonlinearFunctionalAnalysis

namespace HautevilleHouse
namespace ContinuousDifferentiableMapsNonlinearFunctionalTheoremCanonicalLaneLean

structure DegreeTheoryPackage {B : BanachSpaceMapsPackage}
    {N : NonlinearFunctionalAnalysisPackage B} where
  topologicalDegreeDefined : Prop
  homotopyInvariance : Prop
  boundaryValueProperty : Prop
  fixedPointIndexTheory : Prop
  multiplicityResults : Prop

structure DegreeTheoryEvidence {B : BanachSpaceMapsPackage}
    {N : NonlinearFunctionalAnalysisPackage B}
    (D : DegreeTheoryPackage N) where
  topologicalDegreeDefinedClosed : D.topologicalDegreeDefined
  homotopyInvarianceClosed : D.homotopyInvariance
  boundaryValuePropertyClosed : D.boundaryValueProperty
  fixedPointIndexTheoryClosed : D.fixedPointIndexTheory
  multiplicityResultsClosed : D.multiplicityResults

def DegreeTheoryClosed {B : BanachSpaceMapsPackage}
    {N : NonlinearFunctionalAnalysisPackage B}
    (D : DegreeTheoryPackage N) : Prop :=
  D.topologicalDegreeDefined ∧ D.homotopyInvariance ∧
  D.boundaryValueProperty ∧ D.fixedPointIndexTheory ∧
  D.multiplicityResults

theorem degree_theory_closed_from_evidence
    {B : BanachSpaceMapsPackage} {N : NonlinearFunctionalAnalysisPackage B}
    (D : DegreeTheoryPackage N) (E : DegreeTheoryEvidence D) :
    DegreeTheoryClosed D := by
  exact And.intro E.topologicalDegreeDefinedClosed
    (And.intro E.homotopyInvarianceClosed
      (And.intro E.boundaryValuePropertyClosed
        (And.intro E.fixedPointIndexTheoryClosed
          E.multiplicityResultsClosed)))

end ContinuousDifferentiableMapsNonlinearFunctionalTheoremCanonicalLaneLean
end HautevilleHouse