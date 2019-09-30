#
# Autogenerated by Thrift
#
# DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
#  @generated
#
cimport cython as __cython
from cpython.bytes cimport PyBytes_AsStringAndSize
from cpython.object cimport PyTypeObject, Py_LT, Py_LE, Py_EQ, Py_NE, Py_GT, Py_GE
from libcpp.memory cimport shared_ptr, make_shared, unique_ptr, make_unique
from libcpp.string cimport string
from libcpp cimport bool as cbool
from libcpp.iterator cimport inserter as cinserter
from cpython cimport bool as pbool
from libc.stdint cimport int8_t, int16_t, int32_t, int64_t, uint32_t
from cython.operator cimport dereference as deref, preincrement as inc, address as ptr_address
import thrift.py3.types
cimport thrift.py3.types
cimport thrift.py3.exceptions
from thrift.py3.types import (
    NOTSET as __NOTSET,
    StructSpec as __StructSpec,
    ListSpec as __ListSpec,
    SetSpec as __SetSpec,
    MapSpec as __MapSpec,
    FieldSpec as __FieldSpec,
    StructType as __StructType,
    Qualifier as __Qualifier,
)
from thrift.py3.types cimport (
    translate_cpp_enum_to_python,
    SetMetaClass as __SetMetaClass,
    constant_shared_ptr,
    default_inst,
)
cimport thrift.py3.std_libcpp as std_libcpp
from thrift.py3.serializer import Protocol as __Protocol
cimport thrift.py3.serializer as serializer
from thrift.py3.serializer import deserialize, serialize
import folly.iobuf as __iobuf
from folly.optional cimport cOptional

import sys
import types as _py_types
import itertools
from collections.abc import Sequence, Set, Mapping, Iterable
import warnings
import weakref as __weakref
import builtins as _builtins


@__cython.auto_pickle(False)
cdef class Banal(thrift.py3.exceptions.Error):

    def __init__(
        Banal self
    ):
        self._cpp_obj = move(Banal._make_instance(
          NULL,
          NULL,
        ))
        _builtins.Exception.__init__(self, )


    @staticmethod
    cdef unique_ptr[cBanal] _make_instance(
        cBanal* base_instance,
        bint* __isNOTSET
    ) except *:
        cdef unique_ptr[cBanal] c_inst
        if base_instance:
            c_inst = make_unique[cBanal](deref(base_instance))
        else:
            c_inst = make_unique[cBanal]()

        # in C++ you don't have to call move(), but this doesn't translate
        # into a C++ return statement, so you do here
        return move_unique(c_inst)

    def __iter__(self):
        return iter(())

    def __bool__(self):
        return True

    @staticmethod
    cdef create(shared_ptr[cBanal] cpp_obj):
        inst = <Banal>Banal.__new__(Banal, (<bytes>deref(cpp_obj).what()).decode('utf-8'))
        inst._cpp_obj = move_shared(cpp_obj)
        _builtins.Exception.__init__(inst, )
        return inst


    def __hash__(Banal self):
        return super().__hash__()

    def __repr__(Banal self):
        return f'Banal()'
    def __copy__(Banal self):
        cdef shared_ptr[cBanal] cpp_obj = make_shared[cBanal](
            deref(self._cpp_obj)
        )
        return Banal.create(move_shared(cpp_obj))

    def __richcmp__(self, other, op):
        cdef int cop = op
        if not (
                isinstance(self, Banal) and
                isinstance(other, Banal)):
            if cop == Py_EQ:  # different types are never equal
                return False
            elif cop == Py_NE:  # different types are always notequal
                return True
            else:
                return NotImplemented

        cdef cBanal* cself = (<Banal>self)._cpp_obj.get()
        cdef cBanal* cother = (<Banal>other)._cpp_obj.get()
        if cop == Py_EQ:
            return deref(cself) == deref(cother)
        elif cop == Py_NE:
            return deref(cself) != deref(cother)
        elif cop == Py_LT:
            return deref(cself) < deref(cother)
        elif cop == Py_LE:
            return deref(cself) <= deref(cother)
        elif cop == Py_GT:
            return deref(cself) > deref(cother)
        elif cop == Py_GE:
            return deref(cself) >= deref(cother)
        else:
            return NotImplemented

    @staticmethod
    def __get_reflection__():
      defaults = Banal.create(constant_shared_ptr[cBanal](default_inst[cBanal]()))
      return __StructSpec(
        name="Banal",
        kind=__StructType.EXCEPTION,
        fields=[
    ],
        annotations=_py_types.MappingProxyType({
        }),
      )


@__cython.auto_pickle(False)
cdef class Fiery(thrift.py3.exceptions.Error):

    def __init__(
        Fiery self,
        str message=None
    ):
        if message is None:
            raise TypeError("__init__() needs required argument 'message'")
        self._cpp_obj = move(Fiery._make_instance(
          NULL,
          NULL,
          message,
        ))
        _builtins.Exception.__init__(self, self.message)


    @staticmethod
    cdef unique_ptr[cFiery] _make_instance(
        cFiery* base_instance,
        bint* __isNOTSET,
        str message 
    ) except *:
        cdef unique_ptr[cFiery] c_inst
        if base_instance:
            c_inst = make_unique[cFiery](deref(base_instance))
        else:
            c_inst = make_unique[cFiery]()

        if message is not None:
            deref(c_inst).message = thrift.py3.types.move(thrift.py3.types.bytes_to_string(message.encode('utf-8')))
        # in C++ you don't have to call move(), but this doesn't translate
        # into a C++ return statement, so you do here
        return move_unique(c_inst)

    def __iter__(self):
        yield 'message', self.message

    def __bool__(self):
        return True

    @staticmethod
    cdef create(shared_ptr[cFiery] cpp_obj):
        inst = <Fiery>Fiery.__new__(Fiery, (<bytes>deref(cpp_obj).what()).decode('utf-8'))
        inst._cpp_obj = move_shared(cpp_obj)
        _builtins.Exception.__init__(inst, inst.message)
        return inst

    @property
    def message(self):

        return (<bytes>deref(self._cpp_obj).message).decode('UTF-8')


    def __hash__(Fiery self):
        return super().__hash__()

    def __str__(Fiery self):
        field = self.message
        if field is None:
            return str(field)
        return field

    def __repr__(Fiery self):
        return f'Fiery(message={repr(self.message)})'
    def __copy__(Fiery self):
        cdef shared_ptr[cFiery] cpp_obj = make_shared[cFiery](
            deref(self._cpp_obj)
        )
        return Fiery.create(move_shared(cpp_obj))

    def __richcmp__(self, other, op):
        cdef int cop = op
        if not (
                isinstance(self, Fiery) and
                isinstance(other, Fiery)):
            if cop == Py_EQ:  # different types are never equal
                return False
            elif cop == Py_NE:  # different types are always notequal
                return True
            else:
                return NotImplemented

        cdef cFiery* cself = (<Fiery>self)._cpp_obj.get()
        cdef cFiery* cother = (<Fiery>other)._cpp_obj.get()
        if cop == Py_EQ:
            return deref(cself) == deref(cother)
        elif cop == Py_NE:
            return deref(cself) != deref(cother)
        elif cop == Py_LT:
            return deref(cself) < deref(cother)
        elif cop == Py_LE:
            return deref(cself) <= deref(cother)
        elif cop == Py_GT:
            return deref(cself) > deref(cother)
        elif cop == Py_GE:
            return deref(cself) >= deref(cother)
        else:
            return NotImplemented

    @staticmethod
    def __get_reflection__():
      defaults = Fiery.create(constant_shared_ptr[cFiery](default_inst[cFiery]()))
      return __StructSpec(
        name="Fiery",
        kind=__StructType.EXCEPTION,
        fields=[
          __FieldSpec(
  name="message",
  type=str,
  qualifier=__Qualifier.REQUIRED,
  default=None,
  annotations=_py_types.MappingProxyType({
  }),
),
          ],
        annotations=_py_types.MappingProxyType({
          """message""": """message""",    }),
      )


@__cython.auto_pickle(False)
cdef class Serious(thrift.py3.exceptions.Error):

    def __init__(
        Serious self,
        str sonnet=None
    ):
        self._cpp_obj = move(Serious._make_instance(
          NULL,
          NULL,
          sonnet,
        ))
        _builtins.Exception.__init__(self, self.sonnet)


    @staticmethod
    cdef unique_ptr[cSerious] _make_instance(
        cSerious* base_instance,
        bint* __isNOTSET,
        str sonnet 
    ) except *:
        cdef unique_ptr[cSerious] c_inst
        if base_instance:
            c_inst = make_unique[cSerious](deref(base_instance))
        else:
            c_inst = make_unique[cSerious]()

        if sonnet is not None:
            deref(c_inst).sonnet_ref().assign(thrift.py3.types.move(thrift.py3.types.bytes_to_string(sonnet.encode('utf-8'))))
            deref(c_inst).__isset.sonnet = True
        # in C++ you don't have to call move(), but this doesn't translate
        # into a C++ return statement, so you do here
        return move_unique(c_inst)

    def __iter__(self):
        yield 'sonnet', self.sonnet

    def __bool__(self):
        return deref(self._cpp_obj).__isset.sonnet

    @staticmethod
    cdef create(shared_ptr[cSerious] cpp_obj):
        inst = <Serious>Serious.__new__(Serious, (<bytes>deref(cpp_obj).what()).decode('utf-8'))
        inst._cpp_obj = move_shared(cpp_obj)
        _builtins.Exception.__init__(inst, inst.sonnet)
        return inst

    @property
    def sonnet(self):
        if not deref(self._cpp_obj).__isset.sonnet:
            return None

        return (<bytes>deref(self._cpp_obj).sonnet_ref().value_unchecked()).decode('UTF-8')


    def __hash__(Serious self):
        return super().__hash__()

    def __str__(Serious self):
        field = self.sonnet
        if field is None:
            return str(field)
        return field

    def __repr__(Serious self):
        return f'Serious(sonnet={repr(self.sonnet)})'
    def __copy__(Serious self):
        cdef shared_ptr[cSerious] cpp_obj = make_shared[cSerious](
            deref(self._cpp_obj)
        )
        return Serious.create(move_shared(cpp_obj))

    def __richcmp__(self, other, op):
        cdef int cop = op
        if not (
                isinstance(self, Serious) and
                isinstance(other, Serious)):
            if cop == Py_EQ:  # different types are never equal
                return False
            elif cop == Py_NE:  # different types are always notequal
                return True
            else:
                return NotImplemented

        cdef cSerious* cself = (<Serious>self)._cpp_obj.get()
        cdef cSerious* cother = (<Serious>other)._cpp_obj.get()
        if cop == Py_EQ:
            return deref(cself) == deref(cother)
        elif cop == Py_NE:
            return deref(cself) != deref(cother)
        elif cop == Py_LT:
            return deref(cself) < deref(cother)
        elif cop == Py_LE:
            return deref(cself) <= deref(cother)
        elif cop == Py_GT:
            return deref(cself) > deref(cother)
        elif cop == Py_GE:
            return deref(cself) >= deref(cother)
        else:
            return NotImplemented

    @staticmethod
    def __get_reflection__():
      defaults = Serious.create(constant_shared_ptr[cSerious](default_inst[cSerious]()))
      return __StructSpec(
        name="Serious",
        kind=__StructType.EXCEPTION,
        fields=[
          __FieldSpec(
  name="sonnet",
  type=str,
  qualifier=__Qualifier.OPTIONAL,
  default=None,
  annotations=_py_types.MappingProxyType({
  }),
),
          ],
        annotations=_py_types.MappingProxyType({
          """message""": """sonnet""",    }),
      )


