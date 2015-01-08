% Script to generate results with volumetric_arap on the Imac

[V0,F0] = load_mesh('/Users/leokollersacht/Documents/nested_cages/Meshes/Results/anchor_volume/anchor_0.obj');
levels = floor(2.^((-14:2:-4)/3)*size(F0,1));
[cages_V,cages_F,Pall] = ...
  multires_per_layer( ...
  V0,F0, ...
  levels, ...
  'QuadratureOrder',2, ...
  'ExpansionEnergy','volumetric_arap', ...
  'FinalEnergy','none', ...
  'BetaInit',1e-2, ...
  'Eps',1e-3);
write_cages('/Users/leokollersacht/Documents/nested_cages/Meshes/Results/anchor_volumetric_arap/anchor',cages_V,cages_F);
% Obs.:

[V0,F0] = load_mesh('/Users/leokollersacht/Documents/nested_cages/Meshes/Results/anchor_volume/arma_0.obj');
levels = floor(2.^((-14:2:-4)/3)*size(F0,1));
[cages_V,cages_F,Pall] = ...
  multires_per_layer( ...
  V0,F0, ...
  levels, ...
  'QuadratureOrder',2, ...
  'ExpansionEnergy','volumetric_arap', ...
  'FinalEnergy','none', ...
  'BetaInit',1e-2, ...
  'Eps',1e-3);
write_cages('/Users/leokollersacht/Documents/nested_cages/Meshes/Results/arma_volumetric_arap/arma');
% Obs.:

[V0,F0] = load_mesh('/Users/leokollersacht/Documents/nested_cages/Meshes/Results/anchor_volume/bunny_0.obj',cages_V,cages_F);
levels = floor(2.^((-14:2:-4)/3)*size(F0,1));
[cages_V,cages_F,Pall] = ...
  multires_per_layer( ...
  V0,F0, ...
  levels, ...
  'QuadratureOrder',2, ...
  'ExpansionEnergy','volumetric_arap', ...
  'FinalEnergy','none', ...
  'BetaInit',1e-2, ...
  'Eps',1e-3);
write_cages('/Users/leokollersacht/Documents/nested_cages/Meshes/Results/bunny_volumetric_arap/bunny');
% Obs.:

[V0,F0] = load_mesh('/Users/leokollersacht/Documents/nested_cages/Meshes/Results/gargo_volume/gargo_0.obj',cages_V,cages_F);
levels = floor(2.^((-14:2:-2)/3)*size(F0,1));
[cages_V,cages_F,Pall] = ...
  multires_per_layer( ...
  V0,F0, ...
  levels, ...
  'QuadratureOrder',2, ...
  'ExpansionEnergy','volumetric_arap', ...
  'FinalEnergy','none', ...
  'BetaInit',1e-2, ...
  'Eps',1e-3);
write_cages('/Users/leokollersacht/Documents/nested_cages/Meshes/Results/gargo_volumetric_arap/gargo',cages_V,cages_F);
% Obs.:
