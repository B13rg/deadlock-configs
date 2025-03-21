// Deadlock cfg

{% if settings.graphics.enabled %}
// ----------------
// Graphics
// ----------------

// Frame rate limiter.
// 0=no limit.  Does not apply to dedicated server.
fps_max "0"

// Additional frame rate limit while in tools mode and a window other than the game window has focus.
// Note that fps_max still applies, this only allows the maximum frame rate for tools mode to be lower.
// 0=no tools specific limit.
fps_max_tools "60"

// Frame rate limiter while the game UI is displayed.
// 0=no limit.  Does not apply to dedicated server.
fps_max_ui "60"

mat_viewportscale "0.1"

// Graphics and Performance Optimizations NEW
r_low_latency "1"

// When r_low_latency is enabled, this moves the low latency sleep on tick frames to happen after client simulation.
engine_low_latency_sleep_after_client_tick "false"

//Toggle visibility of first person weapon tracers
r_drawtracers_firstperson "false"

{%- endif %}

{% if settings.network.enabled %}
// ----------------
// Network Optimizations
// ----------------

// Sets the client simulation interpolation amount, in terms of server updates (final amount is cl_interp_ratio / cl_updaterate).
cl_interp_ratio "1"

// Min bytes/sec the host can receive data
rate "786432"

// Number of packets per second of updates you are requesting from the server
cl_updaterate "66"


r_flush_on_pooled_ib_resize "false"
r_smooth_morph_normals "false"

// Validate each StateChanged against known offsets.
sv_networkvar_validate "false"

// Track individual field offset changes, rather than a single dirty flag for the whole entity.
sv_networkvar_perfieldtracking "false"

// Perform server side lag compensation of weapon firing events.
cl_lagcompensation "true"				                

// No dev comments.                                                 
cl_network_quality2 "-1"

// This value, multiplied by the tick interval, is added to cl_tickpacket_recvmargin_desired to obtain the effective desired recv margin.
cl_tickpacket_desired_queuelength "1"
{%- endif %}

{% if settings.user.enabled %}
// ----------------
// User Settings
// ----------------

// Are we still showing the new player instructions?
citadel_new_player_flow_visible "false"

// Do we want to show the decorations for new player friendly heroes?
citadel_display_new_player_recommendations "false"

// Allows the console to be activated.
con_enable "true"

// Display in game lessons that teach new players.
gameinstructor_enable "false"

// How long do numbers live. 
// (default value is 1.5) set to 0 to disable.
citadel_damage_text_lifetime "1.5"

// How long does hit marker live.
// (default value is 0.1) set to 0 to disable.
citadel_crosshair_hit_marker_duration "0.1"


// Override the region of the client. Set to local region.
// (-1: Auto, 0: North America, 1: Europe, 2: Asia, 3: South America, 4: Europe (not sure if this is different from 1), 5: Oceania)
// citadel_region_override "-1"

// The region of the world to report this server in. Set to local region. 
// (-1: Auto, 0: North America, 1: Europe, 2: Asia, 3: South America, 4: Europe (not sure if this is different from 1), 5: Oceania)
// sv_region "-1"

// Mouse sensitivity. Set to preference (default value is 1.5)
// sensitivity 2.5

// Adjusts Nvidia Reflex (0=off, 1=on, 2=on+boost) for GPU bound users use 1, for CPU bound use 2
r_low_latency {% if settings.user.cpu_bound %}"2"{% else %} "1" {% endif %}

// When r_low_latency is enabled, this moves the low latency sleep on tick frames to happen after client simulation. 
(Recommended to be left off. Users reporting frame pacing issues with this.)
// engine_low_latency_sleep_after_client_tick "false"
{%- endif %}
