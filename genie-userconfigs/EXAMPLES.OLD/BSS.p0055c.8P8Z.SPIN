#
#
# --- CLIMATE --------------------------------------------------
#
# set climate feedback
ea_36=y
#
# --- BIOLOGICAL NEW PRODUCTION -------------------------------------
#
# biological scheme ID string
bg_par_bio_prodopt="NONE"
#
# --- ORGANIC MATTER EXPORT RATIOS -----------------------------
#
#production fraction of dissolved organic matter
bg_par_bio_red_DOMfrac=0.66
#
# --- INORGANIC MATTER EXPORT RATIOS ---------------------------
#
# underlying export CaCO3 as a proportion of particulate organic matter (i.e., CaCO3/POC)
bg_par_bio_red_POC_CaCO3=0.200
#exponent for modifier of CaCO3:POC export ratio
bg_par_bio_red_POC_CaCO3_pP=0.0
#
# --- REMINERALIZATION -----------------------------------------
#
#DOC lifetime (yrs)
bg_par_bio_remin_DOMlifetime=0.5
#initial fractional abundance of POC component #2
bg_par_bio_remin_POC_frac2=0.0557
# depth of remineralization or particulate organic matter
bg_par_bio_remin_POC_eL1=589.9451
#remineralization length #2 for POC
bg_par_bio_remin_POC_eL2=1000000.0
#initial fractional abundance of CaCO3 component #2
bg_par_bio_remin_CaCO3_frac2=0.45
# depth of remineralization or CaCO3
bg_par_bio_remin_CaCO3_eL1=1.8905e+003
#remineralization length #2 for CaCO3
bg_par_bio_remin_CaCO3_eL2=1000000.0
#
#
# --- ECOGEM ----------------------------------------------------------
#
gm_ctrl_debug_init          =0
eg_ctrl_debug_eco_init      =.true.

# eg_par_ecogem_plankton_file ='one_plankton.eco'
# eg_par_ecogem_plankton_file ='Mixotrophy.eco'
eg_par_ecogem_plankton_file ='8P8Z.eco'

########### Nitrogen ############################
eg_useNO3                   =.false.
eg_nquota                   =.false.
########### Phosphorus ##########################
eg_usePO4                   =.true.
eg_pquota                   =.true.
########### Iron ################################
eg_useFe                    =.false.
eg_fquota                   =.false.
########### Chlorophyll #########################
eg_chlquota                 =.true.
#################################################
# Tuned
eg_qminFe_a    =   1.0e-6
eg_qmaxFe_a    =   4.0e-6

eg_ns          =   2
eg_pp_sig_a    =   2.0

eg_beta_mort_a =   0.8 # Maximum fraction to DOM as ESD --> zero
eg_beta_mort_b =   0.4 # Minimum fraction to DOM as ESD --> infinity 
eg_beta_mort_c = 100.0 # Size at 50:50 partition (default = 100 ??m^3)
eg_beta_graz_a =   0.8 # Maximum fraction to DOM as ESD --> zero
eg_beta_graz_b =   0.4 # Minimum fraction to DOM as ESD --> infinity
eg_beta_graz_c = 100.0 # Size at 50:50 partition (default = 100 ??m^3)

eg_par_bio_red_POC_CaCO3     = 0.0285 # underlying export CaCO3 as a proportion of particulate organic matter (i.e., CaCO3/POC)
eg_par_bio_red_POC_CaCO3_pP  = 0.7440 # exponent for modifier of CaCO3:POC export ratio

eg_nsubtime                 =25
eg_n_keco                   =1

bg_ctrl_ncrst               =.true.
eg_ctrl_ncrst               =.false.
bg_ctrl_continuing          =.true.
eg_ctrl_continuing          =.false.

bg_ctrl_audit               =.false.
#
# --- SEDIMENTS ------------------------------------------------
#
# Sediment grid
SEDGEMNLONSOPTS='$(DEFINE)SEDGEMNLONS=36'
SEDGEMNLATSOPTS='$(DEFINE)SEDGEMNLATS=36'
# sediment water depth grid name
sg_par_sed_topo_D_name='p0055x_topo.36x36x16'
# reef mask
sg_par_sed_reef_mask_name='p0055x_reef_mask.36x36x16'
# neritic depth cutoff
sg_par_sed_Dmax_neritic=175.0
# sediment core save mask name
sg_par_sedcore_save_mask_name='p0055x_save_mask.36x36x16'
# sediment diagenesis options
sg_par_sed_diagen_CaCO3opt="archer1991explicit"
sg_ctrl_sed_bioturb=.false.
sg_ctrl_sed_bioturb_Archer=.false.
sg_par_n_sed_mix=20
# set invarient surface bioturbation mixing rate
sg_par_sed_mix_k_sur_max=0.15
sg_par_sed_mix_k_sur_min=0.15
# additional detrital flux (g cm-2 kyr-1)
sg_par_sed_fdet=0.180
# increase max allowed iterations for solving for Corg oxidation
sg_par_sed_archer1991_iterationmax=40
#
# --- WEATHERING -----------------------------------------------
#
# set a CLOSED system
bg_ctrl_force_sed_closedsystem=.true.
# set prescribed weathering rate
rg_par_weather_CaCO3=0.10E+14
rg_par_weather_CaCO3_d13C=3.0
#
# --- DATA SAVING ----------------------------------------------
#
bg_par_data_save_level=8
bg_ctrl_debug_lvl0=.true.
ma_debug_loop=1
#
# --- FORCINGS -------------------------------------------------
#
# specify forcings
bg_par_forcing_name="pyyyyz.RpCO2_Rp13CO2"
bg_par_atm_force_scale_val_3=834.0E-06
bg_par_atm_force_scale_val_4=-4.9
bg_par_windspeed_file="p0055c_windspeed.dat"
#re-scale gas transfer coeff to give ~0.058 mol m-2 yr-1 uatm-1 global mean air-sea coefficient (original: 0.310)
bg_par_gastransfer_a=0.5196
#
# --- MISC -----------------------------------------------------
#
# Set initial ocean alkalinity
bg_ocn_init_12=1.975E-03
#

# --- END ------------------------------------------------------
#