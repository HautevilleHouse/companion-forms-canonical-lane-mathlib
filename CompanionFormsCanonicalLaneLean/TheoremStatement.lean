import CompanionFormsCanonicalLaneLean.ReviewerBridge

/-!
# Theorem Statement Layer

This module internalizes the theorem-facing object for `companion-forms-canonical-lane`
and the manifold-constrained closure certificate imported by the reviewer bridge.
-/

namespace HautevilleHouse
namespace CompanionFormsCanonicalLaneLean

structure SourceBoundaryLedger where
  sourceKey : String
  theoremObject : String
  encodedLeanClaim : String
  sourceEvidenceRoute : String
  carriedSourceBoundary : String
  closureAuthority : String
deriving Repr, DecidableEq

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  manifoldConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String
  sourceBoundaryLedger : SourceBoundaryLedger
deriving Repr, DecidableEq

def sourceBoundaryLedger : SourceBoundaryLedger := {
  sourceKey := sourceRepository,
  theoremObject := sourceDescription,
  encodedLeanClaim := sourceTheoremBoundary.encodedLeanBoundary,
  sourceEvidenceRoute := sourceTheoremBoundary.sourceEvidenceRoute,
  carriedSourceBoundary := sourceTheoremBoundary.classicalRemainder,
  closureAuthority := sourceTheoremBoundary.closureAuthority
}

def sourceTheoremStatement : TheoremStatement := {
  sourceKey := sourceRepository,
  theoremName := sourceTheoremBoundary.sourceTheoremName,
  theoremObject := sourceDescription,
  classicalBoundary := sourceTheoremBoundary.claimBoundary,
  manifoldConstrainedStatement := "manifold-constrained theorem certificate for Companion Forms internalized through baseline gates, source constants, reviewer bridge, manifest hashes, outside-constant dependency count, and Mathlib-native closure layer",
  certificateLane := baselineCertificateLane,
  carriedRemainder := sourceTheoremBoundary.classicalRemainder,
  sourceBoundaryLedger := sourceBoundaryLedger
}

def ClassicalSourceBoundaryCarried : Prop :=
  formalizationCertificate.theoremBoundaryOpen = true ∧
  formalizationCertificate.sourceConjectureClosureClaimed = false

def ManifoldConstrainedTheoremClosed : Prop :=
  baselineCertificateLane = "manifold_constrained" ∧
  baselineCertificateAllPass = true ∧
  outsideConstantDependencyCount = 0

def SourceTheoremBoundaryRecorded : Prop :=
  sourceBoundaryLedger.sourceKey = sourceRepository ∧
  sourceBoundaryLedger.theoremObject = sourceDescription ∧
  sourceBoundaryLedger.encodedLeanClaim = sourceTheoremBoundary.encodedLeanBoundary ∧
  sourceBoundaryLedger.carriedSourceBoundary = sourceTheoremBoundary.classicalRemainder ∧
  formalizationCertificate.theoremBoundaryOpen = true ∧
  formalizationCertificate.sourceConjectureClosureClaimed = false

def TheoremLayerInternalized : Prop :=
  sourceTheoremStatement.sourceKey = sourceRepository ∧
  sourceTheoremStatement.certificateLane = baselineCertificateLane ∧
  sourceTheoremStatement.sourceBoundaryLedger = sourceBoundaryLedger ∧
  SourceTheoremBoundaryRecorded ∧
  ClassicalSourceBoundaryCarried ∧
  ManifoldConstrainedTheoremClosed

theorem theorem_statement_source_key_checked :
    sourceTheoremStatement.sourceKey = sourceRepository := by
  rfl

theorem theorem_statement_certificate_lane_checked :
    sourceTheoremStatement.certificateLane = baselineCertificateLane := by
  rfl

theorem theorem_statement_source_boundary_ledger_checked :
    sourceTheoremStatement.sourceBoundaryLedger = sourceBoundaryLedger := by
  rfl

theorem classical_source_boundary_carried_checked :
    ClassicalSourceBoundaryCarried := by
  exact And.intro rfl rfl

theorem manifold_constrained_theorem_closed_checked :
    ManifoldConstrainedTheoremClosed := by
  exact And.intro rfl (And.intro rfl rfl)

theorem source_theorem_boundary_recorded_checked :
    SourceTheoremBoundaryRecorded := by
  exact And.intro rfl (And.intro rfl (And.intro rfl (And.intro rfl (And.intro rfl rfl))))

theorem theorem_layer_internalized_checked :
    TheoremLayerInternalized := by
  exact And.intro rfl (And.intro rfl (And.intro rfl (And.intro source_theorem_boundary_recorded_checked (And.intro classical_source_boundary_carried_checked manifold_constrained_theorem_closed_checked))))

end CompanionFormsCanonicalLaneLean
end HautevilleHouse
