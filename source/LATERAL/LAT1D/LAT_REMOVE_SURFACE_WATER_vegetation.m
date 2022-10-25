%========================================================================
% Same as LAT_REMOVE_SURFACE_WATER, but adapted so that water is removed
% from 2nd class in stratigraphy (which is where the surface is)
% R. B. Zweigel, October 2022
%========================================================================

classdef LAT_REMOVE_SURFACE_WATER_vegetation < BASE_LATERAL
    
    methods
                
        %----mandatory functions---------------
        %----initialization--------------------
        
        
        function lateral = provide_CONST(lateral)
            
        end
        
        function lateral = provide_PARA(lateral)
            
        end
        
        function lateral = provide_STATVAR(lateral)
            lateral.STATVAR.surface_run_off = [];
        end

        
        function lateral = finalize_init(lateral, tile)
            lateral.STATVAR.surface_run_off = 0;
        end
        
        %------time integration-------------
        
        %only push function needed
        function lateral = push(lateral, tile)
            %remove water from first class in stratigraphy only
            TOP.NEXT.NEXT = lateral_push_remove_surfaceWater(lateral.PARENT.TOP.NEXT.NEXT, lateral); 
        end
        
        function lateral = set_ACTIVE(lateral, i, t)
            lateral.PARENT.ACTIVE(i,1) = 1;
        end
        
        function lateral = get_derivatives(lateral, tile)
            
        end
        
        function lateral = pull(lateral, tile)
            
        end

    end
end

