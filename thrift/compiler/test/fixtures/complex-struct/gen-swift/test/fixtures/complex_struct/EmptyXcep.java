/**
 * Autogenerated by Thrift
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */

package test.fixtures.complex_struct;

import com.facebook.swift.codec.*;
import com.facebook.swift.codec.ThriftField.Requiredness;
import com.facebook.swift.codec.ThriftField.Recursiveness;
import java.util.*;

@SwiftGenerated
@ThriftStruct("emptyXcep")
public final class EmptyXcep extends java.lang.Exception {
    private static final long serialVersionUID = 1L;

    @ThriftConstructor
    public EmptyXcep(
    ) {
    }
    
    
    
    public static class Builder {
    
        public Builder() { }
        public Builder(EmptyXcep other) {
        }
    
        @ThriftConstructor
        public EmptyXcep build() {
            return new EmptyXcep (
            );
        }
    }
    

}