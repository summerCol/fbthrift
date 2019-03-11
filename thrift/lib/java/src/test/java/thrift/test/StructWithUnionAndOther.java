/**
 * Autogenerated by Thrift
 * <p>
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *
 * @generated
 */
package thrift.test;

import com.facebook.thrift.TBase;
import com.facebook.thrift.TBaseHelper;
import com.facebook.thrift.TException;
import com.facebook.thrift.TFieldRequirementType;
import com.facebook.thrift.meta_data.FieldMetaData;
import com.facebook.thrift.meta_data.FieldValueMetaData;
import com.facebook.thrift.meta_data.StructMetaData;
import com.facebook.thrift.protocol.TField;
import com.facebook.thrift.protocol.TProtocol;
import com.facebook.thrift.protocol.TProtocolUtil;
import com.facebook.thrift.protocol.TStruct;
import com.facebook.thrift.protocol.TType;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

@SuppressWarnings({"unused", "serial"})
public class StructWithUnionAndOther
    implements TBase, java.io.Serializable, Cloneable, Comparable<StructWithUnionAndOther> {
  private static final TStruct STRUCT_DESC = new TStruct("StructWithUnionAndOther");
  private static final TField TEST_UNION_FIELD_DESC = new TField("test_union", TType.STRUCT,
      (short) 1);
  private static final TField STRING_FIELD_FIELD_DESC = new TField("string_field", TType.STRING,
      (short) 2);

  public TestUnion test_union;
  public String string_field;
  public static final int TEST_UNION = 1;
  public static final int STRING_FIELD = 2;
  public static boolean DEFAULT_PRETTY_PRINT = true;

  // isset id assignments

  public static final Map<Integer, FieldMetaData> metaDataMap;

  static {
    Map<Integer, FieldMetaData> tmpMetaDataMap = new HashMap<Integer, FieldMetaData>();
    tmpMetaDataMap.put(TEST_UNION, new FieldMetaData("test_union", TFieldRequirementType.DEFAULT,
        new StructMetaData(TType.STRUCT, TestUnion.class)));
    tmpMetaDataMap.put(STRING_FIELD,
        new FieldMetaData("string_field", TFieldRequirementType.DEFAULT,
            new FieldValueMetaData(TType.STRING)));
    metaDataMap = Collections.unmodifiableMap(tmpMetaDataMap);
  }

  static {
    FieldMetaData.addStructMetaDataMap(StructWithUnionAndOther.class, metaDataMap);
  }

  public StructWithUnionAndOther() {
  }

  public StructWithUnionAndOther(
      TestUnion test_union,
      String string_field) {
    this();
    this.test_union = test_union;
    this.string_field = string_field;
  }

  /**
   * Performs a deep copy on <i>other</i>.
   */
  public StructWithUnionAndOther(StructWithUnionAndOther other) {
    if (other.isSetTest_union()) {
      this.test_union = TBaseHelper.deepCopy(other.test_union);
    }
    if (other.isSetString_field()) {
      this.string_field = TBaseHelper.deepCopy(other.string_field);
    }
  }

  public StructWithUnionAndOther deepCopy() {
    return new StructWithUnionAndOther(this);
  }

  @Deprecated
  public StructWithUnionAndOther clone() {
    return new StructWithUnionAndOther(this);
  }

  public TestUnion getTest_union() {
    return this.test_union;
  }

  public StructWithUnionAndOther setTest_union(TestUnion test_union) {
    this.test_union = test_union;
    return this;
  }

  public void unsetTest_union() {
    this.test_union = null;
  }

  // Returns true if field test_union is set (has been assigned a value) and false otherwise
  public boolean isSetTest_union() {
    return this.test_union != null;
  }

  public void setTest_unionIsSet(boolean value) {
    if (!value) {
      this.test_union = null;
    }
  }

  public String getString_field() {
    return this.string_field;
  }

  public StructWithUnionAndOther setString_field(String string_field) {
    this.string_field = string_field;
    return this;
  }

  public void unsetString_field() {
    this.string_field = null;
  }

  // Returns true if field string_field is set (has been assigned a value) and false otherwise
  public boolean isSetString_field() {
    return this.string_field != null;
  }

  public void setString_fieldIsSet(boolean value) {
    if (!value) {
      this.string_field = null;
    }
  }

  public void setFieldValue(int fieldID, Object value) {
    switch (fieldID) {
      case TEST_UNION:
        if (value == null) {
          unsetTest_union();
        } else {
          setTest_union((TestUnion) value);
        }
        break;

      case STRING_FIELD:
        if (value == null) {
          unsetString_field();
        } else {
          setString_field((String) value);
        }
        break;

      default:
        throw new IllegalArgumentException("Field " + fieldID + " doesn't exist!");
    }
  }

  public Object getFieldValue(int fieldID) {
    switch (fieldID) {
      case TEST_UNION:
        return getTest_union();

      case STRING_FIELD:
        return getString_field();

      default:
        throw new IllegalArgumentException("Field " + fieldID + " doesn't exist!");
    }
  }

  // Returns true if field corresponding to fieldID is set (has been assigned a value) and false otherwise
  public boolean isSet(int fieldID) {
    switch (fieldID) {
      case TEST_UNION:
        return isSetTest_union();
      case STRING_FIELD:
        return isSetString_field();
      default:
        throw new IllegalArgumentException("Field " + fieldID + " doesn't exist!");
    }
  }

  @Override
  public boolean equals(Object that) {
    if (that == null) {
      return false;
    }
    if (that instanceof StructWithUnionAndOther) {
      return this.equals((StructWithUnionAndOther) that);
    }
    return false;
  }

  public boolean equals(StructWithUnionAndOther that) {
    if (that == null) {
      return false;
    }
    if (this == that) {
      return true;
    }

    boolean this_present_test_union = true && this.isSetTest_union();
    boolean that_present_test_union = true && that.isSetTest_union();
    if (this_present_test_union || that_present_test_union) {
      if (!(this_present_test_union && that_present_test_union)) {
        return false;
      }
      if (!TBaseHelper.equalsNobinary(this.test_union, that.test_union)) {
        return false;
      }
    }

    boolean this_present_string_field = true && this.isSetString_field();
    boolean that_present_string_field = true && that.isSetString_field();
    if (this_present_string_field || that_present_string_field) {
      if (!(this_present_string_field && that_present_string_field)) {
        return false;
      }
      if (!TBaseHelper.equalsNobinary(this.string_field, that.string_field)) {
        return false;
      }
    }

    return true;
  }

  @Override
  public int hashCode() {
    return 0;
  }

  @Override
  public int compareTo(StructWithUnionAndOther other) {
    if (other == null) {
      // See java.lang.Comparable docs
      throw new NullPointerException();
    }

    if (other == this) {
      return 0;
    }
    int lastComparison = 0;

    lastComparison = Boolean.valueOf(isSetTest_union()).compareTo(other.isSetTest_union());
    if (lastComparison != 0) {
      return lastComparison;
    }
    lastComparison = TBaseHelper.compareTo(test_union, other.test_union);
    if (lastComparison != 0) {
      return lastComparison;
    }
    lastComparison = Boolean.valueOf(isSetString_field()).compareTo(other.isSetString_field());
    if (lastComparison != 0) {
      return lastComparison;
    }
    lastComparison = TBaseHelper.compareTo(string_field, other.string_field);
    if (lastComparison != 0) {
      return lastComparison;
    }
    return 0;
  }

  public void read(TProtocol iprot) throws TException {
    TField field;
    iprot.readStructBegin(metaDataMap);
    while (true) {
      field = iprot.readFieldBegin();
      if (field.type == TType.STOP) {
        break;
      }
      switch (field.id) {
        case TEST_UNION:
          if (field.type == TType.STRUCT) {
            this.test_union = new TestUnion();
            this.test_union.read(iprot);
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case STRING_FIELD:
          if (field.type == TType.STRING) {
            this.string_field = iprot.readString();
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        default:
          TProtocolUtil.skip(iprot, field.type);
          break;
      }
      iprot.readFieldEnd();
    }
    iprot.readStructEnd();


    // check for required fields of primitive type, which can't be checked in the validate method
    validate();
  }

  public void write(TProtocol oprot) throws TException {
    validate();

    oprot.writeStructBegin(STRUCT_DESC);
    if (this.test_union != null) {
      oprot.writeFieldBegin(TEST_UNION_FIELD_DESC);
      this.test_union.write(oprot);
      oprot.writeFieldEnd();
    }
    if (this.string_field != null) {
      oprot.writeFieldBegin(STRING_FIELD_FIELD_DESC);
      oprot.writeString(this.string_field);
      oprot.writeFieldEnd();
    }
    oprot.writeFieldStop();
    oprot.writeStructEnd();
  }

  @Override
  public String toString() {
    return toString(DEFAULT_PRETTY_PRINT);
  }

  @Override
  public String toString(boolean prettyPrint) {
    return toString(1, prettyPrint);
  }

  @Override
  public String toString(int indent, boolean prettyPrint) {
    String indentStr = prettyPrint ? TBaseHelper.getIndentedString(indent) : "";
    String newLine = prettyPrint ? "\n" : "";
    String space = prettyPrint ? " " : "";
    StringBuilder sb = new StringBuilder("StructWithUnionAndOther");
    sb.append(space);
    sb.append("(");
    sb.append(newLine);
    boolean first = true;

    sb.append(indentStr);
    sb.append("test_union");
    sb.append(space);
    sb.append(":").append(space);
    if (this.getTest_union() == null) {
      sb.append("null");
    } else {
      sb.append(TBaseHelper.toString(this.getTest_union(), indent + 1, prettyPrint));
    }
    first = false;
    if (!first) {
      sb.append("," + newLine);
    }
    sb.append(indentStr);
    sb.append("string_field");
    sb.append(space);
    sb.append(":").append(space);
    if (this.getString_field() == null) {
      sb.append("null");
    } else {
      sb.append(TBaseHelper.toString(this.getString_field(), indent + 1, prettyPrint));
    }
    first = false;
    sb.append(newLine + TBaseHelper.reduceIndent(indentStr));
    sb.append(")");
    return sb.toString();
  }

  public void validate() throws TException {
    // check for required fields
    // check that fields of type enum have valid values
  }

}
