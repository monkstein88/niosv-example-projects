# niosv-examples
These are some NIOS-V cpu examples implemented and running on a Terasic DE0-NANO board (Cyclone IV - EP4C22F17C6)
(Built using Intel Quartus 23.1.1 Standard Edition)

Note: If there are reported problems with missing SDRAM core when trying to synthesise/compile the project. Go to Platform Designer (QSYS) -> Tools -> Options -> in "IP Search Path" -> Add... -> the 'altera_avalon_new_sdram_controller' directory from within the project itself (under 'ipblocks' dir).
