import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BeamPhysicsCanonicalLaneLean

structure BeamAdmittedObject where
  beam : Type
  phaseSpace : Type
  dynamics : Prop
  conclusion : dynamics

structure AdmissibleClass where
  object : BeamAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  BeamWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BeamPhysicsCanonicalLaneLean
end HautevilleHouse
