#
# Autogenerated by Thrift
#
# DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
#  @generated
#

import typing as _typing

import folly.iobuf as __iobuf
import thrift.py3.builder


import module.types as _module_types


class Foo_Builder(thrift.py3.builder.StructBuilder):
    myInteger: _typing.Optional[int]
    myString: _typing.Optional[str]
    myBools: _typing.Optional[list]
    myNumbers: _typing.Optional[list]

    def __iter__(self) -> _typing.Iterator[_typing.Tuple[str, _typing.Any]]: ...


