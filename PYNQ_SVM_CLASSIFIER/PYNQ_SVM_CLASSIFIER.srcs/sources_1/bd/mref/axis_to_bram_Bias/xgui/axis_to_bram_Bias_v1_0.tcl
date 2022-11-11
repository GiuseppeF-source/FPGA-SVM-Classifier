# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "n_in_bit" -parent ${Page_0}
  ipgui::add_param $IPINST -name "n_out_bit" -parent ${Page_0}


}

proc update_PARAM_VALUE.n_in_bit { PARAM_VALUE.n_in_bit } {
	# Procedure called to update n_in_bit when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.n_in_bit { PARAM_VALUE.n_in_bit } {
	# Procedure called to validate n_in_bit
	return true
}

proc update_PARAM_VALUE.n_out_bit { PARAM_VALUE.n_out_bit } {
	# Procedure called to update n_out_bit when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.n_out_bit { PARAM_VALUE.n_out_bit } {
	# Procedure called to validate n_out_bit
	return true
}


proc update_MODELPARAM_VALUE.n_in_bit { MODELPARAM_VALUE.n_in_bit PARAM_VALUE.n_in_bit } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.n_in_bit}] ${MODELPARAM_VALUE.n_in_bit}
}

proc update_MODELPARAM_VALUE.n_out_bit { MODELPARAM_VALUE.n_out_bit PARAM_VALUE.n_out_bit } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.n_out_bit}] ${MODELPARAM_VALUE.n_out_bit}
}

