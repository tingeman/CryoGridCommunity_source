function ground = provide_PARA(ground)
    

    ground.PARA.heatFlux_lb = [];
    
    ground.PARA.dt_max = [] ; %[sec]    
    ground.PARA.dE_max = []; %[J/m3]
    
    % Vegetation parameters
    ground.PARA.lai = [];
    ground.PARA.lai_winter = [];
    ground.PARA.sai = [];
    ground.PARA.ztop = [];
    ground.PARA.zref = [];
    ground.PARA.zref_old = [];
    ground.PARA.hksat = [];
    
    