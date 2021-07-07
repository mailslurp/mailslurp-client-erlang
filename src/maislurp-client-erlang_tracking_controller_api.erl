-module(maislurp-client-erlang_tracking_controller_api).

-export([create_tracking_pixel/2, create_tracking_pixel/3,
         get_all_tracking_pixels/1, get_all_tracking_pixels/2,
         get_tracking_pixel/2, get_tracking_pixel/3]).

-define(BASE_URL, "").

%% @doc Create tracking pixel
%% Create a tracking pixel. A tracking pixel is an image that can be embedded in an email. When the email is viewed and the image is seen MailSlurp will mark the pixel as seen. Use tracking pixels to monitor email open events. You can receive open notifications via webhook or by fetching the pixel.
-spec create_tracking_pixel(ctx:ctx(), maislurp-client-erlang_create_tracking_pixel_options:maislurp-client-erlang_create_tracking_pixel_options()) -> {ok, maislurp-client-erlang_tracking_pixel_dto:maislurp-client-erlang_tracking_pixel_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
create_tracking_pixel(Ctx, CreateTrackingPixelOptions) ->
    create_tracking_pixel(Ctx, CreateTrackingPixelOptions, #{}).

-spec create_tracking_pixel(ctx:ctx(), maislurp-client-erlang_create_tracking_pixel_options:maislurp-client-erlang_create_tracking_pixel_options(), maps:map()) -> {ok, maislurp-client-erlang_tracking_pixel_dto:maislurp-client-erlang_tracking_pixel_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
create_tracking_pixel(Ctx, CreateTrackingPixelOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/tracking/pixels"],
    QS = [],
    Headers = [],
    Body1 = CreateTrackingPixelOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get tracking pixels
%% List tracking pixels in paginated form
-spec get_all_tracking_pixels(ctx:ctx()) -> {ok, maislurp-client-erlang_page_tracking_pixel_projection:maislurp-client-erlang_page_tracking_pixel_projection(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_all_tracking_pixels(Ctx) ->
    get_all_tracking_pixels(Ctx, #{}).

-spec get_all_tracking_pixels(ctx:ctx(), maps:map()) -> {ok, maislurp-client-erlang_page_tracking_pixel_projection:maislurp-client-erlang_page_tracking_pixel_projection(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_all_tracking_pixels(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/tracking/pixels"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['page', 'searchFilter', 'size', 'sort'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get pixel
%% 
-spec get_tracking_pixel(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_tracking_pixel_dto:maislurp-client-erlang_tracking_pixel_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_tracking_pixel(Ctx, Id) ->
    get_tracking_pixel(Ctx, Id, #{}).

-spec get_tracking_pixel(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_tracking_pixel_dto:maislurp-client-erlang_tracking_pixel_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_tracking_pixel(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/tracking/pixels/", Id, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


