-module(log_debug_app).

-behaviour(application).

%% Application callbacks
-export([start/2, stop/1]).

%% ===================================================================
%% Application callbacks
%% ===================================================================

start(_StartType, _StartArgs) ->
    %A = application:start(sqor_logger),
    %io:format("start sqor_logger with result ~p~n", [A]),
    %sqor_logger:info("Starting application log_debug"),
    %% entity_cache:start(),
    %%start_webserver(),
    %%D = application:start(fs),
    %%io:format("start fs with result ~p~n", [D]),


    log_debug_sup:start_link().

stop(_State) ->
    ok.
