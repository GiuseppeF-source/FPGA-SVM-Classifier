@echo off
REM ****************************************************************************
REM Vivado (TM) v2018.3 (64-bit)
REM
REM Filename    : simulate.bat
REM Simulator   : Xilinx Vivado Simulator
REM Description : Script for simulating the design by launching the simulator
REM
REM Generated by Vivado on Thu May 11 21:41:53 +0200 2023
REM SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
REM
REM Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
REM
REM usage: simulate.bat
REM
REM ****************************************************************************
call xsim TB_Top_Level_behav -key {Behavioral:sim_1:Functional:TB_Top_Level} -tclbatch TB_Top_Level.tcl -protoinst "protoinst_files/bd_ebc4.protoinst" -protoinst "protoinst_files/hw_svm.protoinst" -view C:/work/Master_Degree_Thesis/HW_SVM/TB_Top_Level_behav.wcfg -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
