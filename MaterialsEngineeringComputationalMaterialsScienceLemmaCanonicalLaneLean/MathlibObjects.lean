import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Data.Set.Basic
import Mathlib.Data.List.Basic

namespace HautevilleHouse
namespace MaterialsEngineeringComputationalMaterialsScienceLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

abbrev MaterialStructure := String
abbrev Property := String

structure SimulationMethod where
  name : String
  accuracy : Nat
  scaling : Nat

def Decides (M : SimulationMethod) (P : Property) : Prop :=
  M.name = "DFT" → P = "bandgap"

structure MatCompSciAdmittedObject where
  material : MaterialStructure
  property : Property
  solver : SimulationMethod
  projectedLanguage : Property

end MaterialsEngineeringComputationalMaterialsScienceLemmaCanonicalLaneLean
end HautevilleHouse