# This addresses our devOps requirements 
WIP

Specifically, Erlang uses the syntax that follows to be able to locate and execute code:

(and why do I need to know this? - this will be the way we would use the `recon` and `redbug` tools)

  - ModuleName:FunctionName([ArgumentList])

Note here that Erlang code objects use variables starting with Caps, as also do FunctionNames and any other variables
  - All such variables occupy `atom` space 
  - The default number of `atoms` in the BEAM is 1 million, though the cap on the number of atoms can be bumped upto 400 million
atoms upon BEAM startup

(here, ModuleNames, FunctionNames and VariableNames, each are counted as an `atom`, and can be counted as a '-define' in C)

Elixir turns the tables around, by using ":" to prefix `atom` names, and all vars starting with lower[_c][Case]

Jumping a few hurdles on, the `redbug` and `recon` libraries allow us to use with the same 'MFA' semantics

