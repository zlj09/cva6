submodule_list="
corev_apu/axi_mem_if \
corev_apu/fpga-support \
common/submodules/common_cells \
corev_apu/axi \
corev_apu/register_interface \
corev_apu/fpga/src/apb_uart \
corev_apu/fpga/src/apb_node \
corev_apu/fpga/src/axi2apb \
corev_apu/fpga/src/axi_slice \
corev_apu/src/tech_cells_generic \
core/fpu \
corev_apu/fpga/src/ariane-ethernet \
corev_apu/src/axi_riscv_atomics \
corev_apu/riscv-dbg \
corev_apu/rv_plic \
corev_apu/fpga/src/apb_timer \
corev_apu/tb/dromajo \
corev_apu/tb/common_verification \
"

for submodule in $submodule_list
do
	echo $submodule
	./git-submodule-rewrite $submodule
done
