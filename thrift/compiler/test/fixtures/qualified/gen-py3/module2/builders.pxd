#
# Autogenerated by Thrift
#
# DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
#  @generated
#
from cpython cimport bool as pbool, int as pint, float as pfloat

cimport folly.iobuf as __iobuf

cimport thrift.py3.builder

cimport module0.types as _module0_types
cimport module0.builders as _module0_builders
cimport module1.types as _module1_types
cimport module1.builders as _module1_builders

cimport module2.types as _module2_types

cdef class Struct_Builder(thrift.py3.builder.StructBuilder):
    cdef public first
    cdef public second


cdef class BigStruct_Builder(thrift.py3.builder.StructBuilder):
    cdef public s
    cdef public pint id


