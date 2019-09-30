#
# Autogenerated by Thrift
#
# DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
#  @generated
#
from libcpp.memory cimport shared_ptr, make_shared, unique_ptr, make_unique
from libcpp.string cimport string
from libcpp cimport bool as cbool
from cpython cimport bool as pbool
from libc.stdint cimport int8_t, int16_t, int32_t, int64_t
from libcpp.vector cimport vector as vector
from libcpp.set cimport set as cset
from libcpp.map cimport map as cmap
from cython.operator cimport dereference as deref, typeid
from cpython.ref cimport PyObject
from thrift.py3.client cimport cRequestChannel_ptr, makeClientWrapper
from thrift.py3.exceptions cimport try_make_shared_exception, create_py_exception
from folly cimport cFollyTry, cFollyUnit, c_unit
from libcpp.typeinfo cimport type_info
import thrift.py3.types
cimport thrift.py3.types
from thrift.py3.types cimport move
import thrift.py3.client
cimport thrift.py3.client
from thrift.py3.common cimport RpcOptions as __RpcOptions
from thrift.py3.common import (
  RpcOptions as __RpcOptions,
  InterfaceSpec as __InterfaceSpec,
  MethodSpec as __MethodSpec,
  ArgumentSpec as __ArgumentSpec,
)

from folly.futures cimport bridgeFutureWith
from folly.executor cimport get_executor
cimport folly.iobuf as __iobuf
import folly.iobuf as __iobuf
from folly.iobuf cimport move as move_iobuf
cimport cython

import sys
import types as _py_types
from asyncio import get_event_loop as asyncio_get_event_loop, shield as asyncio_shield, InvalidStateError as asyncio_InvalidStateError

cimport module.types as _module_types
import module.types as _module_types

from module.clients_wrapper cimport cMyServiceAsyncClient, cMyServiceClientWrapper
from module.clients_wrapper cimport cMyServicePrioParentAsyncClient, cMyServicePrioParentClientWrapper
from module.clients_wrapper cimport cMyServicePrioChildAsyncClient, cMyServicePrioChildClientWrapper


cdef void MyService_ping_callback(
    cFollyTry[cFollyUnit]&& result,
    PyObject* userdata
):
    client, pyfuture, options = <object> userdata  
    if result.hasException():
        pyfuture.set_exception(create_py_exception(result.exception(), <__RpcOptions>options))
    else:
        try:
            pyfuture.set_result(None)
        except Exception as ex:
            pyfuture.set_exception(ex.with_traceback(None))

cdef void MyService_getRandomData_callback(
    cFollyTry[string]&& result,
    PyObject* userdata
):
    client, pyfuture, options = <object> userdata  
    if result.hasException():
        pyfuture.set_exception(create_py_exception(result.exception(), <__RpcOptions>options))
    else:
        try:
            pyfuture.set_result(result.value().data().decode('UTF-8'))
        except Exception as ex:
            pyfuture.set_exception(ex.with_traceback(None))

cdef void MyService_hasDataById_callback(
    cFollyTry[cbool]&& result,
    PyObject* userdata
):
    client, pyfuture, options = <object> userdata  
    if result.hasException():
        pyfuture.set_exception(create_py_exception(result.exception(), <__RpcOptions>options))
    else:
        try:
            pyfuture.set_result(<bint>result.value())
        except Exception as ex:
            pyfuture.set_exception(ex.with_traceback(None))

cdef void MyService_getDataById_callback(
    cFollyTry[string]&& result,
    PyObject* userdata
):
    client, pyfuture, options = <object> userdata  
    if result.hasException():
        pyfuture.set_exception(create_py_exception(result.exception(), <__RpcOptions>options))
    else:
        try:
            pyfuture.set_result(result.value().data().decode('UTF-8'))
        except Exception as ex:
            pyfuture.set_exception(ex.with_traceback(None))

cdef void MyService_putDataById_callback(
    cFollyTry[cFollyUnit]&& result,
    PyObject* userdata
):
    client, pyfuture, options = <object> userdata  
    if result.hasException():
        pyfuture.set_exception(create_py_exception(result.exception(), <__RpcOptions>options))
    else:
        try:
            pyfuture.set_result(None)
        except Exception as ex:
            pyfuture.set_exception(ex.with_traceback(None))

cdef void MyService_lobDataById_callback(
    cFollyTry[cFollyUnit]&& result,
    PyObject* userdata
):
    client, pyfuture, options = <object> userdata  
    if result.hasException():
        pyfuture.set_exception(create_py_exception(result.exception(), <__RpcOptions>options))
    else:
        try:
            pyfuture.set_result(None)
        except Exception as ex:
            pyfuture.set_exception(ex.with_traceback(None))

cdef void MyService_doNothing_callback(
    cFollyTry[cFollyUnit]&& result,
    PyObject* userdata
):
    client, pyfuture, options = <object> userdata  
    if result.hasException():
        pyfuture.set_exception(create_py_exception(result.exception(), <__RpcOptions>options))
    else:
        try:
            pyfuture.set_result(None)
        except Exception as ex:
            pyfuture.set_exception(ex.with_traceback(None))

cdef void MyServicePrioParent_ping_callback(
    cFollyTry[cFollyUnit]&& result,
    PyObject* userdata
):
    client, pyfuture, options = <object> userdata  
    if result.hasException():
        pyfuture.set_exception(create_py_exception(result.exception(), <__RpcOptions>options))
    else:
        try:
            pyfuture.set_result(None)
        except Exception as ex:
            pyfuture.set_exception(ex.with_traceback(None))

cdef void MyServicePrioParent_pong_callback(
    cFollyTry[cFollyUnit]&& result,
    PyObject* userdata
):
    client, pyfuture, options = <object> userdata  
    if result.hasException():
        pyfuture.set_exception(create_py_exception(result.exception(), <__RpcOptions>options))
    else:
        try:
            pyfuture.set_result(None)
        except Exception as ex:
            pyfuture.set_exception(ex.with_traceback(None))

cdef void MyServicePrioChild_pang_callback(
    cFollyTry[cFollyUnit]&& result,
    PyObject* userdata
):
    client, pyfuture, options = <object> userdata  
    if result.hasException():
        pyfuture.set_exception(create_py_exception(result.exception(), <__RpcOptions>options))
    else:
        try:
            pyfuture.set_result(None)
        except Exception as ex:
            pyfuture.set_exception(ex.with_traceback(None))


cdef object _MyService_annotations = _py_types.MappingProxyType({
})


@cython.auto_pickle(False)
cdef class MyService(thrift.py3.client.Client):
    annotations = _MyService_annotations

    def __cinit__(MyService self):
        loop = asyncio_get_event_loop()
        self._connect_future = loop.create_future()
        self._deferred_headers = {}

    cdef const type_info* _typeid(MyService self):
        return &typeid(cMyServiceAsyncClient)

    cdef _module_MyService_set_client(MyService self, shared_ptr[cMyServiceClientWrapper] c_obj):
        """So the class hierarchy talks to the correct pointer type"""
        self._module_MyService_client = c_obj

    cdef _module_MyService_reset_client(MyService self):
        """So the class hierarchy resets the shared pointer up the chain"""
        self._module_MyService_client.reset()

    def __dealloc__(MyService self):
        if self._connect_future and self._connect_future.done() and not self._connect_future.exception():
            print(f'thrift-py3 client: {self!r} was not cleaned up, use the async context manager', file=sys.stderr)
            if self._module_MyService_client:
                deref(self._module_MyService_client).disconnect().get()
        self._module_MyService_reset_client()

    cdef bind_client(MyService self, cRequestChannel_ptr&& channel):
        self._module_MyService_set_client(
            makeClientWrapper[cMyServiceAsyncClient, cMyServiceClientWrapper](
                thrift.py3.client.move(channel)
            ),
        )

    async def __aenter__(MyService self):
        await asyncio_shield(self._connect_future)
        if self._context_entered:
            raise asyncio_InvalidStateError('Client context has been used already')
        self._context_entered = True
        for key, value in self._deferred_headers.items():
            self.set_persistent_header(key, value)
        self._deferred_headers = None
        return self

    def __aexit__(MyService self, *exc):
        self._check_connect_future()
        loop = asyncio_get_event_loop()
        future = loop.create_future()
        userdata = (self, future)
        bridgeFutureWith[cFollyUnit](
            self._executor,
            deref(self._module_MyService_client).disconnect(),
            closed_MyService_py3_client_callback,
            <PyObject *>userdata  # So we keep client alive until disconnect
        )
        # To break any future usage of this client
        # Also to prevent dealloc from trying to disconnect in a blocking way.
        badfuture = loop.create_future()
        badfuture.set_exception(asyncio_InvalidStateError('Client Out of Context'))
        badfuture.exception()
        self._connect_future = badfuture
        return asyncio_shield(future)

    def set_persistent_header(MyService self, str key, str value):
        if not self._module_MyService_client:
            self._deferred_headers[key] = value
            return

        cdef string ckey = <bytes> key.encode('utf-8')
        cdef string cvalue = <bytes> value.encode('utf-8')
        deref(self._module_MyService_client).setPersistentHeader(ckey, cvalue)

    @cython.always_allow_keywords(True)
    def ping(
            MyService self,
            __RpcOptions rpc_options=None
    ):
        if rpc_options is None:
            rpc_options = <__RpcOptions>__RpcOptions.__new__(__RpcOptions)
        self._check_connect_future()
        __loop = asyncio_get_event_loop()
        __future = __loop.create_future()
        __userdata = (self, __future, rpc_options)
        bridgeFutureWith[cFollyUnit](
            self._executor,
            deref(self._module_MyService_client).ping(rpc_options._cpp_obj, 
            ),
            MyService_ping_callback,
            <PyObject *> __userdata
        )
        return asyncio_shield(__future)

    @cython.always_allow_keywords(True)
    def getRandomData(
            MyService self,
            __RpcOptions rpc_options=None
    ):
        if rpc_options is None:
            rpc_options = <__RpcOptions>__RpcOptions.__new__(__RpcOptions)
        self._check_connect_future()
        __loop = asyncio_get_event_loop()
        __future = __loop.create_future()
        __userdata = (self, __future, rpc_options)
        bridgeFutureWith[string](
            self._executor,
            deref(self._module_MyService_client).getRandomData(rpc_options._cpp_obj, 
            ),
            MyService_getRandomData_callback,
            <PyObject *> __userdata
        )
        return asyncio_shield(__future)

    @cython.always_allow_keywords(True)
    def hasDataById(
            MyService self,
            id not None,
            __RpcOptions rpc_options=None
    ):
        if rpc_options is None:
            rpc_options = <__RpcOptions>__RpcOptions.__new__(__RpcOptions)
        if not isinstance(id, int):
            raise TypeError(f'id is not a {int !r}.')
        else:
            id = <int64_t> id
        self._check_connect_future()
        __loop = asyncio_get_event_loop()
        __future = __loop.create_future()
        __userdata = (self, __future, rpc_options)
        bridgeFutureWith[cbool](
            self._executor,
            deref(self._module_MyService_client).hasDataById(rpc_options._cpp_obj, 
                id,
            ),
            MyService_hasDataById_callback,
            <PyObject *> __userdata
        )
        return asyncio_shield(__future)

    @cython.always_allow_keywords(True)
    def getDataById(
            MyService self,
            id not None,
            __RpcOptions rpc_options=None
    ):
        if rpc_options is None:
            rpc_options = <__RpcOptions>__RpcOptions.__new__(__RpcOptions)
        if not isinstance(id, int):
            raise TypeError(f'id is not a {int !r}.')
        else:
            id = <int64_t> id
        self._check_connect_future()
        __loop = asyncio_get_event_loop()
        __future = __loop.create_future()
        __userdata = (self, __future, rpc_options)
        bridgeFutureWith[string](
            self._executor,
            deref(self._module_MyService_client).getDataById(rpc_options._cpp_obj, 
                id,
            ),
            MyService_getDataById_callback,
            <PyObject *> __userdata
        )
        return asyncio_shield(__future)

    @cython.always_allow_keywords(True)
    def putDataById(
            MyService self,
            id not None,
            str data not None,
            __RpcOptions rpc_options=None
    ):
        if rpc_options is None:
            rpc_options = <__RpcOptions>__RpcOptions.__new__(__RpcOptions)
        if not isinstance(id, int):
            raise TypeError(f'id is not a {int !r}.')
        else:
            id = <int64_t> id
        self._check_connect_future()
        __loop = asyncio_get_event_loop()
        __future = __loop.create_future()
        __userdata = (self, __future, rpc_options)
        bridgeFutureWith[cFollyUnit](
            self._executor,
            deref(self._module_MyService_client).putDataById(rpc_options._cpp_obj, 
                id,
                data.encode('UTF-8'),
            ),
            MyService_putDataById_callback,
            <PyObject *> __userdata
        )
        return asyncio_shield(__future)

    @cython.always_allow_keywords(True)
    def lobDataById(
            MyService self,
            id not None,
            str data not None,
            __RpcOptions rpc_options=None
    ):
        if rpc_options is None:
            rpc_options = <__RpcOptions>__RpcOptions.__new__(__RpcOptions)
        if not isinstance(id, int):
            raise TypeError(f'id is not a {int !r}.')
        else:
            id = <int64_t> id
        self._check_connect_future()
        __loop = asyncio_get_event_loop()
        __future = __loop.create_future()
        __userdata = (self, __future, rpc_options)
        bridgeFutureWith[cFollyUnit](
            self._executor,
            deref(self._module_MyService_client).lobDataById(rpc_options._cpp_obj, 
                id,
                data.encode('UTF-8'),
            ),
            MyService_lobDataById_callback,
            <PyObject *> __userdata
        )
        return asyncio_shield(__future)

    @cython.always_allow_keywords(True)
    def doNothing(
            MyService self,
            __RpcOptions rpc_options=None
    ):
        if rpc_options is None:
            rpc_options = <__RpcOptions>__RpcOptions.__new__(__RpcOptions)
        self._check_connect_future()
        __loop = asyncio_get_event_loop()
        __future = __loop.create_future()
        __userdata = (self, __future, rpc_options)
        bridgeFutureWith[cFollyUnit](
            self._executor,
            deref(self._module_MyService_client).doNothing(rpc_options._cpp_obj, 
            ),
            MyService_doNothing_callback,
            <PyObject *> __userdata
        )
        return asyncio_shield(__future)


    
    @staticmethod
    def __get_reflection_for_ping():
      return __MethodSpec(
        name="ping",
        arguments=[],
        result=None,
        exceptions=[],
        annotations=_py_types.MappingProxyType({
        }),
      )
    @staticmethod
    def __get_reflection_for_getRandomData():
      return __MethodSpec(
        name="getRandomData",
        arguments=[],
        result=str,
        exceptions=[],
        annotations=_py_types.MappingProxyType({
        }),
      )
    @staticmethod
    def __get_reflection_for_hasDataById():
      return __MethodSpec(
        name="hasDataById",
        arguments=[
          __ArgumentSpec(
            name="id",
            type=int,
            annotations=_py_types.MappingProxyType({
            }),
          ),],
        result=bool,
        exceptions=[],
        annotations=_py_types.MappingProxyType({
        }),
      )
    @staticmethod
    def __get_reflection_for_getDataById():
      return __MethodSpec(
        name="getDataById",
        arguments=[
          __ArgumentSpec(
            name="id",
            type=int,
            annotations=_py_types.MappingProxyType({
            }),
          ),],
        result=str,
        exceptions=[],
        annotations=_py_types.MappingProxyType({
        }),
      )
    @staticmethod
    def __get_reflection_for_putDataById():
      return __MethodSpec(
        name="putDataById",
        arguments=[
          __ArgumentSpec(
            name="id",
            type=int,
            annotations=_py_types.MappingProxyType({
            }),
          ),
          __ArgumentSpec(
            name="data",
            type=str,
            annotations=_py_types.MappingProxyType({
            }),
          ),],
        result=None,
        exceptions=[],
        annotations=_py_types.MappingProxyType({
        }),
      )
    @staticmethod
    def __get_reflection_for_lobDataById():
      return __MethodSpec(
        name="lobDataById",
        arguments=[
          __ArgumentSpec(
            name="id",
            type=int,
            annotations=_py_types.MappingProxyType({
            }),
          ),
          __ArgumentSpec(
            name="data",
            type=str,
            annotations=_py_types.MappingProxyType({
            }),
          ),],
        result=None,
        exceptions=[],
        annotations=_py_types.MappingProxyType({
        }),
      )
    @staticmethod
    def __get_reflection_for_doNothing():
      return __MethodSpec(
        name="doNothing",
        arguments=[],
        result=None,
        exceptions=[],
        annotations=_py_types.MappingProxyType({
          """cpp.name""": """cppDoNothing""",    }),
      )
    
    @classmethod
    def __get_reflection__(cls):
      return __InterfaceSpec(
        name="MyService",
        methods=[
          cls.__get_reflection_for_ping(),
                cls.__get_reflection_for_getRandomData(),
                cls.__get_reflection_for_hasDataById(),
                cls.__get_reflection_for_getDataById(),
                cls.__get_reflection_for_putDataById(),
                cls.__get_reflection_for_lobDataById(),
                cls.__get_reflection_for_doNothing(),
          ],
        annotations=_py_types.MappingProxyType({
        }),
      )

cdef void closed_MyService_py3_client_callback(
    cFollyTry[cFollyUnit]&& result,
    PyObject* userdata,
):
    client, pyfuture = <object> userdata 
    pyfuture.set_result(None)
cdef object _MyServicePrioParent_annotations = _py_types.MappingProxyType({
    """priority""": """HIGH""",})


@cython.auto_pickle(False)
cdef class MyServicePrioParent(thrift.py3.client.Client):
    annotations = _MyServicePrioParent_annotations

    def __cinit__(MyServicePrioParent self):
        loop = asyncio_get_event_loop()
        self._connect_future = loop.create_future()
        self._deferred_headers = {}

    cdef const type_info* _typeid(MyServicePrioParent self):
        return &typeid(cMyServicePrioParentAsyncClient)

    cdef _module_MyServicePrioParent_set_client(MyServicePrioParent self, shared_ptr[cMyServicePrioParentClientWrapper] c_obj):
        """So the class hierarchy talks to the correct pointer type"""
        self._module_MyServicePrioParent_client = c_obj

    cdef _module_MyServicePrioParent_reset_client(MyServicePrioParent self):
        """So the class hierarchy resets the shared pointer up the chain"""
        self._module_MyServicePrioParent_client.reset()

    def __dealloc__(MyServicePrioParent self):
        if self._connect_future and self._connect_future.done() and not self._connect_future.exception():
            print(f'thrift-py3 client: {self!r} was not cleaned up, use the async context manager', file=sys.stderr)
            if self._module_MyServicePrioParent_client:
                deref(self._module_MyServicePrioParent_client).disconnect().get()
        self._module_MyServicePrioParent_reset_client()

    cdef bind_client(MyServicePrioParent self, cRequestChannel_ptr&& channel):
        self._module_MyServicePrioParent_set_client(
            makeClientWrapper[cMyServicePrioParentAsyncClient, cMyServicePrioParentClientWrapper](
                thrift.py3.client.move(channel)
            ),
        )

    async def __aenter__(MyServicePrioParent self):
        await asyncio_shield(self._connect_future)
        if self._context_entered:
            raise asyncio_InvalidStateError('Client context has been used already')
        self._context_entered = True
        for key, value in self._deferred_headers.items():
            self.set_persistent_header(key, value)
        self._deferred_headers = None
        return self

    def __aexit__(MyServicePrioParent self, *exc):
        self._check_connect_future()
        loop = asyncio_get_event_loop()
        future = loop.create_future()
        userdata = (self, future)
        bridgeFutureWith[cFollyUnit](
            self._executor,
            deref(self._module_MyServicePrioParent_client).disconnect(),
            closed_MyServicePrioParent_py3_client_callback,
            <PyObject *>userdata  # So we keep client alive until disconnect
        )
        # To break any future usage of this client
        # Also to prevent dealloc from trying to disconnect in a blocking way.
        badfuture = loop.create_future()
        badfuture.set_exception(asyncio_InvalidStateError('Client Out of Context'))
        badfuture.exception()
        self._connect_future = badfuture
        return asyncio_shield(future)

    def set_persistent_header(MyServicePrioParent self, str key, str value):
        if not self._module_MyServicePrioParent_client:
            self._deferred_headers[key] = value
            return

        cdef string ckey = <bytes> key.encode('utf-8')
        cdef string cvalue = <bytes> value.encode('utf-8')
        deref(self._module_MyServicePrioParent_client).setPersistentHeader(ckey, cvalue)

    @cython.always_allow_keywords(True)
    def ping(
            MyServicePrioParent self,
            __RpcOptions rpc_options=None
    ):
        if rpc_options is None:
            rpc_options = <__RpcOptions>__RpcOptions.__new__(__RpcOptions)
        self._check_connect_future()
        __loop = asyncio_get_event_loop()
        __future = __loop.create_future()
        __userdata = (self, __future, rpc_options)
        bridgeFutureWith[cFollyUnit](
            self._executor,
            deref(self._module_MyServicePrioParent_client).ping(rpc_options._cpp_obj, 
            ),
            MyServicePrioParent_ping_callback,
            <PyObject *> __userdata
        )
        return asyncio_shield(__future)

    @cython.always_allow_keywords(True)
    def pong(
            MyServicePrioParent self,
            __RpcOptions rpc_options=None
    ):
        if rpc_options is None:
            rpc_options = <__RpcOptions>__RpcOptions.__new__(__RpcOptions)
        self._check_connect_future()
        __loop = asyncio_get_event_loop()
        __future = __loop.create_future()
        __userdata = (self, __future, rpc_options)
        bridgeFutureWith[cFollyUnit](
            self._executor,
            deref(self._module_MyServicePrioParent_client).pong(rpc_options._cpp_obj, 
            ),
            MyServicePrioParent_pong_callback,
            <PyObject *> __userdata
        )
        return asyncio_shield(__future)


    
    @staticmethod
    def __get_reflection_for_ping():
      return __MethodSpec(
        name="ping",
        arguments=[],
        result=None,
        exceptions=[],
        annotations=_py_types.MappingProxyType({
          """priority""": """IMPORTANT""",    }),
      )
    @staticmethod
    def __get_reflection_for_pong():
      return __MethodSpec(
        name="pong",
        arguments=[],
        result=None,
        exceptions=[],
        annotations=_py_types.MappingProxyType({
          """priority""": """HIGH_IMPORTANT""",    }),
      )
    
    @classmethod
    def __get_reflection__(cls):
      return __InterfaceSpec(
        name="MyServicePrioParent",
        methods=[
          cls.__get_reflection_for_ping(),
                cls.__get_reflection_for_pong(),
          ],
        annotations=_py_types.MappingProxyType({
          """priority""": """HIGH""",    }),
      )

cdef void closed_MyServicePrioParent_py3_client_callback(
    cFollyTry[cFollyUnit]&& result,
    PyObject* userdata,
):
    client, pyfuture = <object> userdata 
    pyfuture.set_result(None)
cdef object _MyServicePrioChild_annotations = _py_types.MappingProxyType({
})


@cython.auto_pickle(False)
cdef class MyServicePrioChild(MyServicePrioParent):
    annotations = _MyServicePrioChild_annotations

    def __cinit__(MyServicePrioChild self):
        loop = asyncio_get_event_loop()
        self._connect_future = loop.create_future()
        self._deferred_headers = {}

    cdef const type_info* _typeid(MyServicePrioChild self):
        return &typeid(cMyServicePrioChildAsyncClient)

    cdef _module_MyServicePrioChild_set_client(MyServicePrioChild self, shared_ptr[cMyServicePrioChildClientWrapper] c_obj):
        """So the class hierarchy talks to the correct pointer type"""
        self._module_MyServicePrioChild_client = c_obj
        self._module_MyServicePrioParent_set_client(<shared_ptr[cMyServicePrioParentClientWrapper]>c_obj)

    cdef _module_MyServicePrioChild_reset_client(MyServicePrioChild self):
        """So the class hierarchy resets the shared pointer up the chain"""
        self._module_MyServicePrioChild_client.reset()
        MyServicePrioParent._module_MyServicePrioParent_reset_client(self)

    def __dealloc__(MyServicePrioChild self):
        if self._connect_future and self._connect_future.done() and not self._connect_future.exception():
            print(f'thrift-py3 client: {self!r} was not cleaned up, use the async context manager', file=sys.stderr)
            if self._module_MyServicePrioChild_client:
                deref(self._module_MyServicePrioChild_client).disconnect().get()
        self._module_MyServicePrioChild_reset_client()

    cdef bind_client(MyServicePrioChild self, cRequestChannel_ptr&& channel):
        self._module_MyServicePrioChild_set_client(
            makeClientWrapper[cMyServicePrioChildAsyncClient, cMyServicePrioChildClientWrapper](
                thrift.py3.client.move(channel)
            ),
        )

    async def __aenter__(MyServicePrioChild self):
        await asyncio_shield(self._connect_future)
        if self._context_entered:
            raise asyncio_InvalidStateError('Client context has been used already')
        self._context_entered = True
        for key, value in self._deferred_headers.items():
            self.set_persistent_header(key, value)
        self._deferred_headers = None
        return self

    def __aexit__(MyServicePrioChild self, *exc):
        self._check_connect_future()
        loop = asyncio_get_event_loop()
        future = loop.create_future()
        userdata = (self, future)
        bridgeFutureWith[cFollyUnit](
            self._executor,
            deref(self._module_MyServicePrioChild_client).disconnect(),
            closed_MyServicePrioChild_py3_client_callback,
            <PyObject *>userdata  # So we keep client alive until disconnect
        )
        # To break any future usage of this client
        # Also to prevent dealloc from trying to disconnect in a blocking way.
        badfuture = loop.create_future()
        badfuture.set_exception(asyncio_InvalidStateError('Client Out of Context'))
        badfuture.exception()
        self._connect_future = badfuture
        return asyncio_shield(future)

    def set_persistent_header(MyServicePrioChild self, str key, str value):
        if not self._module_MyServicePrioChild_client:
            self._deferred_headers[key] = value
            return

        cdef string ckey = <bytes> key.encode('utf-8')
        cdef string cvalue = <bytes> value.encode('utf-8')
        deref(self._module_MyServicePrioChild_client).setPersistentHeader(ckey, cvalue)

    @cython.always_allow_keywords(True)
    def pang(
            MyServicePrioChild self,
            __RpcOptions rpc_options=None
    ):
        if rpc_options is None:
            rpc_options = <__RpcOptions>__RpcOptions.__new__(__RpcOptions)
        self._check_connect_future()
        __loop = asyncio_get_event_loop()
        __future = __loop.create_future()
        __userdata = (self, __future, rpc_options)
        bridgeFutureWith[cFollyUnit](
            self._executor,
            deref(self._module_MyServicePrioChild_client).pang(rpc_options._cpp_obj, 
            ),
            MyServicePrioChild_pang_callback,
            <PyObject *> __userdata
        )
        return asyncio_shield(__future)


    
    @staticmethod
    def __get_reflection_for_pang():
      return __MethodSpec(
        name="pang",
        arguments=[],
        result=None,
        exceptions=[],
        annotations=_py_types.MappingProxyType({
          """priority""": """BEST_EFFORT""",    }),
      )
    
    @classmethod
    def __get_reflection__(cls):
      return __InterfaceSpec(
        name="MyServicePrioChild",
        methods=[
          cls.__get_reflection_for_pang(),
          ],
        annotations=_py_types.MappingProxyType({
        }),
      )

cdef void closed_MyServicePrioChild_py3_client_callback(
    cFollyTry[cFollyUnit]&& result,
    PyObject* userdata,
):
    client, pyfuture = <object> userdata 
    pyfuture.set_result(None)
