import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringComputationalMaterialsScienceLemmaCanonicalLaneLean

structure PhaseFieldParameters where
  interfaceThickness : ℝ
  mobility : ℝ
  freeEnergyFunctional : (ℝ → ℝ) → ℝ

def cahnHilliardClosure (A : AdmissibleClass) : Prop :=
  let params : PhaseFieldParameters := A.lane.classicalObject
  params.interfaceThickness > 0 ∧ params.mobility > 0

theorem phase_field_bridge (A : AdmissibleClass) : cahnHilliardClosure A := by
  have hpos : A.lane.classicalObject.interfaceThickness > 0 := by
    exact A.lane.classicalObject_wellDefined.1
  have hmob : A.lane.classicalObject.mobility > 0 := by
    exact A.lane.classicalObject_wellDefined.2
  exact And.intro hpos hmob

end MaterialsEngineeringComputationalMaterialsScienceLemmaCanonicalLaneLean
end HautevilleHouse