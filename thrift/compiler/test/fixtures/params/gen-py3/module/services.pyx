#
# Autogenerated by Thrift
#
# DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
#  @generated
#

cimport cython
from libcpp.memory cimport shared_ptr, make_shared, unique_ptr, make_unique
from libcpp.string cimport string
from libcpp cimport bool as cbool
from cpython cimport bool as pbool
from libc.stdint cimport int8_t, int16_t, int32_t, int64_t
from libcpp.vector cimport vector
from libcpp.set cimport set as cset
from libcpp.map cimport map as cmap
from cython.operator cimport dereference as deref
from cpython.ref cimport PyObject
from thrift.py3.common import (
  InterfaceSpec as __InterfaceSpec,
  MethodSpec as __MethodSpec,
  ArgumentSpec as __ArgumentSpec,
)
from thrift.py3.exceptions cimport (
    cTApplicationException,
    ApplicationError as __ApplicationError,
    cTApplicationExceptionType__UNKNOWN)
from thrift.py3.server cimport ServiceInterface, RequestContext, Cpp2RequestContext
from thrift.py3.server import RequestContext, pass_context
from folly cimport (
  cFollyPromise,
  cFollyUnit,
  c_unit
)
from thrift.py3.types cimport move

cimport folly.futures
from folly.executor cimport get_executor
cimport folly.iobuf as __iobuf
import folly.iobuf as __iobuf
from folly.iobuf cimport move as move_iobuf

cimport module.types as _module_types
import module.types as _module_types

import asyncio
import functools
import sys
import traceback
import types as _py_types

from module.services_wrapper cimport cNestedContainersInterface


cdef extern from "<utility>" namespace "std":
    cdef cFollyPromise[cFollyUnit] move_promise_cFollyUnit "std::move"(
        cFollyPromise[cFollyUnit])

@cython.auto_pickle(False)
cdef class Promise_cFollyUnit:
    cdef cFollyPromise[cFollyUnit] cPromise

    @staticmethod
    cdef create(cFollyPromise[cFollyUnit] cPromise):
        inst = <Promise_cFollyUnit>Promise_cFollyUnit.__new__(Promise_cFollyUnit)
        inst.cPromise = move_promise_cFollyUnit(cPromise)
        return inst

cdef object _NestedContainers_annotations = _py_types.MappingProxyType({
})


@cython.auto_pickle(False)
cdef class NestedContainersInterface(
    ServiceInterface
):
    annotations = _NestedContainers_annotations

    def __cinit__(self):
        self._cpp_obj = cNestedContainersInterface(
            <PyObject *> self,
            get_executor()
        )

    @staticmethod
    def pass_context_mapList(fn):
        return pass_context(fn)

    async def mapList(
            self,
            foo):
        raise NotImplementedError("async def mapList is not implemented")

    @staticmethod
    def pass_context_mapSet(fn):
        return pass_context(fn)

    async def mapSet(
            self,
            foo):
        raise NotImplementedError("async def mapSet is not implemented")

    @staticmethod
    def pass_context_listMap(fn):
        return pass_context(fn)

    async def listMap(
            self,
            foo):
        raise NotImplementedError("async def listMap is not implemented")

    @staticmethod
    def pass_context_listSet(fn):
        return pass_context(fn)

    async def listSet(
            self,
            foo):
        raise NotImplementedError("async def listSet is not implemented")

    @staticmethod
    def pass_context_turtles(fn):
        return pass_context(fn)

    async def turtles(
            self,
            foo):
        raise NotImplementedError("async def turtles is not implemented")

    
    @staticmethod
    def __get_reflection_for_mapList():
      return __MethodSpec(
        name="mapList",
        arguments=[
          __ArgumentSpec(
            name="foo",
            type=_module_types.Map__i32_List__i32,
            annotations=_py_types.MappingProxyType({
            }),
          ),],
        result=None,
        exceptions=[],
        annotations=_py_types.MappingProxyType({
        }),
      )
    @staticmethod
    def __get_reflection_for_mapSet():
      return __MethodSpec(
        name="mapSet",
        arguments=[
          __ArgumentSpec(
            name="foo",
            type=_module_types.Map__i32_Set__i32,
            annotations=_py_types.MappingProxyType({
            }),
          ),],
        result=None,
        exceptions=[],
        annotations=_py_types.MappingProxyType({
        }),
      )
    @staticmethod
    def __get_reflection_for_listMap():
      return __MethodSpec(
        name="listMap",
        arguments=[
          __ArgumentSpec(
            name="foo",
            type=_module_types.List__Map__i32_i32,
            annotations=_py_types.MappingProxyType({
            }),
          ),],
        result=None,
        exceptions=[],
        annotations=_py_types.MappingProxyType({
        }),
      )
    @staticmethod
    def __get_reflection_for_listSet():
      return __MethodSpec(
        name="listSet",
        arguments=[
          __ArgumentSpec(
            name="foo",
            type=_module_types.List__Set__i32,
            annotations=_py_types.MappingProxyType({
            }),
          ),],
        result=None,
        exceptions=[],
        annotations=_py_types.MappingProxyType({
        }),
      )
    @staticmethod
    def __get_reflection_for_turtles():
      return __MethodSpec(
        name="turtles",
        arguments=[
          __ArgumentSpec(
            name="foo",
            type=_module_types.List__List__Map__i32_Map__i32_Set__i32,
            annotations=_py_types.MappingProxyType({
            }),
          ),],
        result=None,
        exceptions=[],
        annotations=_py_types.MappingProxyType({
        }),
      )
    
    @classmethod
    def __get_reflection__(cls):
      return __InterfaceSpec(
        name="NestedContainers",
        methods=[
          cls.__get_reflection_for_mapList(),
                cls.__get_reflection_for_mapSet(),
                cls.__get_reflection_for_listMap(),
                cls.__get_reflection_for_listSet(),
                cls.__get_reflection_for_turtles(),
          ],
        annotations=_py_types.MappingProxyType({
        }),
      )


cdef api void call_cy_NestedContainers_mapList(
    object self,
    Cpp2RequestContext* ctx,
    cFollyPromise[cFollyUnit] cPromise,
    unique_ptr[cmap[int32_t,vector[int32_t]]] foo
):
    cdef NestedContainersInterface __iface
    __iface = self
    __promise = Promise_cFollyUnit.create(move_promise_cFollyUnit(cPromise))
    arg_foo = _module_types.Map__i32_List__i32.create(_module_types.move(foo))
    __context = None
    if __iface._pass_context_mapList:
        __context = RequestContext.create(ctx)
    asyncio.get_event_loop().create_task(
        NestedContainers_mapList_coro(
            self,
            __context,
            __promise,
            arg_foo
        )
    )

async def NestedContainers_mapList_coro(
    object self,
    object ctx,
    Promise_cFollyUnit promise,
    foo
):
    try:
        if ctx is not None:
            result = await self.mapList(ctx,
                      foo)
        else:
            result = await self.mapList(
                      foo)
    except __ApplicationError as ex:
        # If the handler raised an ApplicationError convert it to a C++ one
        promise.cPromise.setException(cTApplicationException(
            ex.type.value, ex.message.encode('UTF-8')
        ))
    except Exception as ex:
        print(
            "Unexpected error in service handler mapList:",
            file=sys.stderr)
        traceback.print_exc()
        promise.cPromise.setException(cTApplicationException(
            cTApplicationExceptionType__UNKNOWN, repr(ex).encode('UTF-8')
        ))
    else:
        promise.cPromise.setValue(c_unit)

cdef api void call_cy_NestedContainers_mapSet(
    object self,
    Cpp2RequestContext* ctx,
    cFollyPromise[cFollyUnit] cPromise,
    unique_ptr[cmap[int32_t,cset[int32_t]]] foo
):
    cdef NestedContainersInterface __iface
    __iface = self
    __promise = Promise_cFollyUnit.create(move_promise_cFollyUnit(cPromise))
    arg_foo = _module_types.Map__i32_Set__i32.create(_module_types.move(foo))
    __context = None
    if __iface._pass_context_mapSet:
        __context = RequestContext.create(ctx)
    asyncio.get_event_loop().create_task(
        NestedContainers_mapSet_coro(
            self,
            __context,
            __promise,
            arg_foo
        )
    )

async def NestedContainers_mapSet_coro(
    object self,
    object ctx,
    Promise_cFollyUnit promise,
    foo
):
    try:
        if ctx is not None:
            result = await self.mapSet(ctx,
                      foo)
        else:
            result = await self.mapSet(
                      foo)
    except __ApplicationError as ex:
        # If the handler raised an ApplicationError convert it to a C++ one
        promise.cPromise.setException(cTApplicationException(
            ex.type.value, ex.message.encode('UTF-8')
        ))
    except Exception as ex:
        print(
            "Unexpected error in service handler mapSet:",
            file=sys.stderr)
        traceback.print_exc()
        promise.cPromise.setException(cTApplicationException(
            cTApplicationExceptionType__UNKNOWN, repr(ex).encode('UTF-8')
        ))
    else:
        promise.cPromise.setValue(c_unit)

cdef api void call_cy_NestedContainers_listMap(
    object self,
    Cpp2RequestContext* ctx,
    cFollyPromise[cFollyUnit] cPromise,
    unique_ptr[vector[cmap[int32_t,int32_t]]] foo
):
    cdef NestedContainersInterface __iface
    __iface = self
    __promise = Promise_cFollyUnit.create(move_promise_cFollyUnit(cPromise))
    arg_foo = _module_types.List__Map__i32_i32.create(_module_types.move(foo))
    __context = None
    if __iface._pass_context_listMap:
        __context = RequestContext.create(ctx)
    asyncio.get_event_loop().create_task(
        NestedContainers_listMap_coro(
            self,
            __context,
            __promise,
            arg_foo
        )
    )

async def NestedContainers_listMap_coro(
    object self,
    object ctx,
    Promise_cFollyUnit promise,
    foo
):
    try:
        if ctx is not None:
            result = await self.listMap(ctx,
                      foo)
        else:
            result = await self.listMap(
                      foo)
    except __ApplicationError as ex:
        # If the handler raised an ApplicationError convert it to a C++ one
        promise.cPromise.setException(cTApplicationException(
            ex.type.value, ex.message.encode('UTF-8')
        ))
    except Exception as ex:
        print(
            "Unexpected error in service handler listMap:",
            file=sys.stderr)
        traceback.print_exc()
        promise.cPromise.setException(cTApplicationException(
            cTApplicationExceptionType__UNKNOWN, repr(ex).encode('UTF-8')
        ))
    else:
        promise.cPromise.setValue(c_unit)

cdef api void call_cy_NestedContainers_listSet(
    object self,
    Cpp2RequestContext* ctx,
    cFollyPromise[cFollyUnit] cPromise,
    unique_ptr[vector[cset[int32_t]]] foo
):
    cdef NestedContainersInterface __iface
    __iface = self
    __promise = Promise_cFollyUnit.create(move_promise_cFollyUnit(cPromise))
    arg_foo = _module_types.List__Set__i32.create(_module_types.move(foo))
    __context = None
    if __iface._pass_context_listSet:
        __context = RequestContext.create(ctx)
    asyncio.get_event_loop().create_task(
        NestedContainers_listSet_coro(
            self,
            __context,
            __promise,
            arg_foo
        )
    )

async def NestedContainers_listSet_coro(
    object self,
    object ctx,
    Promise_cFollyUnit promise,
    foo
):
    try:
        if ctx is not None:
            result = await self.listSet(ctx,
                      foo)
        else:
            result = await self.listSet(
                      foo)
    except __ApplicationError as ex:
        # If the handler raised an ApplicationError convert it to a C++ one
        promise.cPromise.setException(cTApplicationException(
            ex.type.value, ex.message.encode('UTF-8')
        ))
    except Exception as ex:
        print(
            "Unexpected error in service handler listSet:",
            file=sys.stderr)
        traceback.print_exc()
        promise.cPromise.setException(cTApplicationException(
            cTApplicationExceptionType__UNKNOWN, repr(ex).encode('UTF-8')
        ))
    else:
        promise.cPromise.setValue(c_unit)

cdef api void call_cy_NestedContainers_turtles(
    object self,
    Cpp2RequestContext* ctx,
    cFollyPromise[cFollyUnit] cPromise,
    unique_ptr[vector[vector[cmap[int32_t,cmap[int32_t,cset[int32_t]]]]]] foo
):
    cdef NestedContainersInterface __iface
    __iface = self
    __promise = Promise_cFollyUnit.create(move_promise_cFollyUnit(cPromise))
    arg_foo = _module_types.List__List__Map__i32_Map__i32_Set__i32.create(_module_types.move(foo))
    __context = None
    if __iface._pass_context_turtles:
        __context = RequestContext.create(ctx)
    asyncio.get_event_loop().create_task(
        NestedContainers_turtles_coro(
            self,
            __context,
            __promise,
            arg_foo
        )
    )

async def NestedContainers_turtles_coro(
    object self,
    object ctx,
    Promise_cFollyUnit promise,
    foo
):
    try:
        if ctx is not None:
            result = await self.turtles(ctx,
                      foo)
        else:
            result = await self.turtles(
                      foo)
    except __ApplicationError as ex:
        # If the handler raised an ApplicationError convert it to a C++ one
        promise.cPromise.setException(cTApplicationException(
            ex.type.value, ex.message.encode('UTF-8')
        ))
    except Exception as ex:
        print(
            "Unexpected error in service handler turtles:",
            file=sys.stderr)
        traceback.print_exc()
        promise.cPromise.setException(cTApplicationException(
            cTApplicationExceptionType__UNKNOWN, repr(ex).encode('UTF-8')
        ))
    else:
        promise.cPromise.setValue(c_unit)

