% given camera pose, and feature locations, generate observations
function obs = createObservations(feats, pts, tilt)
% compute camera's tilt rotation 
angle = -(pi/2+tilt); 
ca = cos(angle); 
sa = sin(angle); 
Ro2c = [1 0 0;
     0 ca -sa;
     0 sa ca;];

Rc2o = Ro2c';

% get feature points
gpc = get_feature_pc(feats); 

% hold on; 
% ggpt = gpc';
% scatter3(ggpt(:,1), ggpt(:,2), ggpt(:,3), 'g');

N = size(gpc,2);
% camera model 
cam = get_rs_r200(); 

obs = [];
for i=1:size(pts,1)
    t = pts(i, :)'; 
    t = -Rc2o * t;
    lpc = transform_pc(Rc2o, t, gpc);
    
%     lppt = lpc';
%     figure;
%     grid on;
%     scatter3(lppt(:,1), lppt(:,2), lppt(:,3), 'g');
    
    %% check out how many features are available 
    s_obi.obs=[];
    for j=1:N
        fpt = lpc(:, j); 
        [good, px, py] = in_cam_view(cam, fpt);
        if good == 1
            obs_ij = generate_obs(feats(j), i, fpt, px, py);
            s_obi.obs = [s_obi.obs; obs_ij];
        end
    end
    
    % add features into observation 
    obs = [obs; s_obi];
end

end

%% generate observation for this point
function obs = generate_obs(feat, pose_i, lpt, px, py)
    gpt = [feat.x feat.y feat.z];
    obs.gpt = gpt;
    obs.lpt = lpt;
    obs.pose_id = pose_i;
    obs.feat_id = feat.id;
    obs.obs_x = px;
    obs.obs_y = py; 
end

%% get point cloud from features
function gpc = get_feature_pc(feats)
    n = length(feats);
    gpc = zeros(3, n);
    for i = 1:n
        ft = feats(i); 
        gpc(1, i) = ft.x;
        gpc(2, i) = ft.y; 
        gpc(3, i) = ft.z;
    end
end

%% transform point cloud from global coordinate into camera's coordinate 
function lpc = transform_pc(R, t, gpc)
    [m, n] = size(gpc); 
    translation = repmat(t, 1, n); 
    lpc = R * gpc + translation; 
end
