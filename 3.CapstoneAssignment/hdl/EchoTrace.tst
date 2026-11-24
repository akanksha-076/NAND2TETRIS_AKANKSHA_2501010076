load Computer.hdl,
output-file EchoTrace.out,
output-list time%S1.4.1 reset%B2.1.2 ARegister[]%D1.7.1 DRegister[]%D1.7.1 PC[]%D0.4.0 RAM16K[16]%D1.7.1;

ROM32K load Echo.hack,
output;

repeat 30 {
  tick, tock, output;
}