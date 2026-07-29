import BeamPhysicsCanonicalLaneLean.BeamAnalyticProof

namespace HautevilleHouse
namespace BeamPhysicsCanonicalLaneLean

structure TransferMapEvidenceTerms {L : BeamQualityPackage} (C : TransferMapAnalyticCertificate L) where
  matrixSymplecticTerm : C.matrixSymplectic
  matrixDeterminantOneTerm : C.matrixDeterminantOne
  focussingStrengthPositiveTerm : C.focussingStrengthPositive
  certificateClosed : TransferMapAnalyticCertificateClosed C

def TransferMapAnalyticCertificate.evidenceTerms {L : BeamQualityPackage} (C : TransferMapAnalyticCertificate L) : TransferMapEvidenceTerms C :=
  { matrixSymplecticTerm := C.matrixSymplecticClosed
    matrixDeterminantOneTerm := C.matrixDeterminantOneClosed
    focussingStrengthPositiveTerm := C.focussingStrengthPositiveClosed
    certificateClosed := transfer_map_analytic_certificate_closed C
  }

structure FocusingEvidenceTerms {L : BeamQualityPackage} (C : FocusingAnalyticCertificate L) where
  quadrupoleStrengthPositiveTerm : C.quadrupoleStrengthPositive
  phaseAdvancePositiveTerm : C.phaseAdvancePositive
  betaFunctionFiniteTerm : C.betaFunctionFinite
  certificateClosed : FocusingAnalyticCertificateClosed C

def FocusingAnalyticCertificate.evidenceTerms {L : BeamQualityPackage} (C : FocusingAnalyticCertificate L) : FocusingEvidenceTerms C :=
  { quadrupoleStrengthPositiveTerm := C.quadrupoleStrengthPositiveClosed
    phaseAdvancePositiveTerm := C.phaseAdvancePositiveClosed
    betaFunctionFiniteTerm := C.betaFunctionFiniteClosed
    certificateClosed := focusing_analytic_certificate_closed C
  }

structure EmittanceEvidenceTerms {L : BeamQualityPackage} (C : EmittanceAnalyticCertificate L) where
  rmsEmittanceFiniteTerm : C.rmsEmittanceFinite
  emittanceConservationTerm : C.emittanceConservation
  courantSnyderInvariantTerm : C.courantSnyderInvariant
  certificateClosed : EmittanceAnalyticCertificateClosed C

def EmittanceAnalyticCertificate.evidenceTerms {L : BeamQualityPackage} (C : EmittanceAnalyticCertificate L) : EmittanceEvidenceTerms C :=
  { rmsEmittanceFiniteTerm := C.rmsEmittanceFiniteClosed
    emittanceConservationTerm := C.emittanceConservationClosed
    courantSnyderInvariantTerm := C.courantSnyderInvariantClosed
    certificateClosed := emittance_analytic_certificate_closed C
  }

end BeamPhysicsCanonicalLaneLean
end HautevilleHouse
