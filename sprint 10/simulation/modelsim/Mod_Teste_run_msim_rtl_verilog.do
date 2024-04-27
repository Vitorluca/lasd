transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+/home/vitorluca/Documentos/ufcg/3_periodo/lab_arquitetura/repositorio/lasd/sprint_6/aux_files {/home/vitorluca/Documentos/ufcg/3_periodo/lab_arquitetura/repositorio/lasd/sprint_6/aux_files/data_memory.v}
vlog -vlog01compat -work work +incdir+/home/vitorluca/Documentos/ufcg/3_periodo/lab_arquitetura/repositorio/lasd/sprint_6/aux_files {/home/vitorluca/Documentos/ufcg/3_periodo/lab_arquitetura/repositorio/lasd/sprint_6/aux_files/Program_Counter.v}
vlog -vlog01compat -work work +incdir+/home/vitorluca/Documentos/ufcg/3_periodo/lab_arquitetura/repositorio/lasd/sprint_6/aux_files {/home/vitorluca/Documentos/ufcg/3_periodo/lab_arquitetura/repositorio/lasd/sprint_6/aux_files/Instruction_Memory.v}
vlog -vlog01compat -work work +incdir+/home/vitorluca/Documentos/ufcg/3_periodo/lab_arquitetura/repositorio/lasd/sprint_6/aux_files {/home/vitorluca/Documentos/ufcg/3_periodo/lab_arquitetura/repositorio/lasd/sprint_6/aux_files/Control_Unit.v}
vlog -vlog01compat -work work +incdir+/home/vitorluca/Documentos/ufcg/3_periodo/lab_arquitetura/repositorio/lasd/sprint_6/aux_files {/home/vitorluca/Documentos/ufcg/3_periodo/lab_arquitetura/repositorio/lasd/sprint_6/aux_files/Adder.v}
vlog -vlog01compat -work work +incdir+/home/vitorluca/Documentos/ufcg/3_periodo/lab_arquitetura/repositorio/lasd/sprint_6/aux_files {/home/vitorluca/Documentos/ufcg/3_periodo/lab_arquitetura/repositorio/lasd/sprint_6/aux_files/ULA.v}
vlog -vlog01compat -work work +incdir+/home/vitorluca/Documentos/ufcg/3_periodo/lab_arquitetura/repositorio/lasd/sprint_6/aux_files {/home/vitorluca/Documentos/ufcg/3_periodo/lab_arquitetura/repositorio/lasd/sprint_6/aux_files/register.v}
vlog -vlog01compat -work work +incdir+/home/vitorluca/Documentos/ufcg/3_periodo/lab_arquitetura/repositorio/lasd/sprint_6/aux_files {/home/vitorluca/Documentos/ufcg/3_periodo/lab_arquitetura/repositorio/lasd/sprint_6/aux_files/div_freq.v}
vlog -vlog01compat -work work +incdir+/home/vitorluca/Documentos/ufcg/3_periodo/lab_arquitetura/repositorio/lasd/sprint_6/aux_files {/home/vitorluca/Documentos/ufcg/3_periodo/lab_arquitetura/repositorio/lasd/sprint_6/aux_files/DECODIFICADOR.v}
vlog -vlog01compat -work work +incdir+/home/vitorluca/Documentos/ufcg/3_periodo/lab_arquitetura/repositorio/lasd/sprint_6/aux_files {/home/vitorluca/Documentos/ufcg/3_periodo/lab_arquitetura/repositorio/lasd/sprint_6/aux_files/MUX_2X1_file.v}
vlog -vlog01compat -work work +incdir+/home/vitorluca/Documentos/ufcg/3_periodo/lab_arquitetura/repositorio/lasd/sprint_6/aux_files {/home/vitorluca/Documentos/ufcg/3_periodo/lab_arquitetura/repositorio/lasd/sprint_6/aux_files/Mod_Teste.v}
vlog -vlog01compat -work work +incdir+/home/vitorluca/Documentos/ufcg/3_periodo/lab_arquitetura/repositorio/lasd/sprint_6/aux_files {/home/vitorluca/Documentos/ufcg/3_periodo/lab_arquitetura/repositorio/lasd/sprint_6/aux_files/LCD_TEST2.v}
vlog -vlog01compat -work work +incdir+/home/vitorluca/Documentos/ufcg/3_periodo/lab_arquitetura/repositorio/lasd/sprint_6/aux_files {/home/vitorluca/Documentos/ufcg/3_periodo/lab_arquitetura/repositorio/lasd/sprint_6/aux_files/LCD_Controller.v}

