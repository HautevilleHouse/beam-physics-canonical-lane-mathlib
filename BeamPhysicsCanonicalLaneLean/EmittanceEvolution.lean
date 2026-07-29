import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BeamPhysicsCanonicalLaneLean

structure EmittancePackage (O : BeamAdmittedObject) where
  geometricEmittance : Prop
  normalizedEmittance : Prop
  brightness : Prop
  evolutionEquation : Prop

structure EmittanceEvidence (E : EmittancePackage O) where
  geometricEmittanceClosed : E.geometricEmittance
  normalizedEmittanceClosed : E.normalizedEmittance
  brightnessClosed : E.brightness
  evolutionEquationClosed : E.evolutionEquation

def EmittanceClosed (E : EmittancePackage O) : Prop :=
  E.geometricEmittance ∧ E.normalizedEmittance ∧ E.brightness ∧ E.evolutionEquation

theorem emittance_closed_from_evidence (E : EmittancePackage O) (Ev : EmittanceEvidence E) : EmittanceClosed E :=
  And.intro Ev.geometricEmittanceClosed (And.intro Ev.normalizedEmittanceClosed (And.intro Ev.brightnessClosed Ev.evolutionEquationClosed))

end BeamPhysicsCanonicalLaneLean
end HautevilleHouse