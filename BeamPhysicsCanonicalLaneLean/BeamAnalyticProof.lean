import BeamPhysicsCanonicalLaneLean.BeamQuality
import Mathlib.Analysis.SpecialFunctions.Sqrt

namespace HautevilleHouse
namespace BeamPhysicsCanonicalLaneLean

structure TransferMapAnalyticCertificate (L : BeamQualityPackage) where
  matrixSymplectic : Prop
  matrixDeterminantOne : Prop
  focussingStrengthPositive : Prop
  matrixSymplecticClosed : matrixSymplectic
  matrixDeterminantOneClosed : matrixDeterminantOne
  focussingStrengthPositiveClosed : focussingStrengthPositive
  qualityEvidence : BeamQualityEvidence L

def TransferMapAnalyticCertificateClosed {L : BeamQualityPackage} (C : TransferMapAnalyticCertificate L) : Prop :=
  C.matrixSymplectic ∧ C.matrixDeterminantOne ∧ C.focussingStrengthPositive ∧ BeamQualityClosed L

theorem transfer_map_analytic_certificate_closed {L : BeamQualityPackage} (C : TransferMapAnalyticCertificate L) : TransferMapAnalyticCertificateClosed C :=
  exact And.intro C.matrixSymplecticClosed (And.intro C.matrixDeterminantOneClosed (And.intro C.focussingStrengthPositiveClosed (beam_quality_closed_from_evidence L C.qualityEvidence)))

structure FocusingAnalyticCertificate (L : BeamQualityPackage) where
  quadrupoleStrengthPositive : Prop
  phaseAdvancePositive : Prop
  betaFunctionFinite : Prop
  quadrupoleStrengthPositiveClosed : quadrupoleStrengthPositive
  phaseAdvancePositiveClosed : phaseAdvancePositive
  betaFunctionFiniteClosed : betaFunctionFinite
  qualityEvidence : BeamQualityEvidence L

def FocusingAnalyticCertificateClosed {L : BeamQualityPackage} (C : FocusingAnalyticCertificate L) : Prop :=
  C.quadrupoleStrengthPositive ∧ C.phaseAdvancePositive ∧ C.betaFunctionFinite ∧ BeamQualityClosed L

theorem focusing_analytic_certificate_closed {L : BeamQualityPackage} (C : FocusingAnalyticCertificate L) : FocusingAnalyticCertificateClosed C :=
  exact And.intro C.quadrupoleStrengthPositiveClosed (And.intro C.phaseAdvancePositiveClosed (And.intro C.betaFunctionFiniteClosed (beam_quality_closed_from_evidence L C.qualityEvidence)))

structure EmittanceAnalyticCertificate (L : BeamQualityPackage) where
  rmsEmittanceFinite : Prop
  emittanceConservation : Prop
  courantSnyderInvariant : Prop
  rmsEmittanceFiniteClosed : rmsEmittanceFinite
  emittanceConservationClosed : emittanceConservation
  courantSnyderInvariantClosed : courantSnyderInvariant
  qualityEvidence : BeamQualityEvidence L

def EmittanceAnalyticCertificateClosed {L : BeamQualityPackage} (C : EmittanceAnalyticCertificate L) : Prop :=
  C.rmsEmittanceFinite ∧ C.emittanceConservation ∧ C.courantSnyderInvariant ∧ BeamQualityClosed L

theorem emittance_analytic_certificate_closed {L : BeamQualityPackage} (C : EmittanceAnalyticCertificate L) : EmittanceAnalyticCertificateClosed C :=
  exact And.intro C.rmsEmittanceFiniteClosed (And.intro C.emittanceConservationClosed (And.intro C.courantSnyderInvariantClosed (beam_quality_closed_from_evidence L C.qualityEvidence)))

end BeamPhysicsCanonicalLaneLean
end HautevilleHouse
