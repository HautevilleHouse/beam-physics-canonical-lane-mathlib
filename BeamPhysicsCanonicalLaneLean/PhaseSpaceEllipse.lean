import BeamPhysicsCanonicalLaneLean.BeamBridgeLemmas

namespace HautevilleHouse
namespace BeamPhysicsCanonicalLaneLean

structure PhaseSpaceEllipsePackage where
  ellipseEquation : Prop
  areaInvariant : Prop
  twissParameterRelation : Prop
  canonicalTransformation : Prop

structure PhaseSpaceEllipseEvidence (P : PhaseSpaceEllipsePackage) where
  ellipseEquationClosed : P.ellipseEquation
  areaInvariantClosed : P.areaInvariant
  twissParameterRelationClosed : P.twissParameterRelation
  canonicalTransformationClosed : P.canonicalTransformation

def PhaseSpaceEllipseClosed (P : PhaseSpaceEllipsePackage) : Prop :=
  P.ellipseEquation ∧ P.areaInvariant ∧ P.twissParameterRelation ∧ P.canonicalTransformation

theorem phase_space_ellipse_closed_from_evidence (P : PhaseSpaceEllipsePackage) (ev : PhaseSpaceEllipseEvidence P) :
    PhaseSpaceEllipseClosed P := by
  exact And.intro ev.ellipseEquationClosed
    (And.intro ev.areaInvariantClosed
      (And.intro ev.twissParameterRelationClosed ev.canonicalTransformationClosed))

end BeamPhysicsCanonicalLaneLean
end HautevilleHouse