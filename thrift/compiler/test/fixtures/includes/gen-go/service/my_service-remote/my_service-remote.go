// Autogenerated by Thrift Compiler (facebook)
// DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
// @generated

package main

import (
        "flag"
        "fmt"
        "math"
        "net"
        "net/url"
        "os"
        "strconv"
        "strings"
        thrift "github.com/facebook/fbthrift/thrift/lib/go/thrift"
        "../../service"
)

func Usage() {
  fmt.Fprintln(os.Stderr, "Usage of ", os.Args[0], " [-h host:port] [-u url] [-f[ramed]] function [arg1 [arg2...]]:")
  flag.PrintDefaults()
  fmt.Fprintln(os.Stderr, "\nFunctions:")
  fmt.Fprintln(os.Stderr, "  void query(MyStruct s, Included i)")
  fmt.Fprintln(os.Stderr, "  void has_arg_docs(MyStruct s, Included i)")
  fmt.Fprintln(os.Stderr)
  os.Exit(0)
}

func main() {
  flag.Usage = Usage
  var host string
  var port int
  var protocol string
  var urlString string
  var framed bool
  var useHttp bool
  var parsedUrl url.URL
  var trans thrift.Transport
  _ = strconv.Atoi
  _ = math.Abs
  flag.Usage = Usage
  flag.StringVar(&host, "h", "localhost", "Specify host")
  flag.IntVar(&port, "p", 9090, "Specify port")
  flag.StringVar(&protocol, "P", "binary", "Specify the protocol (binary, compact, simplejson, json)")
  flag.StringVar(&urlString, "u", "", "Specify the url")
  flag.BoolVar(&framed, "framed", false, "Use framed transport")
  flag.BoolVar(&useHttp, "http", false, "Use http")
  flag.Parse()
  
  if len(urlString) > 0 {
    parsedUrl, err := url.Parse(urlString)
    if err != nil {
      fmt.Fprintln(os.Stderr, "Error parsing URL: ", err)
      flag.Usage()
    }
    host = parsedUrl.Host
    useHttp = len(parsedUrl.Scheme) <= 0 || parsedUrl.Scheme == "http"
  } else if useHttp {
    _, err := url.Parse(fmt.Sprint("http://", host, ":", port))
    if err != nil {
      fmt.Fprintln(os.Stderr, "Error parsing URL: ", err)
      flag.Usage()
    }
  }
  
  cmd := flag.Arg(0)
  var err error
  if useHttp {
    trans, err = thrift.NewHTTPPostClient(parsedUrl.String())
  } else {
    portStr := fmt.Sprint(port)
    if strings.Contains(host, ":") {
           host, portStr, err = net.SplitHostPort(host)
           if err != nil {
                   fmt.Fprintln(os.Stderr, "error with host:", err)
                   os.Exit(1)
           }
    }
    trans, err = thrift.NewSocket(thrift.SocketAddr(net.JoinHostPort(host, portStr)))
    if err != nil {
      fmt.Fprintln(os.Stderr, "error resolving address:", err)
      os.Exit(1)
    }
    if framed {
      trans = thrift.NewFramedTransport(trans)
    }
  }
  if err != nil {
    fmt.Fprintln(os.Stderr, "Error creating transport", err)
    os.Exit(1)
  }
  defer trans.Close()
  var protocolFactory thrift.ProtocolFactory
  switch protocol {
  case "compact":
    protocolFactory = thrift.NewCompactProtocolFactory()
    break
  case "simplejson":
    protocolFactory = thrift.NewSimpleJSONProtocolFactory()
    break
  case "json":
    protocolFactory = thrift.NewJSONProtocolFactory()
    break
  case "binary", "":
    protocolFactory = thrift.NewBinaryProtocolFactoryDefault()
    break
  default:
    fmt.Fprintln(os.Stderr, "Invalid protocol specified: ", protocol)
    Usage()
    os.Exit(1)
  }
  client := service.NewMyServiceClientFactory(trans, protocolFactory)
  if err := trans.Open(); err != nil {
    fmt.Fprintln(os.Stderr, "Error opening socket to ", host, ":", port, " ", err)
    os.Exit(1)
  }
  
  switch cmd {
  case "query":
    if flag.NArg() - 1 != 2 {
      fmt.Fprintln(os.Stderr, "Query requires 2 args")
      flag.Usage()
    }
    arg4 := flag.Arg(1)
    mbTrans5 := thrift.NewMemoryBufferLen(len(arg4))
    defer mbTrans5.Close()
    _, err6 := mbTrans5.WriteString(arg4)
    if err6 != nil {
      Usage()
      return
    }
    factory7 := thrift.NewSimpleJSONProtocolFactory()
    jsProt8 := factory7.GetProtocol(mbTrans5)
    argvalue0 := service.NewMyStruct()
    err9 := argvalue0.Read(jsProt8)
    if err9 != nil {
      Usage()
      return
    }
    value0 := argvalue0
    arg10 := flag.Arg(2)
    mbTrans11 := thrift.NewMemoryBufferLen(len(arg10))
    defer mbTrans11.Close()
    _, err12 := mbTrans11.WriteString(arg10)
    if err12 != nil {
      Usage()
      return
    }
    factory13 := thrift.NewSimpleJSONProtocolFactory()
    jsProt14 := factory13.GetProtocol(mbTrans11)
    argvalue1 := service.NewIncluded()
    err15 := argvalue1.Read(jsProt14)
    if err15 != nil {
      Usage()
      return
    }
    value1 := argvalue1
    fmt.Print(client.Query(value0, value1))
    fmt.Print("\n")
    break
  case "has_arg_docs":
    if flag.NArg() - 1 != 2 {
      fmt.Fprintln(os.Stderr, "HasArgDocs requires 2 args")
      flag.Usage()
    }
    arg16 := flag.Arg(1)
    mbTrans17 := thrift.NewMemoryBufferLen(len(arg16))
    defer mbTrans17.Close()
    _, err18 := mbTrans17.WriteString(arg16)
    if err18 != nil {
      Usage()
      return
    }
    factory19 := thrift.NewSimpleJSONProtocolFactory()
    jsProt20 := factory19.GetProtocol(mbTrans17)
    argvalue0 := service.NewMyStruct()
    err21 := argvalue0.Read(jsProt20)
    if err21 != nil {
      Usage()
      return
    }
    value0 := argvalue0
    arg22 := flag.Arg(2)
    mbTrans23 := thrift.NewMemoryBufferLen(len(arg22))
    defer mbTrans23.Close()
    _, err24 := mbTrans23.WriteString(arg22)
    if err24 != nil {
      Usage()
      return
    }
    factory25 := thrift.NewSimpleJSONProtocolFactory()
    jsProt26 := factory25.GetProtocol(mbTrans23)
    argvalue1 := service.NewIncluded()
    err27 := argvalue1.Read(jsProt26)
    if err27 != nil {
      Usage()
      return
    }
    value1 := argvalue1
    fmt.Print(client.HasArgDocs(value0, value1))
    fmt.Print("\n")
    break
  case "":
    Usage()
    break
  default:
    fmt.Fprintln(os.Stderr, "Invalid function ", cmd)
  }
}
