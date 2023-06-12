-module(maislurp-client-erlang_phone_controller_api).

-export([create_emergency_address/2, create_emergency_address/3,
         delete_emergency_address/2, delete_emergency_address/3,
         delete_phone_number/2, delete_phone_number/3,
         get_emergency_address/2, get_emergency_address/3,
         get_emergency_addresses/1, get_emergency_addresses/2,
         get_phone_number/2, get_phone_number/3,
         get_phone_numbers/1, get_phone_numbers/2,
         get_phone_plans/1, get_phone_plans/2,
         test_phone_number_send_sms/3, test_phone_number_send_sms/4]).

-define(BASE_URL, "").

%% @doc 
%% 
-spec create_emergency_address(ctx:ctx(), maislurp-client-erlang_create_emergency_address_options:maislurp-client-erlang_create_emergency_address_options()) -> {ok, maislurp-client-erlang_emergency_address:maislurp-client-erlang_emergency_address(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
create_emergency_address(Ctx, MaislurpClientErlangCreateEmergencyAddressOptions) ->
    create_emergency_address(Ctx, MaislurpClientErlangCreateEmergencyAddressOptions, #{}).

-spec create_emergency_address(ctx:ctx(), maislurp-client-erlang_create_emergency_address_options:maislurp-client-erlang_create_emergency_address_options(), maps:map()) -> {ok, maislurp-client-erlang_emergency_address:maislurp-client-erlang_emergency_address(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
create_emergency_address(Ctx, MaislurpClientErlangCreateEmergencyAddressOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/phone/emergency-addresses"],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangCreateEmergencyAddressOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec delete_emergency_address(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_empty_response_dto:maislurp-client-erlang_empty_response_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
delete_emergency_address(Ctx, AddressId) ->
    delete_emergency_address(Ctx, AddressId, #{}).

-spec delete_emergency_address(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_empty_response_dto:maislurp-client-erlang_empty_response_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
delete_emergency_address(Ctx, AddressId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/phone/emergency-addresses/", AddressId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec delete_phone_number(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
delete_phone_number(Ctx, PhoneNumberId) ->
    delete_phone_number(Ctx, PhoneNumberId, #{}).

-spec delete_phone_number(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
delete_phone_number(Ctx, PhoneNumberId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/phone/numbers/", PhoneNumberId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec get_emergency_address(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_emergency_address:maislurp-client-erlang_emergency_address(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_emergency_address(Ctx, AddressId) ->
    get_emergency_address(Ctx, AddressId, #{}).

-spec get_emergency_address(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_emergency_address:maislurp-client-erlang_emergency_address(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_emergency_address(Ctx, AddressId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/phone/emergency-addresses/", AddressId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec get_emergency_addresses(ctx:ctx()) -> {ok, [maislurp-client-erlang_emergency_address_dto:maislurp-client-erlang_emergency_address_dto()], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_emergency_addresses(Ctx) ->
    get_emergency_addresses(Ctx, #{}).

-spec get_emergency_addresses(ctx:ctx(), maps:map()) -> {ok, [maislurp-client-erlang_emergency_address_dto:maislurp-client-erlang_emergency_address_dto()], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_emergency_addresses(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/phone/emergency-addresses"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec get_phone_number(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_phone_number_dto:maislurp-client-erlang_phone_number_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_phone_number(Ctx, PhoneNumberId) ->
    get_phone_number(Ctx, PhoneNumberId, #{}).

-spec get_phone_number(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_phone_number_dto:maislurp-client-erlang_phone_number_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_phone_number(Ctx, PhoneNumberId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/phone/numbers/", PhoneNumberId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec get_phone_numbers(ctx:ctx()) -> {ok, maislurp-client-erlang_page_phone_number_projection:maislurp-client-erlang_page_phone_number_projection(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_phone_numbers(Ctx) ->
    get_phone_numbers(Ctx, #{}).

-spec get_phone_numbers(ctx:ctx(), maps:map()) -> {ok, maislurp-client-erlang_page_phone_number_projection:maislurp-client-erlang_page_phone_number_projection(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_phone_numbers(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/phone/numbers"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['phoneCountry', 'page', 'size', 'sort', 'since', 'before'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec get_phone_plans(ctx:ctx()) -> {ok, [maislurp-client-erlang_phone_plan_dto:maislurp-client-erlang_phone_plan_dto()], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_phone_plans(Ctx) ->
    get_phone_plans(Ctx, #{}).

-spec get_phone_plans(ctx:ctx(), maps:map()) -> {ok, [maislurp-client-erlang_phone_plan_dto:maislurp-client-erlang_phone_plan_dto()], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_phone_plans(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/phone/plans"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% 
-spec test_phone_number_send_sms(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_test_phone_number_options:maislurp-client-erlang_test_phone_number_options()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
test_phone_number_send_sms(Ctx, PhoneNumberId, MaislurpClientErlangTestPhoneNumberOptions) ->
    test_phone_number_send_sms(Ctx, PhoneNumberId, MaislurpClientErlangTestPhoneNumberOptions, #{}).

-spec test_phone_number_send_sms(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_test_phone_number_options:maislurp-client-erlang_test_phone_number_options(), maps:map()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
test_phone_number_send_sms(Ctx, PhoneNumberId, MaislurpClientErlangTestPhoneNumberOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/phone/numbers/", PhoneNumberId, "/test"],
    QS = [],
    Headers = []++maislurp-client-erlang_utils:optional_params(['x-test-id'], _OptionalParams),
    Body1 = MaislurpClientErlangTestPhoneNumberOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


