#
# Autogenerated by Thrift
#
# DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
#  @generated
#

import thrift.py3.types
import thrift.py3.client
import thrift.py3.common
import typing as _typing
from types import TracebackType

import my.namespacing.test.module.module.types as _my_namespacing_test_module_module_types


_TestServiceT = _typing.TypeVar('_TestServiceT', bound='TestService')


class TestService(thrift.py3.client.Client):

    async def __aenter__(self: _TestServiceT) -> _TestServiceT: ...
    async def __aexit__(
        self,
        exc_type: _typing.Optional[_typing.Type[BaseException]],
        exc: _typing.Optional[BaseException],
        tb: _typing.Optional[TracebackType],
    ) -> _typing.Optional[bool]: ...

    def set_persistent_header(self, key: str, value: str) -> None: ...

    async def init(
        self,
        int1: int,
        rpc_options: _typing.Optional[thrift.py3.common.RpcOptions]=None
    ) -> int: ...

