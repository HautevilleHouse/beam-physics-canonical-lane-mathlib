import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BeamPhysicsCanonicalLaneLean

structure AdmissibleBeamObject where
  beam : Type
  phaseSpace : Type
  distribution : beam → phaseSpace → ℕ
  conclusion : ∀ (b : beam), distribution b (phaseSpace) > 0

structure AdmissibleClass where
  object : AdmissibleBeamObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (∀ (b : A.object.beam), A.object.distribution b (A.object.phaseSpace) > 0) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BeamPhysicsCanonicalLaneLean
end HautevilleHouse