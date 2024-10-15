--java

_sub_jvm = function(f1,f2)return f1-f2 end
_add_jvm = function(f1,f2)return f1+f2 end
_div_jvm = function(f1,f2)return f1/f2 end
_mul_jvm = function(f1,f2)return f1*f2 end
_mov_jvm = nil
_jmp_jvm = nil

_class_costructor = function()
  --pass
end

defaultmT = {
  ["@construtor"] = _class_constructor_jvm
}

jvm = {


  
  opcode = {
   SUB = _sub_jvm,
   ADD = _add_jvm,
   DIV = _div_jvm,
   MUL = _mul_jvm,
   MOV = _mov_jvm,
   JMP = _jmp_jvm

   --float operators
  },
  --later I will integrate abstract modules into the opcodes

  abs_mod = {
    class = _class_h,
    public = _vpublic_h,
    _start = _start_h
  },

  type = {
    string = _string_jvm_h,--it's just something more viable initially
    int = _int_jvm,
    byte = _byte_jvm,
    char = _char_jvm, --utf-8 (1|4)bytes
    float = _float_jvm,
    double = _double_jvm
  },


  --exec environment

  call_stack = {},
  mem = {},--size = mems/100*ix
  mem_abs = {}, --sizew = mems-size

  --registers

  _rega_jvm = 0,
  _regb_jvm = 1,
  _regc_jvm = 2,
  _regd_jvm = 3,
}



abs_mod = setmetatable({}, {})

function _jvm_class(class_name, metaF,ENV)

  jvm.mem_abs["@_file_class"] = {}

  jvm.mem_abs[class_name] = {metaF or defauldmT,ENV}
  
end
