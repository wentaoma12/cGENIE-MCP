################################################################
### readme.txt #################################################
################################################################

For:  'Incorporating Recalcitrant Dissolved Organic Carbon and Microbial Carbon Pump Processes into the cGENIE Earth System Model (cGENIE-MCP)'
Yuxian Lai, Wentao Ma, Peng Xiu, Nianzhi Jiao


################################################################
2025/06/17 -- README.txt file creation (Yuxian Lai and Wentao Ma)
################################################################

Provided is the code used to create the model experiments presented in the paper.
Also given are the configuration files necessary to run the model experiments.


### base configuration ##########################################

All spinups and experiments are run from the base config
cgenie.eb_go_gs_ac_bg.worlg4.BASEURDOMFe.config

This is an adaptation of the general GENIE base config
cgenie.eb_go_gs_ac_bg.worlg4.BASES.config
to allow running with and outputting preformed tracers


### model versions ##############################################

In the paper, two model versions are compared
cGENIE: using cGENIE.muffin (v0.9.13)
cGENIE-MCP: Incorporating RDOC and MCP process


################## Model Experiments ###########################

All experiments are run from:$HOME/cgenie.muffin/genie-main
(unless a different installation directory has been used)
The commands to run the model configurations as listed in the Methods are listed here.

cGENIE-MCP:
./runmuffin.sh cgenie.eb_go_gs_ac_bg.worlg4.BASEURDOMFe MS/lyx.2025 Tdep_Fe_cGENIE_MCP.SPIN 30000 

cGENIE:
./runmuffin.sh cgenie.eb_go_gs_ac_bg.worlg4.BASEURDOMFe MS/lyx.2025 Tdep_Fe_cGENIE.SPIN 10000

cGENIE-MCP integrated DOC production: 
./runmuffin.sh cgenie.eb_go_gs_ac_bg.worlg4.BASEURDOMFe MS/lyx.2025 Tdep_Fe_cGENIE_MCP_docpp.SPIN 1000 Tdep_Fe_cGENIE_MCP.SPIN

cGENIE-MCP-400ppm: 
./runmuffin.sh cgenie.eb_go_gs_ac_bg.worlg4.BASEURDOMFe MS/lyx.2024 Tdep_Fe_cGENIE_MCP_400ppm.SPIN 3000 Tdep_Fe_cGENIE_MCP.SPIN


Primary production and DOC production are integrated into cgenie.muffin, primary production (PP) is derived from nutrient uptake, LDOC production (PLDOC) and SLDOC production (PSLDOC)  are calculated based on primary productivity. RDOC  production (PRDOC) originates from two pathways: the first is from primary productivity (RDOMpp), and the second is generated from the remineralization process of SLDOC (RDOMrp).

In cgenie.muffin (cGENIE-MCP), DOM = LDOM, RDOM = SLDOM, URDOM = RDOM.  DOMpp = LDOMpp, RDOMpp = SLDOMpp, URDOMpp = RDOMpp, URDOMpp = RDOMRp. 

cGENIE-MCP and cGENIE-MCP integrated DOC production are run from cgenie.muffin version.
cGENIE is run from cgenie.muffin_standard version.

