# *******************************************************************
# ***cgenie.eb_go_gs_ac_bg.worlg4.BASEURDOMFe ********************
# *******************************************************************
#
# *** CLIMATE *******************************************************
#
# (climate responding to changing pCO2)
ea_36=y
#
# *** BIOLOGICAL NEW PRODUCTION *************************************
#
# biological scheme ID string
bg_par_bio_prodopt="bio_PFe"
# biological uptake time-scale
bg_par_bio_tau=95.6337
# maximum rate of conversion of dissolved PO4 into organic matter by phytoplankton (mol kg-1 yr-1)
#bg_par_bio_k0_PO4=8.9876e-006
# [PO4] M-M half-sat value (mol kg-1)
bg_par_bio_c0_PO4=0.10E-06
# [Fe] M-M half-sat value (mol kg-1)
bg_par_bio_c0_Fe=0.10E-09
#
# *** ORGANIC MATTER EXPORT RATIOS **********************************
#
# production fraction of dissolved organic matter
bg_par_bio_red_DOMfrac=0.66
#
# *** INORGANIC MATTER EXPORT RATIOS ********************************
#
# underlying export CaCO3 as a proportion of particulate organic matter (i.e., CaCO3/POC)
bg_par_bio_red_POC_CaCO3=0.0485
# exponent for modifier of CaCO3:POC export ratio
bg_par_bio_red_POC_CaCO3_pP=0.7440
#
# *** REMINERALIZATION **********************************************
#
# *** recommended ***************************************************
# set 'instantaneous' water column remineralziation
#bg_par_bio_remin_sinkingrate_physical=9.9E9
#bg_par_bio_remin_sinkingrate_reaction=125.0
# *** common settings ***********************************************
#bg_ctrl_bio_remin_RDOM_photolysis=.true.
#bg_ctrl_bio_remin_URDOM_photolysis=.true.
# DOC lifetime (yrs)
bg_par_bio_remin_DOMlifetime=0.1
# RDOC lifetime (yrs)
bg_par_bio_remin_RDOMlifetime=5.0
# URDOC lifetime (yrs)
bg_par_bio_remin_URDOMlifetime=16000.0
# initial fractional abundance of POC component #2
bg_par_bio_remin_POC_frac2=0.055
# depth of remineralization or particulate organic matter
bg_par_bio_remin_POC_eL1=589.9451
# remineralization length #2 for POC
bg_par_bio_remin_POC_eL2=1000000.0
# initial fractional abundance of CaCO3 component #2
bg_par_bio_remin_CaCO3_frac2=0.45
# depth of remineralization or CaCO3
bg_par_bio_remin_CaCO3_eL1=1.8905e+003
# remineralization length #2 for CaCO3
bg_par_bio_remin_CaCO3_eL2=1000000.0
#
bg_ctrl_bio_remin_POC_fixed=.false.
bg_par_bio_remin_sinkingrate=125.0
bg_par_bio_remin_POC_K1=9.0E11
bg_par_bio_remin_POC_Ea1=54000.0
bg_par_bio_remin_POC_K2=1.0E14
bg_par_bio_remin_POC_Ea2=80000.0
bg_par_bio_remin_POC_frac2=0.008
#
# *** IRON CYCLING **************************************************
#
# iron tracer scheme
# NOTE: the base-config requires TFe and TL tracers
bg_opt_geochem_Fe='hybrid'
# exponent for aeolian Fe solubility [use 1.0 for uniform solubility]
bg_par_det_Fe_sol_exp=0.500
# aeolian Fe solubility
bg_par_det_Fe_sol=0.002014275
# modifier of the scavenging rate of dissolved Fe
bg_par_scav_Fe_sf_POC=0.10000
# no scavenged regeneration
bg_par_scav_fremin=0.0
# return POFe
bg_ctrl_bio_NO_fsedFe=.false.
# Variable Fe:C
bg_ctrl_bio_red_fixedFetoC=.false.
# adjust pK'(FeL)
bg_par_K_FeL_pP=11.0
#(max) C/Fe organic matter ratio
bg_par_bio_red_POFe_POC=250000.0
#[FeT] dependent Fe:C ratio [Ridgwell, 2001] -- power
bg_par_bio_FetoC_pP=-0.4225
#[FeT] dependent Fe:C ratio [Ridgwell, 2001] -- scaling
bg_par_bio_FetoC_K=103684.0
#[FeT] dependent Fe:C ratio [Ridgwell, 2001] -- constant
bg_par_bio_FetoC_C=0.0
#
# *** DATA SAVING ***************************************************
#
bg_par_data_save_level=5
bg_ctrl_debug_lvl0=.true.
ma_debug_loop=1
bg_ctrl_data_save_sig_diag=.true.
bg_ctrl_bio_remin_redox_save=.true.
bg_ctrl_bio_preformed=.true.
bg_ctrl_bio_preformed_CsoftPOConly=.false.
bg_par_infile_slice_name='save_timeslice_historicalfuture_FINE20C.dat'
bg_par_infile_sig_name='save_timeseries_historicalfuture.dat'
#
# *** FORCINGS ******************************************************
#
# specify forcings
bg_par_forcing_name="worlg4.RpCO2_Rp13CO2_400ppm"
bg_par_atm_force_scale_val_3=8.3333e+013
bg_par_ocn_force_scale_val_12=5.0e+13
# change start year
bg_par_misc_t_start=1750
#
# *** MISC **********************************************************
#
bg_opt_bio_red_DOMfrac='dunne'
# scale DOM fraction constant (default: 0.419)
bg_par_bio_red_DOMfrac_Tdep_const = 0.512
# T-dep DOM remin
bg_ctrl_bio_remin_DOM_Tdep=.true.
# scale par_bio_remin_DOC_K1 (default: 1.0E12) to a 0.5 year lifetime
# NOTE: 1.16e+10 for T-dep remin ONLY
bg_par_bio_remin_DOC_K1 = 1.32e+13
#
# kraus-turner mixed layer scheme on (1) or off (0)
go_imld = 1
#
#
# *** recommended ***************************************************
# *******************************************************************
# *** END ***********************************************************
# ******************************************************************* 
