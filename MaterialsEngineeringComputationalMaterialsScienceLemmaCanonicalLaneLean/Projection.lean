import MaterialsEngineeringComputationalMaterialsScienceLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringComputationalMaterialsScienceLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure MatCompSciEndgameState where
  admittedObject : MatCompSciAdmittedObject

def projection : Projection MatCompSciEndgameState := {
  toFun := λ x => x
  idempotent := by
    intro x
    rfl
}

theorem proj_idempotent (x : MatCompSciEndgameState) :
    projection.toFun (projection.toFun x) = projection.toFun x := by
  exact projection.idempotent x

end MaterialsEngineeringComputationalMaterialsScienceLemmaCanonicalLaneLean
end HautevilleHouse