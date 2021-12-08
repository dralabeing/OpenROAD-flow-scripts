include $(dir $(DESIGN_CONFIG))/config.mk

#export FLOW_VARIANT = hier
export FLOW_VARIANT = hier_rtlmp
export SYNTH_HIERARCHICAL = 1
export MAX_UNGROUP_SIZE = 1000
export RTLMP_FLOW = True

export SDC_FILE      = ./designs/$(PLATFORM)/$(DESIGN_NICKNAME)/constraint_hier.sdc

export FLOORPLAN_DEF = ./results/$(PLATFORM)/$(DESIGN_NICKNAME)/$(FLOW_VARIANT)/2_2_floorplan_io.def

# RTL_MP Settings
export RTLMP_MAX_INST = 20000
export RTLMP_MIN_INST = 4000
export RTLMP_MAX_MACRO = 10
export RTLMP_MIN_MACRO = 5 
#
export RTLMP_RPT_DIR = $(OBJECTS_DIR)/rtlmp
export RTLMP_RPT_FILE = partition.txt
export RTLMP_BLOCKAGE_FILE = $(OBJECTS_DIR)/rtlmp/partition.txt.blockage

export DIE_AREA = 0 0 2250 2250
export CORE_AREA = 5 5 2245 2245
export PLACE_PINS_ARGS = -exclude left:* -exclude right:0-700 -exclude right:1500-2250 -exclude top:* -exclude bottom:*

export PLACE_DENSITY         = 0.75
