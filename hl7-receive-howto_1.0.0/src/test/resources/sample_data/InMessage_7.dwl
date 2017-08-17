%dw 1.0
%output application/java
---
{
  Delimiters: "|^~\\&" as :string {class: "java.lang.String"},
  Errors: [] as :array {class: "java.util.ArrayList"},
  MSH: {
    MSH-10: "0123456789" as :string {class: "java.lang.String"},
    MSH-07-01: "2008-01-15T15:30:00-08:00" as :datetime {class: "org.apache.xerces.jaxp.datatype.XMLGregorianCalendarImpl"},
    MSH-11-01: "P" as :string {class: "java.lang.String"},
    MSH-16: "AL" as :string {class: "java.lang.String"},
    MSH-12-01: "2.3.1" as :string {class: "java.lang.String"},
    MSH-09-01: "ADT" as :string {class: "java.lang.String"},
    MSH-09-02: "A01" as :string {class: "java.lang.String"},
    MSH-09-03: "ADT_A01" as :string {class: "java.lang.String"},
    MSH-03-01: "GHH_ADT" as :string {class: "java.lang.String"}
  } as :object {class: "java.util.HashMap"},
  ACK: {
    "01_MSH": {
      MSH-05-01: "GHH_ADT" as :string {class: "java.lang.String"},
      MSH-10: "0123456789" as :string {class: "java.lang.String"},
      MSH-07-01: "2008-01-15T15:30:00-08:00" as :datetime {class: "org.apache.xerces.jaxp.datatype.XMLGregorianCalendarImpl"},
      MSH-11-01: "P" as :string {class: "java.lang.String"},
      MSH-16: "AL" as :string {class: "java.lang.String"},
      MSH-12-01: "2.3.1" as :string {class: "java.lang.String"},
      MSH-09-01: "ACK" as :string {class: "java.lang.String"},
      MSH-09-02: "A01" as :string {class: "java.lang.String"},
      MSH-09-03: "ACK" as :string {class: "java.lang.String"},
      MSH-03-01: "GHH_ADT" as :string {class: "java.lang.String"}
    } as :object {class: "java.util.HashMap"},
    "04_ERR": [] as :array {class: "scala.collection.convert.Wrappers.SeqWrapper"},
    "03_MSA": {
      MSA-02: "0123456789" as :string {class: "java.lang.String"},
      MSA-01: "AA" as :string {class: "java.lang.String"}
    } as :object {class: "java.util.HashMap"}
  } as :object {class: "java.util.HashMap"},
  Data: {
    "ADT_A01": {
      "01_MSH": {
        MSH-10: "0123456789" as :string {class: "java.lang.String"},
        MSH-07-01: "2008-01-15T15:30:00-08:00" as :datetime {class: "org.apache.xerces.jaxp.datatype.XMLGregorianCalendarImpl"},
        MSH-11-01: "P" as :string {class: "java.lang.String"},
        MSH-16: "AL" as :string {class: "java.lang.String"},
        MSH-12-01: "2.3.1" as :string {class: "java.lang.String"},
        MSH-09-01: "ADT" as :string {class: "java.lang.String"},
        MSH-09-02: "A01" as :string {class: "java.lang.String"},
        MSH-09-03: "ADT_A01" as :string {class: "java.lang.String"},
        MSH-03-01: "GHH_ADT" as :string {class: "java.lang.String"}
      } as :object {class: "java.util.HashMap"},
      "02_EVN": {
        EVN-04: "AAA" as :string {class: "java.lang.String"},
        EVN-05: [
          {
            EVN-05-01: "AAA" as :string {class: "java.lang.String"}
          } as :object {class: "java.util.HashMap"}
        ] as :array {class: "java.util.ArrayList"},
        EVN-06-01: "20080114003000" as :string {class: "java.lang.String"},
        EVN-02-01: "20080115153000" as :string {class: "java.lang.String"}
      } as :object {class: "java.util.HashMap"},
      "09_NK1": [
        {
          NK1-02: [
            {
              NK1-02-01-01: "NUCLEAR" as :string {class: "java.lang.String"},
              NK1-02-03: "W" as :string {class: "java.lang.String"},
              NK1-02-02: "NELDA" as :string {class: "java.lang.String"}
            } as :object {class: "java.util.HashMap"}
          ] as :array {class: "java.util.ArrayList"},
          NK1-01: 1 as :number {class: "java.lang.Integer"},
          NK1-03-01: "SPO" as :string {class: "java.lang.String"},
          NK1-04: [
            {
              NK1-04-03: "ANN ARBOR" as :string {class: "java.lang.String"},
              NK1-04-01: "2222 HOME STREET" as :string {class: "java.lang.String"},
              NK1-04-06: "USA" as :string {class: "java.lang.String"},
              NK1-04-04: "MI" as :string {class: "java.lang.String"}
            } as :object {class: "java.util.HashMap"}
          ] as :array {class: "java.util.ArrayList"}
        } as :object {class: "java.util.HashMap"}
      ] as :array {class: "java.util.ArrayList"},
      "12_PV1": {
        PV1-03-04-01: "1" as :string {class: "java.lang.String"},
        PV1-41: "G" as :string {class: "java.lang.String"},
        PV1-03-07: "S" as :string {class: "java.lang.String"},
        PV1-04: "3" as :string {class: "java.lang.String"},
        PV1-02: "103" as :string {class: "java.lang.String"},
        PV1-14: "1" as :string {class: "java.lang.String"},
        PV1-03-03: "1" as :string {class: "java.lang.String"},
        PV1-19-01: "40007716" as :string {class: "java.lang.String"},
        PV1-44-01: "20050110045253" as :string {class: "java.lang.String"},
        PV1-01: 1 as :number {class: "java.lang.Integer"},
        PV1-03-02: "101" as :string {class: "java.lang.String"},
        PV1-03-01: "PREOP" as :string {class: "java.lang.String"},
        PV1-19-04-01: "AccMgr" as :string {class: "java.lang.String"},
        PV1-20: [
          {
            PV1-20-01: "4" as :string {class: "java.lang.String"}
          } as :object {class: "java.util.HashMap"}
        ] as :array {class: "java.util.ArrayList"},
        PV1-10: "01" as :string {class: "java.lang.String"},
        PV1-19-05: "VN" as :string {class: "java.lang.String"},
        PV1-17: [
          {
            PV1-17-02-01: "DISNEY" as :string {class: "java.lang.String"},
            PV1-17-03: "WALT" as :string {class: "java.lang.String"},
            PV1-17-09-01: "AccMgr" as :string {class: "java.lang.String"},
            PV1-17-13: "CI" as :string {class: "java.lang.String"},
            PV1-17-01: "37" as :string {class: "java.lang.String"}
          } as :object {class: "java.util.HashMap"}
        ] as :array {class: "java.util.ArrayList"},
        PV1-39: "1" as :string {class: "java.lang.String"},
        PV1-07: [
          {
            PV1-07-01: "37" as :string {class: "java.lang.String"},
            PV1-07-03: "WALT" as :string {class: "java.lang.String"},
            PV1-07-09-01: "AccMgr" as :string {class: "java.lang.String"},
            PV1-07-13: "CI" as :string {class: "java.lang.String"},
            PV1-07-02-01: "DISNEY" as :string {class: "java.lang.String"}
          } as :object {class: "java.util.HashMap"}
        ] as :array {class: "java.util.ArrayList"},
        PV1-18: "2" as :string {class: "java.lang.String"}
      } as :object {class: "java.util.HashMap"},
      "03_PID": {
        PID-05: [
          {
            PID-05-01-01: "SCOTT" as :string {class: "java.lang.String"},
            PID-05-03: "A" as :string {class: "java.lang.String"},
            PID-05-02: "ADAM" as :string {class: "java.lang.String"}
          } as :object {class: "java.util.HashMap"}
        ] as :array {class: "java.util.ArrayList"},
        PID-16-01: "M" as :string {class: "java.lang.String"},
        PID-03: [
          {
            PID-03-04-01: "GHH" as :string {class: "java.lang.String"},
            PID-03-05: "MR" as :string {class: "java.lang.String"},
            PID-03-01: "12345" as :string {class: "java.lang.String"}
          } as :object {class: "java.util.HashMap"}
        ] as :array {class: "java.util.ArrayList"},
        PID-13: [
          {
            PID-13-01: "(612)555-5555" as :string {class: "java.lang.String"}
          } as :object {class: "java.util.HashMap"},
          {
            PID-13-01: "(612)555-5555" as :string {class: "java.lang.String"}
          } as :object {class: "java.util.HashMap"}
        ] as :array {class: "java.util.ArrayList"},
        PID-01: 1 as :number {class: "java.lang.Integer"},
        PID-11: [
          {
            PID-11-06: "USA" as :string {class: "java.lang.String"},
            PID-11-04: "MI" as :string {class: "java.lang.String"},
            PID-11-03: "ANN ARBOR" as :string {class: "java.lang.String"},
            PID-11-01: "2222 HOME STREET" as :string {class: "java.lang.String"}
          } as :object {class: "java.util.HashMap"}
        ] as :array {class: "java.util.ArrayList"},
        PID-08: "M" as :string {class: "java.lang.String"},
        PID-19: "234-323-2334" as :string {class: "java.lang.String"}
      } as :object {class: "java.util.HashMap"}
    } as :object {class: "java.util.HashMap"}
  } as :object {class: "java.util.HashMap"},
  Id: "ADT_A01" as :string {class: "java.lang.String"},
  Name: "ADT_A01" as :string {class: "java.lang.String"}
} as :object {class: "java.util.HashMap"}