import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BeamPhysicsCanonicalLaneLean

structure LatticePackage (O : BeamAdmittedObject) where
  elementSequence : Type
  transferMaps : Type
  stabilityCondition : Prop
  chromaticity : Prop

structure LatticeEvidence (L : LatticePackage O) where
  stabilityConditionClosed : L.stabilityCondition
  chromaticityClosed : L.chromaticity

def LatticeClosed (L : LatticePackage O) : Prop :=
  L.stabilityCondition ∧ L.chromaticity

theorem lattice_closed_from_evidence (L : LatticePackage O) (E : LatticeEvidence L) : LatticeClosed L :=
  And.intro E.stabilityConditionClosed E.chromaticityClosed

end BeamPhysicsCanonicalLaneLean
end HautevilleHouse