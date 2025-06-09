-module(maislurp-client-erlang_mfa_controller_api).

-export([create_totp_device_for_custom/2, create_totp_device_for_custom/3,
         create_totp_device_for_otp_auth_url/2, create_totp_device_for_otp_auth_url/3,
         get_totp_device/2, get_totp_device/3,
         get_totp_device_by/1, get_totp_device_by/2,
         get_totp_device_code/2, get_totp_device_code/3]).

-define(BASE_URL, "").

%% @doc Create a TOTP device from custom options
%% Create a virtual TOTP device for custom options specifying all parameters of the TOTP device.
-spec create_totp_device_for_custom(ctx:ctx(), maislurp-client-erlang_create_totp_device_otp_auth_url_options:maislurp-client-erlang_create_totp_device_otp_auth_url_options()) -> {ok, maislurp-client-erlang_totp_device_dto:maislurp-client-erlang_totp_device_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
create_totp_device_for_custom(Ctx, MaislurpClientErlangCreateTotpDeviceOtpAuthUrlOptions) ->
    create_totp_device_for_custom(Ctx, MaislurpClientErlangCreateTotpDeviceOtpAuthUrlOptions, #{}).

-spec create_totp_device_for_custom(ctx:ctx(), maislurp-client-erlang_create_totp_device_otp_auth_url_options:maislurp-client-erlang_create_totp_device_otp_auth_url_options(), maps:map()) -> {ok, maislurp-client-erlang_totp_device_dto:maislurp-client-erlang_totp_device_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
create_totp_device_for_custom(Ctx, MaislurpClientErlangCreateTotpDeviceOtpAuthUrlOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/mfa/totp/device/custom"],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangCreateTotpDeviceOtpAuthUrlOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Create a TOTP device from an OTP Auth URL
%% Create a virtual TOTP device for a given OTP Auth URL such as otpauth://totp/MyApp:alice@example.com?secret=ABC123&issuer=MyApp&period=30&digits=6&algorithm=SHA1. You can provider overrides in the options for each component of the URL.
-spec create_totp_device_for_otp_auth_url(ctx:ctx(), maislurp-client-erlang_create_totp_device_otp_auth_url_options:maislurp-client-erlang_create_totp_device_otp_auth_url_options()) -> {ok, maislurp-client-erlang_totp_device_dto:maislurp-client-erlang_totp_device_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
create_totp_device_for_otp_auth_url(Ctx, MaislurpClientErlangCreateTotpDeviceOtpAuthUrlOptions) ->
    create_totp_device_for_otp_auth_url(Ctx, MaislurpClientErlangCreateTotpDeviceOtpAuthUrlOptions, #{}).

-spec create_totp_device_for_otp_auth_url(ctx:ctx(), maislurp-client-erlang_create_totp_device_otp_auth_url_options:maislurp-client-erlang_create_totp_device_otp_auth_url_options(), maps:map()) -> {ok, maislurp-client-erlang_totp_device_dto:maislurp-client-erlang_totp_device_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
create_totp_device_for_otp_auth_url(Ctx, MaislurpClientErlangCreateTotpDeviceOtpAuthUrlOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/mfa/totp/device/otpAuthUrl"],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangCreateTotpDeviceOtpAuthUrlOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get a TOTP device by ID
%% Get Time-Based One-Time Password (TOTP) device by its ID.
-spec get_totp_device(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_totp_device_dto:maislurp-client-erlang_totp_device_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_totp_device(Ctx, Id) ->
    get_totp_device(Ctx, Id, #{}).

-spec get_totp_device(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_totp_device_dto:maislurp-client-erlang_totp_device_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_totp_device(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/mfa/totp/device/", Id, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get a TOTP device by username, issuer, or name. Returns empty if not found.
%% Get Time-Based One-Time Password (TOTP) device by its username and issuer mapping.
-spec get_totp_device_by(ctx:ctx()) -> {ok, maislurp-client-erlang_totp_device_optional_dto:maislurp-client-erlang_totp_device_optional_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_totp_device_by(Ctx) ->
    get_totp_device_by(Ctx, #{}).

-spec get_totp_device_by(ctx:ctx(), maps:map()) -> {ok, maislurp-client-erlang_totp_device_optional_dto:maislurp-client-erlang_totp_device_optional_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_totp_device_by(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/mfa/totp/device/by"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['name', 'issuer', 'username'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get a TOTP device code by device ID
%% Get Time-Based One-Time Password for a device by its ID.
-spec get_totp_device_code(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_totp_device_code_dto:maislurp-client-erlang_totp_device_code_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_totp_device_code(Ctx, Id) ->
    get_totp_device_code(Ctx, Id, #{}).

-spec get_totp_device_code(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_totp_device_code_dto:maislurp-client-erlang_totp_device_code_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_totp_device_code(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/mfa/totp/device/", Id, "/code"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['at'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


