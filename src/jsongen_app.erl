%%%-------------------------------------------------------------------
%% @doc java_erlang public API
%% @end
%%%-------------------------------------------------------------------

-module(jsongen_app).

-behaviour(application).

%% Application callbacks
-export([start/2
        ,stop/1]).

%%====================================================================
%% API
%%====================================================================

start(_StartType, _StartArgs) ->
    jsongen_sup:start_link().

%%--------------------------------------------------------------------
stop(_State) ->
    ok.

%%====================================================================
%% Internal functions
%%====================================================================
