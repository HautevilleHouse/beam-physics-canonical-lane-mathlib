import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BeamPhysicsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  BeamWitnessClosed A.object

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact A.object.conclusion

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

def ConstrainedBeamClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_beam_endgame (A : AdmissibleClass) : ConstrainedBeamClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BeamPhysicsCanonicalLaneLean
end HautevilleHouse
