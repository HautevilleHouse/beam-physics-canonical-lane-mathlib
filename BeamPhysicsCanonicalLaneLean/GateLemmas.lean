import BeamPhysicsCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace BeamPhysicsCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A :=
  exact A.gateWitness

end BeamPhysicsCanonicalLaneLean
end HautevilleHouse
