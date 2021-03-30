(* WARNING: This file is generated by Edsger, the DeepSEA compiler.
            All modification will be lost when regenerating. *)
(* Module swaps_general.CertiKOS for swaps_general.ds *)
Require Import BinPos.
Require Import DeepSpec.Runtime.
Require Import swaps_general.EdsgerIdents.
Require Import swaps_general.DataTypes.
Require Import swaps_general.DataTypeOps.
Require Import swaps_general.DataTypeProofs.

Section EdsgerGen.


Require Import compcert.lib.Coqlib.
Require Import liblayers.lib.Decision.
Require Import liblayers.compcertx.ErrorMonad.
Require Import liblayers.compcertx.MakeProgram.
Require Import compcertx.common.MemimplX.
Require Import liblayers.compcertx.MakeProgramImpl.
Require Import liblayers.compat.CompatLayers.
Require Import mcertikos.layerlib.LAsmModuleSemDef.
Require Import mcertikos.layerlib.CompCertiKOS.

Local Instance mwd_ops: MemWithData.UseMemWithData Memimpl.mem.

Require Import swaps_general.LayerEVMOPCODE.
Require Import swaps_general.LayerSWAPCONTRACT.

Definition EVMOpcode_transfer_core := (@EVMOpcode_transfer Memimpl.mem memory_model_ops _ _ make_program_ops make_program_prf).
Definition EVMOpcode_transfer_func := (synth_func_func EVMOpcode_transfer_core).

Definition DiGraph_initialize_core := (@DiGraph_initialize Memimpl.mem memory_model_ops _ _ make_program_ops make_program_prf).
Definition DiGraph_initialize_func := (synth_func_func DiGraph_initialize_core).

Definition DiGraph_is_leader_core := (@DiGraph_is_leader Memimpl.mem memory_model_ops _ _ make_program_ops make_program_prf).
Definition DiGraph_is_leader_func := (synth_func_func DiGraph_is_leader_core).

Definition DiGraph_is_party_core := (@DiGraph_is_party Memimpl.mem memory_model_ops _ _ make_program_ops make_program_prf).
Definition DiGraph_is_party_func := (synth_func_func DiGraph_is_party_core).

Definition DiGraph_is_edge_core := (@DiGraph_is_edge Memimpl.mem memory_model_ops _ _ make_program_ops make_program_prf).
Definition DiGraph_is_edge_func := (synth_func_func DiGraph_is_edge_core).

Definition DiGraph_get_leader_ind_core := (@DiGraph_get_leader_ind Memimpl.mem memory_model_ops _ _ make_program_ops make_program_prf).
Definition DiGraph_get_leader_ind_func := (synth_func_func DiGraph_get_leader_ind_core).

Definition DiGraph_get_party_ind_core := (@DiGraph_get_party_ind Memimpl.mem memory_model_ops _ _ make_program_ops make_program_prf).
Definition DiGraph_get_party_ind_func := (synth_func_func DiGraph_get_party_ind_core).

Definition DiGraph_valid_path_core := (@DiGraph_valid_path Memimpl.mem memory_model_ops _ _ make_program_ops make_program_prf).
Definition DiGraph_valid_path_func := (synth_func_func DiGraph_valid_path_core).

Definition DiGraph_sign_follower_core := (@DiGraph_sign_follower Memimpl.mem memory_model_ops _ _ make_program_ops make_program_prf).
Definition DiGraph_sign_follower_func := (synth_func_func DiGraph_sign_follower_core).

Definition DiGraph_sign_leader_core := (@DiGraph_sign_leader Memimpl.mem memory_model_ops _ _ make_program_ops make_program_prf).
Definition DiGraph_sign_leader_func := (synth_func_func DiGraph_sign_leader_core).

Definition DiGraph_can_sign_follower_core := (@DiGraph_can_sign_follower Memimpl.mem memory_model_ops _ _ make_program_ops make_program_prf).
Definition DiGraph_can_sign_follower_func := (synth_func_func DiGraph_can_sign_follower_core).

Definition DiGraph_get_path_len_core := (@DiGraph_get_path_len Memimpl.mem memory_model_ops _ _ make_program_ops make_program_prf).
Definition DiGraph_get_path_len_func := (synth_func_func DiGraph_get_path_len_core).

Definition DiGraph_diam_core := (@DiGraph_diam Memimpl.mem memory_model_ops _ _ make_program_ops make_program_prf).
Definition DiGraph_diam_func := (synth_func_func DiGraph_diam_core).

Definition DiGraph_maxpathlen_core := (@DiGraph_maxpathlen Memimpl.mem memory_model_ops _ _ make_program_ops make_program_prf).
Definition DiGraph_maxpathlen_func := (synth_func_func DiGraph_maxpathlen_core).

Definition EVMOPCODE_impl : res LAsm.module := 
  ret (∅).

Definition SwapContract_initialize_core := (@SwapContract_initialize Memimpl.mem memory_model_ops _ _ make_program_ops make_program_prf).
Definition SwapContract_initialize_func := (synth_func_func SwapContract_initialize_core).

Definition SwapContract_unlock_core := (@SwapContract_unlock Memimpl.mem memory_model_ops _ _ make_program_ops make_program_prf).
Definition SwapContract_unlock_func := (synth_func_func SwapContract_unlock_core).

Definition SwapContract_claim_core := (@SwapContract_claim Memimpl.mem memory_model_ops _ _ make_program_ops make_program_prf).
Definition SwapContract_claim_func := (synth_func_func SwapContract_claim_core).

Definition SwapContract_refund_core := (@SwapContract_refund Memimpl.mem memory_model_ops _ _ make_program_ops make_program_prf).
Definition SwapContract_refund_func := (synth_func_func SwapContract_refund_core).

Definition SWAPCONTRACT_impl : res LAsm.module := 
  M_SwapContract_initialize <- CompCertiKOS.transf_module (ident_SwapContract_initialize ↦ SwapContract_initialize_func);
  M_SwapContract_unlock <- CompCertiKOS.transf_module (ident_SwapContract_unlock ↦ SwapContract_unlock_func);
  M_SwapContract_claim <- CompCertiKOS.transf_module (ident_SwapContract_claim ↦ SwapContract_claim_func);
  M_SwapContract_refund <- CompCertiKOS.transf_module (ident_SwapContract_refund ↦ SwapContract_refund_func);
  ret (var_SwapContract__assetAmount_ident ↦ SwapContract__assetAmount_globvar ⊕ var_SwapContract__timelocks_ident ↦ SwapContract__timelocks_globvar ⊕ var_SwapContract__hashlocks_ident ↦ SwapContract__hashlocks_globvar ⊕ var_SwapContract__party_ident ↦ SwapContract__party_globvar ⊕ var_SwapContract__counterparty_ident ↦ SwapContract__counterparty_globvar ⊕ var_SwapContract__start_ident ↦ SwapContract__start_globvar ⊕ var_SwapContract__delta_ident ↦ SwapContract__delta_globvar ⊕ var_SwapContract__unlocked_ident ↦ SwapContract__unlocked_globvar ⊕ var_SwapContract__ended_ident ↦ SwapContract__ended_globvar ⊕ var_SwapContract__canrefund_ident ↦ SwapContract__canrefund_globvar ⊕   M_SwapContract_initialize  ⊕   M_SwapContract_unlock  ⊕   M_SwapContract_claim  ⊕   M_SwapContract_refund  ⊕ ∅).

Definition certikos := 
  MEVMOPCODE <- EVMOPCODE_impl;
  MSWAPCONTRACT <- SWAPCONTRACT_impl;
  ret ( MEVMOPCODE ⊕ MSWAPCONTRACT ⊕ ∅).


End EdsgerGen.