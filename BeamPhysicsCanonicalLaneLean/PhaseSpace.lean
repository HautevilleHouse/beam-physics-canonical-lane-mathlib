import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BeamPhysicsCanonicalLaneLean

structure PhaseSpacePackage (B : BeamDynamicsPackage) where
  transversePhaseSpace : Type
  longitudinalPhaseSpace : Type
  emittance : Prop
  twissParameters : Prop
  phaseSpaceClosed : Prop

structure PhaseSpaceEvidence {B : BeamDynamicsPackage} (P : PhaseSpacePackage B) where
  emittanceClosed : P.emittance
  twissParametersClosed : P.twissParameters
  phaseSpaceClosedTerm : P.phaseSpaceClosed

def PhaseSpaceClosed {B : BeamDynamicsPackage} (P : PhaseSpacePackage B) : Prop :=
  P.emittance ∧ P.twissParameters ∧ P.phaseSpaceClosed

theorem phase_space_closed_from_evidence {B : BeamDynamicsPackage} (P : PhaseSpacePackage B) (E : PhaseSpaceEvidence P) :
    PhaseSpaceClosed P := by
  exact And.intro E.emittanceClosed (And.intro E.twissParametersClosed E.phaseSpaceClosedTerm)

end BeamPhysicsCanonicalLaneLean
end HautevilleHouse
