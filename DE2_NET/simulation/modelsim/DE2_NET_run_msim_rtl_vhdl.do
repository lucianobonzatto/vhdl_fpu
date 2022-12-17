transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlib system_0
vmap system_0 system_0
vlog -vlog01compat -work system_0 +incdir+C:/vhdl_fpu/DE2_NET/system_0/synthesis {C:/vhdl_fpu/DE2_NET/system_0/synthesis/system_0.v}
vlog -vlog01compat -work system_0 +incdir+C:/vhdl_fpu/DE2_NET/system_0/synthesis/submodules {C:/vhdl_fpu/DE2_NET/system_0/synthesis/submodules/altera_reset_controller.v}
vlog -vlog01compat -work system_0 +incdir+C:/vhdl_fpu/DE2_NET/system_0/synthesis/submodules {C:/vhdl_fpu/DE2_NET/system_0/synthesis/submodules/altera_reset_synchronizer.v}
vlog -vlog01compat -work system_0 +incdir+C:/vhdl_fpu/DE2_NET/system_0/synthesis/submodules {C:/vhdl_fpu/DE2_NET/system_0/synthesis/submodules/altera_avalon_sc_fifo.v}
vlog -vlog01compat -work system_0 +incdir+C:/vhdl_fpu/DE2_NET/system_0/synthesis/submodules {C:/vhdl_fpu/DE2_NET/system_0/synthesis/submodules/SRAM_16Bit_512K.v}
vlog -vlog01compat -work system_0 +incdir+C:/vhdl_fpu/DE2_NET/system_0/synthesis/submodules {C:/vhdl_fpu/DE2_NET/system_0/synthesis/submodules/SEG7_LUT.v}
vlog -vlog01compat -work system_0 +incdir+C:/vhdl_fpu/DE2_NET/system_0/synthesis/submodules {C:/vhdl_fpu/DE2_NET/system_0/synthesis/submodules/SEG7_LUT_8.v}
vlog -vlog01compat -work system_0 +incdir+C:/vhdl_fpu/DE2_NET/system_0/synthesis/submodules {C:/vhdl_fpu/DE2_NET/system_0/synthesis/submodules/DM9000A_IF.v}
vlog -vlog01compat -work system_0 +incdir+C:/vhdl_fpu/DE2_NET/system_0/synthesis/submodules {C:/vhdl_fpu/DE2_NET/system_0/synthesis/submodules/Img_RAM.v}
vlog -vlog01compat -work system_0 +incdir+C:/vhdl_fpu/DE2_NET/system_0/synthesis/submodules {C:/vhdl_fpu/DE2_NET/system_0/synthesis/submodules/VGA_NIOS_CTRL.v}
vlog -vlog01compat -work system_0 +incdir+C:/vhdl_fpu/DE2_NET/system_0/synthesis/submodules {C:/vhdl_fpu/DE2_NET/system_0/synthesis/submodules/VGA_OSD_RAM.v}
vlog -vlog01compat -work system_0 +incdir+C:/vhdl_fpu/DE2_NET/system_0/synthesis/submodules {C:/vhdl_fpu/DE2_NET/system_0/synthesis/submodules/AUDIO_DAC_FIFO.v}
vlog -vlog01compat -work system_0 +incdir+C:/vhdl_fpu/DE2_NET/system_0/synthesis/submodules {C:/vhdl_fpu/DE2_NET/system_0/synthesis/submodules/FIFO_16_256.v}
vlog -vlog01compat -work system_0 +incdir+C:/vhdl_fpu/DE2_NET/system_0/synthesis/submodules {C:/vhdl_fpu/DE2_NET/system_0/synthesis/submodules/system_0_sysid_qsys_0.v}
vlog -vlog01compat -work system_0 +incdir+C:/vhdl_fpu/DE2_NET/system_0/synthesis/submodules {C:/vhdl_fpu/DE2_NET/system_0/synthesis/submodules/system_0_cfi_flash_0.v}
vlog -vlog01compat -work system_0 +incdir+C:/vhdl_fpu/DE2_NET/system_0/synthesis/submodules {C:/vhdl_fpu/DE2_NET/system_0/synthesis/submodules/system_0_tri_state_bridge_0_pinSharer_0.v}
vlog -vlog01compat -work system_0 +incdir+C:/vhdl_fpu/DE2_NET/system_0/synthesis/submodules {C:/vhdl_fpu/DE2_NET/system_0/synthesis/submodules/ISP1362_IF.v}
vlog -vlog01compat -work system_0 +incdir+C:/vhdl_fpu/DE2_NET/system_0/synthesis/submodules {C:/vhdl_fpu/DE2_NET/system_0/synthesis/submodules/system_0_SD_CLK.v}
vlog -vlog01compat -work system_0 +incdir+C:/vhdl_fpu/DE2_NET/system_0/synthesis/submodules {C:/vhdl_fpu/DE2_NET/system_0/synthesis/submodules/system_0_SD_DAT.v}
vlog -vlog01compat -work system_0 +incdir+C:/vhdl_fpu/DE2_NET/system_0/synthesis/submodules {C:/vhdl_fpu/DE2_NET/system_0/synthesis/submodules/system_0_switch_pio.v}
vlog -vlog01compat -work system_0 +incdir+C:/vhdl_fpu/DE2_NET/system_0/synthesis/submodules {C:/vhdl_fpu/DE2_NET/system_0/synthesis/submodules/system_0_button_pio.v}
vlog -vlog01compat -work system_0 +incdir+C:/vhdl_fpu/DE2_NET/system_0/synthesis/submodules {C:/vhdl_fpu/DE2_NET/system_0/synthesis/submodules/system_0_led_green.v}
vlog -vlog01compat -work system_0 +incdir+C:/vhdl_fpu/DE2_NET/system_0/synthesis/submodules {C:/vhdl_fpu/DE2_NET/system_0/synthesis/submodules/system_0_led_red.v}
vlog -vlog01compat -work system_0 +incdir+C:/vhdl_fpu/DE2_NET/system_0/synthesis/submodules {C:/vhdl_fpu/DE2_NET/system_0/synthesis/submodules/system_0_lcd_16207_0.v}
vlog -vlog01compat -work system_0 +incdir+C:/vhdl_fpu/DE2_NET/system_0/synthesis/submodules {C:/vhdl_fpu/DE2_NET/system_0/synthesis/submodules/system_0_timer_0.v}
vlog -vlog01compat -work system_0 +incdir+C:/vhdl_fpu/DE2_NET/system_0/synthesis/submodules {C:/vhdl_fpu/DE2_NET/system_0/synthesis/submodules/system_0_uart_0.v}
vlog -vlog01compat -work system_0 +incdir+C:/vhdl_fpu/DE2_NET/system_0/synthesis/submodules {C:/vhdl_fpu/DE2_NET/system_0/synthesis/submodules/system_0_jtag_uart_0.v}
vlog -vlog01compat -work system_0 +incdir+C:/vhdl_fpu/DE2_NET/system_0/synthesis/submodules {C:/vhdl_fpu/DE2_NET/system_0/synthesis/submodules/system_0_epcs_controller.v}
vlog -vlog01compat -work system_0 +incdir+C:/vhdl_fpu/DE2_NET/system_0/synthesis/submodules {C:/vhdl_fpu/DE2_NET/system_0/synthesis/submodules/system_0_sdram_0.v}
vlog -vlog01compat -work system_0 +incdir+C:/vhdl_fpu/DE2_NET/system_0/synthesis/submodules {C:/vhdl_fpu/DE2_NET/system_0/synthesis/submodules/system_0_sdram_0_test_component.v}
vlog -vlog01compat -work system_0 +incdir+C:/vhdl_fpu/DE2_NET/system_0/synthesis/submodules {C:/vhdl_fpu/DE2_NET/system_0/synthesis/submodules/VGA_Controller.v}
vlog -vlog01compat -work work +incdir+C:/vhdl_fpu/DE2_NET {C:/vhdl_fpu/DE2_NET/I2C_AV_Config.v}
vlog -vlog01compat -work work +incdir+C:/vhdl_fpu/DE2_NET {C:/vhdl_fpu/DE2_NET/I2C_Controller.v}
vlog -vlog01compat -work work +incdir+C:/vhdl_fpu/DE2_NET {C:/vhdl_fpu/DE2_NET/SDRAM_PLL.v}
vlog -vlog01compat -work work +incdir+C:/vhdl_fpu/DE2_NET {C:/vhdl_fpu/DE2_NET/Audio_PLL.v}
vlog -vlog01compat -work work +incdir+C:/vhdl_fpu/DE2_NET {C:/vhdl_fpu/DE2_NET/de2_net.v}
vlog -vlog01compat -work work +incdir+C:/vhdl_fpu/DE2_NET {C:/vhdl_fpu/DE2_NET/reset_delay.v}
vlog -sv -work system_0 +incdir+C:/vhdl_fpu/DE2_NET/system_0/synthesis/submodules {C:/vhdl_fpu/DE2_NET/system_0/synthesis/submodules/system_0_irq_mapper.sv}
vlog -sv -work system_0 +incdir+C:/vhdl_fpu/DE2_NET/system_0/synthesis/submodules {C:/vhdl_fpu/DE2_NET/system_0/synthesis/submodules/altera_merlin_width_adapter.sv}
vlog -sv -work system_0 +incdir+C:/vhdl_fpu/DE2_NET/system_0/synthesis/submodules {C:/vhdl_fpu/DE2_NET/system_0/synthesis/submodules/altera_merlin_burst_uncompressor.sv}
vlog -sv -work system_0 +incdir+C:/vhdl_fpu/DE2_NET/system_0/synthesis/submodules {C:/vhdl_fpu/DE2_NET/system_0/synthesis/submodules/altera_merlin_arbitrator.sv}
vlog -sv -work system_0 +incdir+C:/vhdl_fpu/DE2_NET/system_0/synthesis/submodules {C:/vhdl_fpu/DE2_NET/system_0/synthesis/submodules/system_0_rsp_xbar_mux_001.sv}
vlog -sv -work system_0 +incdir+C:/vhdl_fpu/DE2_NET/system_0/synthesis/submodules {C:/vhdl_fpu/DE2_NET/system_0/synthesis/submodules/system_0_rsp_xbar_mux.sv}
vlog -sv -work system_0 +incdir+C:/vhdl_fpu/DE2_NET/system_0/synthesis/submodules {C:/vhdl_fpu/DE2_NET/system_0/synthesis/submodules/system_0_rsp_xbar_demux_006.sv}
vlog -sv -work system_0 +incdir+C:/vhdl_fpu/DE2_NET/system_0/synthesis/submodules {C:/vhdl_fpu/DE2_NET/system_0/synthesis/submodules/system_0_rsp_xbar_demux.sv}
vlog -sv -work system_0 +incdir+C:/vhdl_fpu/DE2_NET/system_0/synthesis/submodules {C:/vhdl_fpu/DE2_NET/system_0/synthesis/submodules/system_0_cmd_xbar_mux.sv}
vlog -sv -work system_0 +incdir+C:/vhdl_fpu/DE2_NET/system_0/synthesis/submodules {C:/vhdl_fpu/DE2_NET/system_0/synthesis/submodules/system_0_cmd_xbar_demux_001.sv}
vlog -sv -work system_0 +incdir+C:/vhdl_fpu/DE2_NET/system_0/synthesis/submodules {C:/vhdl_fpu/DE2_NET/system_0/synthesis/submodules/system_0_cmd_xbar_demux.sv}
vlog -sv -work system_0 +incdir+C:/vhdl_fpu/DE2_NET/system_0/synthesis/submodules {C:/vhdl_fpu/DE2_NET/system_0/synthesis/submodules/altera_merlin_burst_adapter.sv}
vlog -sv -work system_0 +incdir+C:/vhdl_fpu/DE2_NET/system_0/synthesis/submodules {C:/vhdl_fpu/DE2_NET/system_0/synthesis/submodules/altera_merlin_traffic_limiter.sv}
vlog -sv -work system_0 +incdir+C:/vhdl_fpu/DE2_NET/system_0/synthesis/submodules {C:/vhdl_fpu/DE2_NET/system_0/synthesis/submodules/system_0_id_router_024.sv}
vlog -sv -work system_0 +incdir+C:/vhdl_fpu/DE2_NET/system_0/synthesis/submodules {C:/vhdl_fpu/DE2_NET/system_0/synthesis/submodules/system_0_id_router_006.sv}
vlog -sv -work system_0 +incdir+C:/vhdl_fpu/DE2_NET/system_0/synthesis/submodules {C:/vhdl_fpu/DE2_NET/system_0/synthesis/submodules/system_0_id_router_003.sv}
vlog -sv -work system_0 +incdir+C:/vhdl_fpu/DE2_NET/system_0/synthesis/submodules {C:/vhdl_fpu/DE2_NET/system_0/synthesis/submodules/system_0_id_router_001.sv}
vlog -sv -work system_0 +incdir+C:/vhdl_fpu/DE2_NET/system_0/synthesis/submodules {C:/vhdl_fpu/DE2_NET/system_0/synthesis/submodules/system_0_id_router.sv}
vlog -sv -work system_0 +incdir+C:/vhdl_fpu/DE2_NET/system_0/synthesis/submodules {C:/vhdl_fpu/DE2_NET/system_0/synthesis/submodules/system_0_addr_router_001.sv}
vlog -sv -work system_0 +incdir+C:/vhdl_fpu/DE2_NET/system_0/synthesis/submodules {C:/vhdl_fpu/DE2_NET/system_0/synthesis/submodules/system_0_addr_router.sv}
vlog -sv -work system_0 +incdir+C:/vhdl_fpu/DE2_NET/system_0/synthesis/submodules {C:/vhdl_fpu/DE2_NET/system_0/synthesis/submodules/altera_merlin_slave_agent.sv}
vlog -sv -work system_0 +incdir+C:/vhdl_fpu/DE2_NET/system_0/synthesis/submodules {C:/vhdl_fpu/DE2_NET/system_0/synthesis/submodules/altera_merlin_master_agent.sv}
vlog -sv -work system_0 +incdir+C:/vhdl_fpu/DE2_NET/system_0/synthesis/submodules {C:/vhdl_fpu/DE2_NET/system_0/synthesis/submodules/altera_merlin_slave_translator.sv}
vlog -sv -work system_0 +incdir+C:/vhdl_fpu/DE2_NET/system_0/synthesis/submodules {C:/vhdl_fpu/DE2_NET/system_0/synthesis/submodules/altera_merlin_master_translator.sv}
vlog -sv -work system_0 +incdir+C:/vhdl_fpu/DE2_NET/system_0/synthesis/submodules {C:/vhdl_fpu/DE2_NET/system_0/synthesis/submodules/altera_tristate_controller_aggregator.sv}
vlog -sv -work system_0 +incdir+C:/vhdl_fpu/DE2_NET/system_0/synthesis/submodules {C:/vhdl_fpu/DE2_NET/system_0/synthesis/submodules/altera_tristate_controller_translator.sv}
vlog -sv -work system_0 +incdir+C:/vhdl_fpu/DE2_NET/system_0/synthesis/submodules {C:/vhdl_fpu/DE2_NET/system_0/synthesis/submodules/altera_merlin_std_arbitrator_core.sv}
vlog -sv -work system_0 +incdir+C:/vhdl_fpu/DE2_NET/system_0/synthesis/submodules {C:/vhdl_fpu/DE2_NET/system_0/synthesis/submodules/system_0_tri_state_bridge_0_pinSharer_0_arbiter.sv}
vlog -sv -work system_0 +incdir+C:/vhdl_fpu/DE2_NET/system_0/synthesis/submodules {C:/vhdl_fpu/DE2_NET/system_0/synthesis/submodules/system_0_tri_state_bridge_0_pinSharer_0_pin_sharer.sv}
vlog -sv -work system_0 +incdir+C:/vhdl_fpu/DE2_NET/system_0/synthesis/submodules {C:/vhdl_fpu/DE2_NET/system_0/synthesis/submodules/system_0_tri_state_bridge_0_bridge_0.sv}
vcom -93 -work system_0 {C:/vhdl_fpu/DE2_NET/system_0/synthesis/submodules/web_interface.vhd}
vcom -93 -work system_0 {C:/vhdl_fpu/DE2_NET/system_0/synthesis/submodules/reg_32.vhd}

