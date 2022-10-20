set_property SRC_FILE_INFO {cfile:C:/Users/yoxo/Desktop/Giuseppe/Unical/CdL_LM_Tesi/Classifier_HW/PYNQ_SVM_CLASSIFIER/PYNQ_SVM_CLASSIFIER.srcs/constrs_1/imports/new/clock_constraint.xdc rfile:../../../PYNQ_SVM_CLASSIFIER.srcs/constrs_1/imports/new/clock_constraint.xdc id:1} [current_design]
set_property src_info {type:XDC file:1 line:1 export:INPUT save:INPUT read:READ} [current_design]
create_clock -period 20.000 -name clock -waveform {0.000 10.000} [get_ports s_axis_aclk]
