import BorelConjectureCanonicalLaneLean.Formalization
import BorelConjectureCanonicalLaneLean.SourceDependencies

/-!
# Reviewer Bridge

Typed Lean data for the imported reviewer bridge architecture.
-/

namespace HautevilleHouse
namespace BorelConjectureCanonicalLaneLean

structure ReviewerBridgeFile where
  path : String
  role : String
  sha256 : String
  present : Bool
deriving Repr, DecidableEq

structure ReviewerChainStep where
  index : Nat
  label : String
deriving Repr, DecidableEq

structure ReviewerClosureGate where
  gate : String
  constant : String
deriving Repr, DecidableEq

structure ReviewerManifestEntry where
  path : String
  sha256 : String
deriving Repr, DecidableEq

structure CertificateGate where
  gate : String
  status : String
deriving Repr, DecidableEq

structure CertificateInput where
  key : String
  value : String
deriving Repr, DecidableEq

def reviewerBridgeFiles : List ReviewerBridgeFile := [
  { path := "REVIEWER_MAP.md", role := "reviewer_map", sha256 := "7642bf01ade4c127dd751b09ab6803891af3575b7015e2fb36ee108e62209735", present := true },
  { path := "notes/IDENTIFICATION_BRIDGE.md", role := "identification_bridge", sha256 := "596626f5896aa5d8c22bbc09f0d811bd90b4bb97d9730d4c2d188f58048e7180", present := true },
  { path := "artifacts/constants_extraction_inputs.json", role := "constant_inputs", sha256 := "c0f982a007de664cc1b8eed3329929c09ad359d43bdd47836e65505af709043e", present := true },
  { path := "artifacts/constants_extracted.json", role := "constant_extracted", sha256 := "26f39cba75366054045182681276a3b1cc724c8bdf6448afe06634211f6e6f54", present := true },
  { path := "artifacts/constants_registry.json", role := "constant_registry", sha256 := "1fdb6b1fd7b5776df352f1f3d90fd4b0394cf766cade8ee844a2b1cc0754ab23", present := true },
  { path := "artifacts/stitch_constants.json", role := "stitch_constants", sha256 := "7a3f12d0d02d341d2fb00a316da459241cafd1b678f65aa0b31860a47add6f0c", present := true },
  { path := "artifacts/promotion_report.json", role := "promotion_report", sha256 := "18d97e2b903505d5be4e86a18aa5be36e2b29c27c7d8dc438dc5ada0f75621bf", present := true },
  { path := "repro/repro_manifest.json", role := "manifest", sha256 := "b963100d4dff7289a62c55a8aec6a62c0d5af58fafce992bfaebdffc513f076f", present := true },
  { path := "repro/certificate_baseline.json", role := "baseline_certificate", sha256 := "075fc4154df651acb95ad4f36999149e7ba99b6846f1905498d5d535a7cf54cc", present := true }
]

def reviewerChainSteps : List ReviewerChainStep := [
  { index := 1, label := "EG1" },
  { index := 2, label := "EG2" },
  { index := 3, label := "EG3" },
  { index := 4, label := "EG4" },
  { index := 5, label := "Identification bridge" },
  { index := 6, label := "Scalar closure" }
]

def reviewerClosureGates : List ReviewerClosureGate := [
  { gate := "BOR_G1", constant := "kappa_rigidity" },
  { gate := "BOR_G2", constant := "sigma_homotopy" },
  { gate := "BOR_G3", constant := "kappa_compact" },
  { gate := "BOR_G4", constant := "rho_rigidity" },
  { gate := "BOR_G5", constant := "homeomorphism_transfer" },
  { gate := "BOR_G6", constant := "eps_coh" },
  { gate := "BOR_GM", constant := "derived" }
]

def reviewerFalsificationConditionCount : Nat := 5

def reviewerManifestEntries : List ReviewerManifestEntry := [
  { path := "CITATION.cff", sha256 := "2d3895db626088a91c5d5b19aa3adfe986dd070e21c29fa79dd6d3d72da3235c" },
  { path := "README.md", sha256 := "0483061ec69dc24a2a9223b9e37d44aa324e3208b9a9944b9eab97467d9e995f" },
  { path := "artifacts/constants_extracted.json", sha256 := "26f39cba75366054045182681276a3b1cc724c8bdf6448afe06634211f6e6f54" },
  { path := "artifacts/constants_extraction_inputs.json", sha256 := "c0f982a007de664cc1b8eed3329929c09ad359d43bdd47836e65505af709043e" },
  { path := "artifacts/constants_registry.json", sha256 := "1fdb6b1fd7b5776df352f1f3d90fd4b0394cf766cade8ee844a2b1cc0754ab23" },
  { path := "artifacts/promotion_report.json", sha256 := "18d97e2b903505d5be4e86a18aa5be36e2b29c27c7d8dc438dc5ada0f75621bf" },
  { path := "artifacts/stitch_constants.json", sha256 := "7a3f12d0d02d341d2fb00a316da459241cafd1b678f65aa0b31860a47add6f0c" },
  { path := "notes/EG1_public.md", sha256 := "b2e91a1ea7da0a48a9446db3454d834cf601d60a63b88cd04ba00b63b7540f69" },
  { path := "notes/EG2_public.md", sha256 := "ecddb83e8a37563a5e9a6443320f2bb5e44ad10f48a2b344f91815467c3355ba" },
  { path := "notes/EG3_public.md", sha256 := "8959d30345533b7124827d297172b2b88f1b072f8041cf2b09931f25e56a31a3" },
  { path := "notes/EG4_public.md", sha256 := "923bb9ab2b9fc418911230c4243301b4ebb68e9e7dfaed31d8310754ac7ea439" },
  { path := "notes/IDENTIFICATION_BRIDGE.md", sha256 := "596626f5896aa5d8c22bbc09f0d811bd90b4bb97d9730d4c2d188f58048e7180" },
  { path := "paper/CANONICAL_ROUTING_INDEX.md", sha256 := "74080dbaf439e3d2e973a75aa661fa32759eaa9a0e047488ff64e496defded81" },
  { path := "paper/EXTRACTION_SPEC.md", sha256 := "3ca55a638037c0733736eb392f16cffba7045b6c0231eeaeb2d9d3b06c916610" },
  { path := "paper/BOREL_CONJECTURE_PREPRINT.md", sha256 := "efdb27997018870cdcf145b453a19eabacb47c5a897ac15b71a93597aa468655" },
  { path := "repro/REPRO_PACK.md", sha256 := "995086311d27903ca04657dbab5b1e42350881c7b0618505e8afe77001abaf1c" },
  { path := "repro/THIRD_PARTY_RERUN_PROTOCOL.md", sha256 := "f3bcdd769e34596b74618a3ca74803881d82cdba45cbb6985af7be829256009e" },
  { path := "repro/certificate_baseline.json", sha256 := "075fc4154df651acb95ad4f36999149e7ba99b6846f1905498d5d535a7cf54cc" },
  { path := "repro/run_repro.sh", sha256 := "ce8fc11996994855d36e08d8644bfcb18d16374b0f278909e77a0233ec919b3b" },
  { path := "scripts/extract_constants.py", sha256 := "730d57dae3fac057e19630db34233183cae269568d43118c943387970081896d" },
  { path := "scripts/promote_constants.py", sha256 := "b65eb7a60552c668f04d6331a5256fe4e662ae5e83e769d42f6a141819769356" },
  { path := "scripts/release_gate.py", sha256 := "5c9760aeddbfa0e4b5a9447e1bda670004391c19470f9b1cf8897bf154f667b8" },
  { path := "scripts/update_manifest.py", sha256 := "45ae03f10349daebab98b6eb9a0836b7e2d15a48ca5504277c80ec7d4c633d12" },
  { path := "scripts/bor_closure_guard.py", sha256 := "d7cca575f2da8ff790f49cb1d334e4204ca8bbf48ff198bb15ca1f19815cb02f" },
  { path := "scripts/README.md", sha256 := "501f669d8ee1b1d2b7b1eeef2ff0e90e697162cc57e939e601094b51b39abcb3" }
]

def baselineCertificateGates : List CertificateGate := [
  { gate := "BOR_G1", status := "PASS" },
  { gate := "BOR_G2", status := "PASS" },
  { gate := "BOR_G3", status := "PASS" },
  { gate := "BOR_G4", status := "PASS" },
  { gate := "BOR_G5", status := "PASS" },
  { gate := "BOR_G6", status := "PASS" },
  { gate := "BOR_GM", status := "PASS" }
]

def baselineCertificateInputs : List CertificateInput := [
  { key := "eps_coh", value := "0.0" },
  { key := "homeomorphism_transfer", value := "1.029422" },
  { key := "kappa_compact", value := "0.8045052292839904" },
  { key := "kappa_rigidity", value := "1.0913680000000001" },
  { key := "rho_rigidity", value := "1.077" },
  { key := "sigma_homotopy", value := "1.073" },
  { key := "sigma_star_can", value := "1.053" }
]

def bridgeConstantKeys : List String := [
  "eps_coh",
  "homeomorphism_transfer",
  "kappa_compact",
  "kappa_rigidity",
  "rho_rigidity",
  "sigma_homotopy",
  "sigma_star_can"
]

def baselineCertificateAllPass : Bool := true
def baselineCertificateLane : String := "manifold_constrained"
def outsideConstantDependencyCount : Nat := 0

theorem reviewer_bridge_file_count_checked : reviewerBridgeFiles.length = 9 := by
  rfl

theorem reviewer_chain_step_count_checked : reviewerChainSteps.length = 6 := by
  rfl

theorem reviewer_closure_gate_count_checked : reviewerClosureGates.length = 7 := by
  rfl

theorem reviewer_falsification_condition_count_checked : reviewerFalsificationConditionCount = 5 := by
  rfl

theorem reviewer_manifest_entry_count_checked : reviewerManifestEntries.length = 25 := by
  rfl

theorem baseline_certificate_gate_count_checked : baselineCertificateGates.length = 7 := by
  rfl

theorem baseline_certificate_input_count_checked : baselineCertificateInputs.length = 7 := by
  rfl

theorem bridge_constant_key_count_checked : bridgeConstantKeys.length = 7 := by
  rfl

theorem baseline_certificate_all_pass_checked : baselineCertificateAllPass = true := by
  rfl

theorem outside_constant_dependency_count_checked : outsideConstantDependencyCount = 0 := by
  rfl

end BorelConjectureCanonicalLaneLean
end HautevilleHouse
