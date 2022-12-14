??3
??
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( ?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
?
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

?
Conv2DBackpropInput
input_sizes
filter"T
out_backprop"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

?
FusedBatchNormV3
x"T

scale"U
offset"U	
mean"U
variance"U
y"T

batch_mean"U
batch_variance"U
reserve_space_1"U
reserve_space_2"U
reserve_space_3"U"
Ttype:
2"
Utype:
2"
epsilonfloat%??8"&
exponential_avg_factorfloat%  ??";
data_formatstringNHWC:
NHWCNCHWNDHWCNCDHW"
is_trainingbool(
.
Identity

input"T
output"T"	
Ttype
?
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype?
E
Relu
features"T
activations"T"
Ttype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
?
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ??
@
StaticRegexFullMatch	
input

output
"
patternstring
?
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.8.22v2.8.2-0-g2ea19cbb5758??-
?
conv2d_40/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *!
shared_nameconv2d_40/kernel
}
$conv2d_40/kernel/Read/ReadVariableOpReadVariableOpconv2d_40/kernel*&
_output_shapes
: *
dtype0
t
conv2d_40/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_40/bias
m
"conv2d_40/bias/Read/ReadVariableOpReadVariableOpconv2d_40/bias*
_output_shapes
: *
dtype0
?
conv2d_41/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *!
shared_nameconv2d_41/kernel
}
$conv2d_41/kernel/Read/ReadVariableOpReadVariableOpconv2d_41/kernel*&
_output_shapes
:  *
dtype0
t
conv2d_41/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_41/bias
m
"conv2d_41/bias/Read/ReadVariableOpReadVariableOpconv2d_41/bias*
_output_shapes
: *
dtype0
?
batch_normalization_10/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *-
shared_namebatch_normalization_10/gamma
?
0batch_normalization_10/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_10/gamma*
_output_shapes
: *
dtype0
?
batch_normalization_10/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *,
shared_namebatch_normalization_10/beta
?
/batch_normalization_10/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_10/beta*
_output_shapes
: *
dtype0
?
"batch_normalization_10/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape: *3
shared_name$"batch_normalization_10/moving_mean
?
6batch_normalization_10/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_10/moving_mean*
_output_shapes
: *
dtype0
?
&batch_normalization_10/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape: *7
shared_name(&batch_normalization_10/moving_variance
?
:batch_normalization_10/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_10/moving_variance*
_output_shapes
: *
dtype0
?
conv2d_42/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*!
shared_nameconv2d_42/kernel
}
$conv2d_42/kernel/Read/ReadVariableOpReadVariableOpconv2d_42/kernel*&
_output_shapes
: @*
dtype0
t
conv2d_42/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_42/bias
m
"conv2d_42/bias/Read/ReadVariableOpReadVariableOpconv2d_42/bias*
_output_shapes
:@*
dtype0
?
conv2d_43/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*!
shared_nameconv2d_43/kernel
}
$conv2d_43/kernel/Read/ReadVariableOpReadVariableOpconv2d_43/kernel*&
_output_shapes
:@@*
dtype0
t
conv2d_43/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_43/bias
m
"conv2d_43/bias/Read/ReadVariableOpReadVariableOpconv2d_43/bias*
_output_shapes
:@*
dtype0
?
batch_normalization_11/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*-
shared_namebatch_normalization_11/gamma
?
0batch_normalization_11/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_11/gamma*
_output_shapes
:@*
dtype0
?
batch_normalization_11/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*,
shared_namebatch_normalization_11/beta
?
/batch_normalization_11/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_11/beta*
_output_shapes
:@*
dtype0
?
"batch_normalization_11/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"batch_normalization_11/moving_mean
?
6batch_normalization_11/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_11/moving_mean*
_output_shapes
:@*
dtype0
?
&batch_normalization_11/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*7
shared_name(&batch_normalization_11/moving_variance
?
:batch_normalization_11/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_11/moving_variance*
_output_shapes
:@*
dtype0
?
conv2d_44/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@?*!
shared_nameconv2d_44/kernel
~
$conv2d_44/kernel/Read/ReadVariableOpReadVariableOpconv2d_44/kernel*'
_output_shapes
:@?*
dtype0
u
conv2d_44/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_nameconv2d_44/bias
n
"conv2d_44/bias/Read/ReadVariableOpReadVariableOpconv2d_44/bias*
_output_shapes	
:?*
dtype0
?
conv2d_45/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*!
shared_nameconv2d_45/kernel

$conv2d_45/kernel/Read/ReadVariableOpReadVariableOpconv2d_45/kernel*(
_output_shapes
:??*
dtype0
u
conv2d_45/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_nameconv2d_45/bias
n
"conv2d_45/bias/Read/ReadVariableOpReadVariableOpconv2d_45/bias*
_output_shapes	
:?*
dtype0
?
batch_normalization_12/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*-
shared_namebatch_normalization_12/gamma
?
0batch_normalization_12/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_12/gamma*
_output_shapes	
:?*
dtype0
?
batch_normalization_12/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namebatch_normalization_12/beta
?
/batch_normalization_12/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_12/beta*
_output_shapes	
:?*
dtype0
?
"batch_normalization_12/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"batch_normalization_12/moving_mean
?
6batch_normalization_12/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_12/moving_mean*
_output_shapes	
:?*
dtype0
?
&batch_normalization_12/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*7
shared_name(&batch_normalization_12/moving_variance
?
:batch_normalization_12/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_12/moving_variance*
_output_shapes	
:?*
dtype0
?
conv2d_46/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*!
shared_nameconv2d_46/kernel

$conv2d_46/kernel/Read/ReadVariableOpReadVariableOpconv2d_46/kernel*(
_output_shapes
:??*
dtype0
u
conv2d_46/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_nameconv2d_46/bias
n
"conv2d_46/bias/Read/ReadVariableOpReadVariableOpconv2d_46/bias*
_output_shapes	
:?*
dtype0
?
conv2d_47/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*!
shared_nameconv2d_47/kernel

$conv2d_47/kernel/Read/ReadVariableOpReadVariableOpconv2d_47/kernel*(
_output_shapes
:??*
dtype0
u
conv2d_47/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_nameconv2d_47/bias
n
"conv2d_47/bias/Read/ReadVariableOpReadVariableOpconv2d_47/bias*
_output_shapes	
:?*
dtype0
?
batch_normalization_13/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*-
shared_namebatch_normalization_13/gamma
?
0batch_normalization_13/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_13/gamma*
_output_shapes	
:?*
dtype0
?
batch_normalization_13/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namebatch_normalization_13/beta
?
/batch_normalization_13/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_13/beta*
_output_shapes	
:?*
dtype0
?
"batch_normalization_13/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"batch_normalization_13/moving_mean
?
6batch_normalization_13/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_13/moving_mean*
_output_shapes	
:?*
dtype0
?
&batch_normalization_13/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*7
shared_name(&batch_normalization_13/moving_variance
?
:batch_normalization_13/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_13/moving_variance*
_output_shapes	
:?*
dtype0
?
conv2d_48/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*!
shared_nameconv2d_48/kernel

$conv2d_48/kernel/Read/ReadVariableOpReadVariableOpconv2d_48/kernel*(
_output_shapes
:??*
dtype0
u
conv2d_48/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_nameconv2d_48/bias
n
"conv2d_48/bias/Read/ReadVariableOpReadVariableOpconv2d_48/bias*
_output_shapes	
:?*
dtype0
?
conv2d_49/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*!
shared_nameconv2d_49/kernel

$conv2d_49/kernel/Read/ReadVariableOpReadVariableOpconv2d_49/kernel*(
_output_shapes
:??*
dtype0
u
conv2d_49/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_nameconv2d_49/bias
n
"conv2d_49/bias/Read/ReadVariableOpReadVariableOpconv2d_49/bias*
_output_shapes	
:?*
dtype0
?
batch_normalization_14/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*-
shared_namebatch_normalization_14/gamma
?
0batch_normalization_14/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_14/gamma*
_output_shapes	
:?*
dtype0
?
batch_normalization_14/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namebatch_normalization_14/beta
?
/batch_normalization_14/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_14/beta*
_output_shapes	
:?*
dtype0
?
"batch_normalization_14/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"batch_normalization_14/moving_mean
?
6batch_normalization_14/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_14/moving_mean*
_output_shapes	
:?*
dtype0
?
&batch_normalization_14/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*7
shared_name(&batch_normalization_14/moving_variance
?
:batch_normalization_14/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_14/moving_variance*
_output_shapes	
:?*
dtype0
?
conv2d_transpose_8/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:??**
shared_nameconv2d_transpose_8/kernel
?
-conv2d_transpose_8/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose_8/kernel*(
_output_shapes
:??*
dtype0
?
conv2d_transpose_8/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*(
shared_nameconv2d_transpose_8/bias
?
+conv2d_transpose_8/bias/Read/ReadVariableOpReadVariableOpconv2d_transpose_8/bias*
_output_shapes	
:?*
dtype0
?
conv2d_50/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*!
shared_nameconv2d_50/kernel

$conv2d_50/kernel/Read/ReadVariableOpReadVariableOpconv2d_50/kernel*(
_output_shapes
:??*
dtype0
u
conv2d_50/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_nameconv2d_50/bias
n
"conv2d_50/bias/Read/ReadVariableOpReadVariableOpconv2d_50/bias*
_output_shapes	
:?*
dtype0
?
conv2d_51/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*!
shared_nameconv2d_51/kernel

$conv2d_51/kernel/Read/ReadVariableOpReadVariableOpconv2d_51/kernel*(
_output_shapes
:??*
dtype0
u
conv2d_51/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_nameconv2d_51/bias
n
"conv2d_51/bias/Read/ReadVariableOpReadVariableOpconv2d_51/bias*
_output_shapes	
:?*
dtype0
?
conv2d_transpose_9/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:??**
shared_nameconv2d_transpose_9/kernel
?
-conv2d_transpose_9/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose_9/kernel*(
_output_shapes
:??*
dtype0
?
conv2d_transpose_9/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*(
shared_nameconv2d_transpose_9/bias
?
+conv2d_transpose_9/bias/Read/ReadVariableOpReadVariableOpconv2d_transpose_9/bias*
_output_shapes	
:?*
dtype0
?
conv2d_52/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*!
shared_nameconv2d_52/kernel

$conv2d_52/kernel/Read/ReadVariableOpReadVariableOpconv2d_52/kernel*(
_output_shapes
:??*
dtype0
u
conv2d_52/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_nameconv2d_52/bias
n
"conv2d_52/bias/Read/ReadVariableOpReadVariableOpconv2d_52/bias*
_output_shapes	
:?*
dtype0
?
conv2d_53/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*!
shared_nameconv2d_53/kernel

$conv2d_53/kernel/Read/ReadVariableOpReadVariableOpconv2d_53/kernel*(
_output_shapes
:??*
dtype0
u
conv2d_53/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_nameconv2d_53/bias
n
"conv2d_53/bias/Read/ReadVariableOpReadVariableOpconv2d_53/bias*
_output_shapes	
:?*
dtype0
?
conv2d_transpose_10/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@?*+
shared_nameconv2d_transpose_10/kernel
?
.conv2d_transpose_10/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose_10/kernel*'
_output_shapes
:@?*
dtype0
?
conv2d_transpose_10/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*)
shared_nameconv2d_transpose_10/bias
?
,conv2d_transpose_10/bias/Read/ReadVariableOpReadVariableOpconv2d_transpose_10/bias*
_output_shapes
:@*
dtype0
?
conv2d_54/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:?@*!
shared_nameconv2d_54/kernel
~
$conv2d_54/kernel/Read/ReadVariableOpReadVariableOpconv2d_54/kernel*'
_output_shapes
:?@*
dtype0
t
conv2d_54/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_54/bias
m
"conv2d_54/bias/Read/ReadVariableOpReadVariableOpconv2d_54/bias*
_output_shapes
:@*
dtype0
?
conv2d_55/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*!
shared_nameconv2d_55/kernel
}
$conv2d_55/kernel/Read/ReadVariableOpReadVariableOpconv2d_55/kernel*&
_output_shapes
:@@*
dtype0
t
conv2d_55/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_55/bias
m
"conv2d_55/bias/Read/ReadVariableOpReadVariableOpconv2d_55/bias*
_output_shapes
:@*
dtype0
?
conv2d_transpose_11/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*+
shared_nameconv2d_transpose_11/kernel
?
.conv2d_transpose_11/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose_11/kernel*&
_output_shapes
: @*
dtype0
?
conv2d_transpose_11/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *)
shared_nameconv2d_transpose_11/bias
?
,conv2d_transpose_11/bias/Read/ReadVariableOpReadVariableOpconv2d_transpose_11/bias*
_output_shapes
: *
dtype0
?
conv2d_56/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ *!
shared_nameconv2d_56/kernel
}
$conv2d_56/kernel/Read/ReadVariableOpReadVariableOpconv2d_56/kernel*&
_output_shapes
:@ *
dtype0
t
conv2d_56/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_56/bias
m
"conv2d_56/bias/Read/ReadVariableOpReadVariableOpconv2d_56/bias*
_output_shapes
: *
dtype0
?
conv2d_57/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *!
shared_nameconv2d_57/kernel
}
$conv2d_57/kernel/Read/ReadVariableOpReadVariableOpconv2d_57/kernel*&
_output_shapes
:  *
dtype0
t
conv2d_57/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_57/bias
m
"conv2d_57/bias/Read/ReadVariableOpReadVariableOpconv2d_57/bias*
_output_shapes
: *
dtype0
?
conv2d_58/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *!
shared_nameconv2d_58/kernel
}
$conv2d_58/kernel/Read/ReadVariableOpReadVariableOpconv2d_58/kernel*&
_output_shapes
:  *
dtype0
t
conv2d_58/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_58/bias
m
"conv2d_58/bias/Read/ReadVariableOpReadVariableOpconv2d_58/bias*
_output_shapes
: *
dtype0
?
conv2d_59/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *!
shared_nameconv2d_59/kernel
}
$conv2d_59/kernel/Read/ReadVariableOpReadVariableOpconv2d_59/kernel*&
_output_shapes
: *
dtype0
t
conv2d_59/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_59/bias
m
"conv2d_59/bias/Read/ReadVariableOpReadVariableOpconv2d_59/bias*
_output_shapes
:*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
?
Adam/conv2d_40/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameAdam/conv2d_40/kernel/m
?
+Adam/conv2d_40/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_40/kernel/m*&
_output_shapes
: *
dtype0
?
Adam/conv2d_40/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv2d_40/bias/m
{
)Adam/conv2d_40/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_40/bias/m*
_output_shapes
: *
dtype0
?
Adam/conv2d_41/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *(
shared_nameAdam/conv2d_41/kernel/m
?
+Adam/conv2d_41/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_41/kernel/m*&
_output_shapes
:  *
dtype0
?
Adam/conv2d_41/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv2d_41/bias/m
{
)Adam/conv2d_41/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_41/bias/m*
_output_shapes
: *
dtype0
?
#Adam/batch_normalization_10/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *4
shared_name%#Adam/batch_normalization_10/gamma/m
?
7Adam/batch_normalization_10/gamma/m/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_10/gamma/m*
_output_shapes
: *
dtype0
?
"Adam/batch_normalization_10/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *3
shared_name$"Adam/batch_normalization_10/beta/m
?
6Adam/batch_normalization_10/beta/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_10/beta/m*
_output_shapes
: *
dtype0
?
Adam/conv2d_42/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*(
shared_nameAdam/conv2d_42/kernel/m
?
+Adam/conv2d_42/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_42/kernel/m*&
_output_shapes
: @*
dtype0
?
Adam/conv2d_42/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_42/bias/m
{
)Adam/conv2d_42/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_42/bias/m*
_output_shapes
:@*
dtype0
?
Adam/conv2d_43/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*(
shared_nameAdam/conv2d_43/kernel/m
?
+Adam/conv2d_43/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_43/kernel/m*&
_output_shapes
:@@*
dtype0
?
Adam/conv2d_43/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_43/bias/m
{
)Adam/conv2d_43/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_43/bias/m*
_output_shapes
:@*
dtype0
?
#Adam/batch_normalization_11/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*4
shared_name%#Adam/batch_normalization_11/gamma/m
?
7Adam/batch_normalization_11/gamma/m/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_11/gamma/m*
_output_shapes
:@*
dtype0
?
"Adam/batch_normalization_11/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"Adam/batch_normalization_11/beta/m
?
6Adam/batch_normalization_11/beta/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_11/beta/m*
_output_shapes
:@*
dtype0
?
Adam/conv2d_44/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@?*(
shared_nameAdam/conv2d_44/kernel/m
?
+Adam/conv2d_44/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_44/kernel/m*'
_output_shapes
:@?*
dtype0
?
Adam/conv2d_44/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*&
shared_nameAdam/conv2d_44/bias/m
|
)Adam/conv2d_44/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_44/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/conv2d_45/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*(
shared_nameAdam/conv2d_45/kernel/m
?
+Adam/conv2d_45/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_45/kernel/m*(
_output_shapes
:??*
dtype0
?
Adam/conv2d_45/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*&
shared_nameAdam/conv2d_45/bias/m
|
)Adam/conv2d_45/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_45/bias/m*
_output_shapes	
:?*
dtype0
?
#Adam/batch_normalization_12/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*4
shared_name%#Adam/batch_normalization_12/gamma/m
?
7Adam/batch_normalization_12/gamma/m/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_12/gamma/m*
_output_shapes	
:?*
dtype0
?
"Adam/batch_normalization_12/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/batch_normalization_12/beta/m
?
6Adam/batch_normalization_12/beta/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_12/beta/m*
_output_shapes	
:?*
dtype0
?
Adam/conv2d_46/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*(
shared_nameAdam/conv2d_46/kernel/m
?
+Adam/conv2d_46/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_46/kernel/m*(
_output_shapes
:??*
dtype0
?
Adam/conv2d_46/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*&
shared_nameAdam/conv2d_46/bias/m
|
)Adam/conv2d_46/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_46/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/conv2d_47/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*(
shared_nameAdam/conv2d_47/kernel/m
?
+Adam/conv2d_47/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_47/kernel/m*(
_output_shapes
:??*
dtype0
?
Adam/conv2d_47/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*&
shared_nameAdam/conv2d_47/bias/m
|
)Adam/conv2d_47/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_47/bias/m*
_output_shapes	
:?*
dtype0
?
#Adam/batch_normalization_13/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*4
shared_name%#Adam/batch_normalization_13/gamma/m
?
7Adam/batch_normalization_13/gamma/m/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_13/gamma/m*
_output_shapes	
:?*
dtype0
?
"Adam/batch_normalization_13/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/batch_normalization_13/beta/m
?
6Adam/batch_normalization_13/beta/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_13/beta/m*
_output_shapes	
:?*
dtype0
?
Adam/conv2d_48/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*(
shared_nameAdam/conv2d_48/kernel/m
?
+Adam/conv2d_48/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_48/kernel/m*(
_output_shapes
:??*
dtype0
?
Adam/conv2d_48/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*&
shared_nameAdam/conv2d_48/bias/m
|
)Adam/conv2d_48/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_48/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/conv2d_49/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*(
shared_nameAdam/conv2d_49/kernel/m
?
+Adam/conv2d_49/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_49/kernel/m*(
_output_shapes
:??*
dtype0
?
Adam/conv2d_49/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*&
shared_nameAdam/conv2d_49/bias/m
|
)Adam/conv2d_49/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_49/bias/m*
_output_shapes	
:?*
dtype0
?
#Adam/batch_normalization_14/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*4
shared_name%#Adam/batch_normalization_14/gamma/m
?
7Adam/batch_normalization_14/gamma/m/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_14/gamma/m*
_output_shapes	
:?*
dtype0
?
"Adam/batch_normalization_14/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/batch_normalization_14/beta/m
?
6Adam/batch_normalization_14/beta/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_14/beta/m*
_output_shapes	
:?*
dtype0
?
 Adam/conv2d_transpose_8/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*1
shared_name" Adam/conv2d_transpose_8/kernel/m
?
4Adam/conv2d_transpose_8/kernel/m/Read/ReadVariableOpReadVariableOp Adam/conv2d_transpose_8/kernel/m*(
_output_shapes
:??*
dtype0
?
Adam/conv2d_transpose_8/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*/
shared_name Adam/conv2d_transpose_8/bias/m
?
2Adam/conv2d_transpose_8/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose_8/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/conv2d_50/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*(
shared_nameAdam/conv2d_50/kernel/m
?
+Adam/conv2d_50/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_50/kernel/m*(
_output_shapes
:??*
dtype0
?
Adam/conv2d_50/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*&
shared_nameAdam/conv2d_50/bias/m
|
)Adam/conv2d_50/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_50/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/conv2d_51/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*(
shared_nameAdam/conv2d_51/kernel/m
?
+Adam/conv2d_51/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_51/kernel/m*(
_output_shapes
:??*
dtype0
?
Adam/conv2d_51/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*&
shared_nameAdam/conv2d_51/bias/m
|
)Adam/conv2d_51/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_51/bias/m*
_output_shapes	
:?*
dtype0
?
 Adam/conv2d_transpose_9/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*1
shared_name" Adam/conv2d_transpose_9/kernel/m
?
4Adam/conv2d_transpose_9/kernel/m/Read/ReadVariableOpReadVariableOp Adam/conv2d_transpose_9/kernel/m*(
_output_shapes
:??*
dtype0
?
Adam/conv2d_transpose_9/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*/
shared_name Adam/conv2d_transpose_9/bias/m
?
2Adam/conv2d_transpose_9/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose_9/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/conv2d_52/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*(
shared_nameAdam/conv2d_52/kernel/m
?
+Adam/conv2d_52/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_52/kernel/m*(
_output_shapes
:??*
dtype0
?
Adam/conv2d_52/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*&
shared_nameAdam/conv2d_52/bias/m
|
)Adam/conv2d_52/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_52/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/conv2d_53/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*(
shared_nameAdam/conv2d_53/kernel/m
?
+Adam/conv2d_53/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_53/kernel/m*(
_output_shapes
:??*
dtype0
?
Adam/conv2d_53/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*&
shared_nameAdam/conv2d_53/bias/m
|
)Adam/conv2d_53/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_53/bias/m*
_output_shapes	
:?*
dtype0
?
!Adam/conv2d_transpose_10/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@?*2
shared_name#!Adam/conv2d_transpose_10/kernel/m
?
5Adam/conv2d_transpose_10/kernel/m/Read/ReadVariableOpReadVariableOp!Adam/conv2d_transpose_10/kernel/m*'
_output_shapes
:@?*
dtype0
?
Adam/conv2d_transpose_10/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*0
shared_name!Adam/conv2d_transpose_10/bias/m
?
3Adam/conv2d_transpose_10/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose_10/bias/m*
_output_shapes
:@*
dtype0
?
Adam/conv2d_54/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?@*(
shared_nameAdam/conv2d_54/kernel/m
?
+Adam/conv2d_54/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_54/kernel/m*'
_output_shapes
:?@*
dtype0
?
Adam/conv2d_54/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_54/bias/m
{
)Adam/conv2d_54/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_54/bias/m*
_output_shapes
:@*
dtype0
?
Adam/conv2d_55/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*(
shared_nameAdam/conv2d_55/kernel/m
?
+Adam/conv2d_55/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_55/kernel/m*&
_output_shapes
:@@*
dtype0
?
Adam/conv2d_55/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_55/bias/m
{
)Adam/conv2d_55/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_55/bias/m*
_output_shapes
:@*
dtype0
?
!Adam/conv2d_transpose_11/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*2
shared_name#!Adam/conv2d_transpose_11/kernel/m
?
5Adam/conv2d_transpose_11/kernel/m/Read/ReadVariableOpReadVariableOp!Adam/conv2d_transpose_11/kernel/m*&
_output_shapes
: @*
dtype0
?
Adam/conv2d_transpose_11/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *0
shared_name!Adam/conv2d_transpose_11/bias/m
?
3Adam/conv2d_transpose_11/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose_11/bias/m*
_output_shapes
: *
dtype0
?
Adam/conv2d_56/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ *(
shared_nameAdam/conv2d_56/kernel/m
?
+Adam/conv2d_56/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_56/kernel/m*&
_output_shapes
:@ *
dtype0
?
Adam/conv2d_56/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv2d_56/bias/m
{
)Adam/conv2d_56/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_56/bias/m*
_output_shapes
: *
dtype0
?
Adam/conv2d_57/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *(
shared_nameAdam/conv2d_57/kernel/m
?
+Adam/conv2d_57/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_57/kernel/m*&
_output_shapes
:  *
dtype0
?
Adam/conv2d_57/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv2d_57/bias/m
{
)Adam/conv2d_57/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_57/bias/m*
_output_shapes
: *
dtype0
?
Adam/conv2d_58/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *(
shared_nameAdam/conv2d_58/kernel/m
?
+Adam/conv2d_58/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_58/kernel/m*&
_output_shapes
:  *
dtype0
?
Adam/conv2d_58/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv2d_58/bias/m
{
)Adam/conv2d_58/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_58/bias/m*
_output_shapes
: *
dtype0
?
Adam/conv2d_59/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameAdam/conv2d_59/kernel/m
?
+Adam/conv2d_59/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_59/kernel/m*&
_output_shapes
: *
dtype0
?
Adam/conv2d_59/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv2d_59/bias/m
{
)Adam/conv2d_59/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_59/bias/m*
_output_shapes
:*
dtype0
?
Adam/conv2d_40/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameAdam/conv2d_40/kernel/v
?
+Adam/conv2d_40/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_40/kernel/v*&
_output_shapes
: *
dtype0
?
Adam/conv2d_40/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv2d_40/bias/v
{
)Adam/conv2d_40/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_40/bias/v*
_output_shapes
: *
dtype0
?
Adam/conv2d_41/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *(
shared_nameAdam/conv2d_41/kernel/v
?
+Adam/conv2d_41/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_41/kernel/v*&
_output_shapes
:  *
dtype0
?
Adam/conv2d_41/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv2d_41/bias/v
{
)Adam/conv2d_41/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_41/bias/v*
_output_shapes
: *
dtype0
?
#Adam/batch_normalization_10/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *4
shared_name%#Adam/batch_normalization_10/gamma/v
?
7Adam/batch_normalization_10/gamma/v/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_10/gamma/v*
_output_shapes
: *
dtype0
?
"Adam/batch_normalization_10/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *3
shared_name$"Adam/batch_normalization_10/beta/v
?
6Adam/batch_normalization_10/beta/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_10/beta/v*
_output_shapes
: *
dtype0
?
Adam/conv2d_42/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*(
shared_nameAdam/conv2d_42/kernel/v
?
+Adam/conv2d_42/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_42/kernel/v*&
_output_shapes
: @*
dtype0
?
Adam/conv2d_42/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_42/bias/v
{
)Adam/conv2d_42/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_42/bias/v*
_output_shapes
:@*
dtype0
?
Adam/conv2d_43/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*(
shared_nameAdam/conv2d_43/kernel/v
?
+Adam/conv2d_43/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_43/kernel/v*&
_output_shapes
:@@*
dtype0
?
Adam/conv2d_43/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_43/bias/v
{
)Adam/conv2d_43/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_43/bias/v*
_output_shapes
:@*
dtype0
?
#Adam/batch_normalization_11/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*4
shared_name%#Adam/batch_normalization_11/gamma/v
?
7Adam/batch_normalization_11/gamma/v/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_11/gamma/v*
_output_shapes
:@*
dtype0
?
"Adam/batch_normalization_11/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"Adam/batch_normalization_11/beta/v
?
6Adam/batch_normalization_11/beta/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_11/beta/v*
_output_shapes
:@*
dtype0
?
Adam/conv2d_44/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@?*(
shared_nameAdam/conv2d_44/kernel/v
?
+Adam/conv2d_44/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_44/kernel/v*'
_output_shapes
:@?*
dtype0
?
Adam/conv2d_44/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*&
shared_nameAdam/conv2d_44/bias/v
|
)Adam/conv2d_44/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_44/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/conv2d_45/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*(
shared_nameAdam/conv2d_45/kernel/v
?
+Adam/conv2d_45/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_45/kernel/v*(
_output_shapes
:??*
dtype0
?
Adam/conv2d_45/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*&
shared_nameAdam/conv2d_45/bias/v
|
)Adam/conv2d_45/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_45/bias/v*
_output_shapes	
:?*
dtype0
?
#Adam/batch_normalization_12/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*4
shared_name%#Adam/batch_normalization_12/gamma/v
?
7Adam/batch_normalization_12/gamma/v/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_12/gamma/v*
_output_shapes	
:?*
dtype0
?
"Adam/batch_normalization_12/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/batch_normalization_12/beta/v
?
6Adam/batch_normalization_12/beta/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_12/beta/v*
_output_shapes	
:?*
dtype0
?
Adam/conv2d_46/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*(
shared_nameAdam/conv2d_46/kernel/v
?
+Adam/conv2d_46/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_46/kernel/v*(
_output_shapes
:??*
dtype0
?
Adam/conv2d_46/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*&
shared_nameAdam/conv2d_46/bias/v
|
)Adam/conv2d_46/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_46/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/conv2d_47/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*(
shared_nameAdam/conv2d_47/kernel/v
?
+Adam/conv2d_47/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_47/kernel/v*(
_output_shapes
:??*
dtype0
?
Adam/conv2d_47/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*&
shared_nameAdam/conv2d_47/bias/v
|
)Adam/conv2d_47/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_47/bias/v*
_output_shapes	
:?*
dtype0
?
#Adam/batch_normalization_13/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*4
shared_name%#Adam/batch_normalization_13/gamma/v
?
7Adam/batch_normalization_13/gamma/v/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_13/gamma/v*
_output_shapes	
:?*
dtype0
?
"Adam/batch_normalization_13/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/batch_normalization_13/beta/v
?
6Adam/batch_normalization_13/beta/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_13/beta/v*
_output_shapes	
:?*
dtype0
?
Adam/conv2d_48/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*(
shared_nameAdam/conv2d_48/kernel/v
?
+Adam/conv2d_48/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_48/kernel/v*(
_output_shapes
:??*
dtype0
?
Adam/conv2d_48/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*&
shared_nameAdam/conv2d_48/bias/v
|
)Adam/conv2d_48/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_48/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/conv2d_49/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*(
shared_nameAdam/conv2d_49/kernel/v
?
+Adam/conv2d_49/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_49/kernel/v*(
_output_shapes
:??*
dtype0
?
Adam/conv2d_49/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*&
shared_nameAdam/conv2d_49/bias/v
|
)Adam/conv2d_49/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_49/bias/v*
_output_shapes	
:?*
dtype0
?
#Adam/batch_normalization_14/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*4
shared_name%#Adam/batch_normalization_14/gamma/v
?
7Adam/batch_normalization_14/gamma/v/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_14/gamma/v*
_output_shapes	
:?*
dtype0
?
"Adam/batch_normalization_14/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/batch_normalization_14/beta/v
?
6Adam/batch_normalization_14/beta/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_14/beta/v*
_output_shapes	
:?*
dtype0
?
 Adam/conv2d_transpose_8/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*1
shared_name" Adam/conv2d_transpose_8/kernel/v
?
4Adam/conv2d_transpose_8/kernel/v/Read/ReadVariableOpReadVariableOp Adam/conv2d_transpose_8/kernel/v*(
_output_shapes
:??*
dtype0
?
Adam/conv2d_transpose_8/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*/
shared_name Adam/conv2d_transpose_8/bias/v
?
2Adam/conv2d_transpose_8/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose_8/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/conv2d_50/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*(
shared_nameAdam/conv2d_50/kernel/v
?
+Adam/conv2d_50/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_50/kernel/v*(
_output_shapes
:??*
dtype0
?
Adam/conv2d_50/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*&
shared_nameAdam/conv2d_50/bias/v
|
)Adam/conv2d_50/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_50/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/conv2d_51/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*(
shared_nameAdam/conv2d_51/kernel/v
?
+Adam/conv2d_51/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_51/kernel/v*(
_output_shapes
:??*
dtype0
?
Adam/conv2d_51/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*&
shared_nameAdam/conv2d_51/bias/v
|
)Adam/conv2d_51/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_51/bias/v*
_output_shapes	
:?*
dtype0
?
 Adam/conv2d_transpose_9/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*1
shared_name" Adam/conv2d_transpose_9/kernel/v
?
4Adam/conv2d_transpose_9/kernel/v/Read/ReadVariableOpReadVariableOp Adam/conv2d_transpose_9/kernel/v*(
_output_shapes
:??*
dtype0
?
Adam/conv2d_transpose_9/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*/
shared_name Adam/conv2d_transpose_9/bias/v
?
2Adam/conv2d_transpose_9/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose_9/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/conv2d_52/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*(
shared_nameAdam/conv2d_52/kernel/v
?
+Adam/conv2d_52/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_52/kernel/v*(
_output_shapes
:??*
dtype0
?
Adam/conv2d_52/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*&
shared_nameAdam/conv2d_52/bias/v
|
)Adam/conv2d_52/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_52/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/conv2d_53/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*(
shared_nameAdam/conv2d_53/kernel/v
?
+Adam/conv2d_53/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_53/kernel/v*(
_output_shapes
:??*
dtype0
?
Adam/conv2d_53/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*&
shared_nameAdam/conv2d_53/bias/v
|
)Adam/conv2d_53/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_53/bias/v*
_output_shapes	
:?*
dtype0
?
!Adam/conv2d_transpose_10/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@?*2
shared_name#!Adam/conv2d_transpose_10/kernel/v
?
5Adam/conv2d_transpose_10/kernel/v/Read/ReadVariableOpReadVariableOp!Adam/conv2d_transpose_10/kernel/v*'
_output_shapes
:@?*
dtype0
?
Adam/conv2d_transpose_10/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*0
shared_name!Adam/conv2d_transpose_10/bias/v
?
3Adam/conv2d_transpose_10/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose_10/bias/v*
_output_shapes
:@*
dtype0
?
Adam/conv2d_54/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?@*(
shared_nameAdam/conv2d_54/kernel/v
?
+Adam/conv2d_54/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_54/kernel/v*'
_output_shapes
:?@*
dtype0
?
Adam/conv2d_54/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_54/bias/v
{
)Adam/conv2d_54/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_54/bias/v*
_output_shapes
:@*
dtype0
?
Adam/conv2d_55/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*(
shared_nameAdam/conv2d_55/kernel/v
?
+Adam/conv2d_55/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_55/kernel/v*&
_output_shapes
:@@*
dtype0
?
Adam/conv2d_55/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_55/bias/v
{
)Adam/conv2d_55/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_55/bias/v*
_output_shapes
:@*
dtype0
?
!Adam/conv2d_transpose_11/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*2
shared_name#!Adam/conv2d_transpose_11/kernel/v
?
5Adam/conv2d_transpose_11/kernel/v/Read/ReadVariableOpReadVariableOp!Adam/conv2d_transpose_11/kernel/v*&
_output_shapes
: @*
dtype0
?
Adam/conv2d_transpose_11/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *0
shared_name!Adam/conv2d_transpose_11/bias/v
?
3Adam/conv2d_transpose_11/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose_11/bias/v*
_output_shapes
: *
dtype0
?
Adam/conv2d_56/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ *(
shared_nameAdam/conv2d_56/kernel/v
?
+Adam/conv2d_56/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_56/kernel/v*&
_output_shapes
:@ *
dtype0
?
Adam/conv2d_56/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv2d_56/bias/v
{
)Adam/conv2d_56/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_56/bias/v*
_output_shapes
: *
dtype0
?
Adam/conv2d_57/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *(
shared_nameAdam/conv2d_57/kernel/v
?
+Adam/conv2d_57/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_57/kernel/v*&
_output_shapes
:  *
dtype0
?
Adam/conv2d_57/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv2d_57/bias/v
{
)Adam/conv2d_57/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_57/bias/v*
_output_shapes
: *
dtype0
?
Adam/conv2d_58/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *(
shared_nameAdam/conv2d_58/kernel/v
?
+Adam/conv2d_58/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_58/kernel/v*&
_output_shapes
:  *
dtype0
?
Adam/conv2d_58/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv2d_58/bias/v
{
)Adam/conv2d_58/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_58/bias/v*
_output_shapes
: *
dtype0
?
Adam/conv2d_59/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameAdam/conv2d_59/kernel/v
?
+Adam/conv2d_59/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_59/kernel/v*&
_output_shapes
: *
dtype0
?
Adam/conv2d_59/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv2d_59/bias/v
{
)Adam/conv2d_59/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_59/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
݂
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*??
value??B?? B??
?
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer-4
layer_with_weights-3
layer-5
layer_with_weights-4
layer-6
layer_with_weights-5
layer-7
	layer-8

layer_with_weights-6

layer-9
layer_with_weights-7
layer-10
layer_with_weights-8
layer-11
layer-12
layer_with_weights-9
layer-13
layer_with_weights-10
layer-14
layer_with_weights-11
layer-15
layer-16
layer-17
layer_with_weights-12
layer-18
layer_with_weights-13
layer-19
layer_with_weights-14
layer-20
layer-21
layer_with_weights-15
layer-22
layer-23
layer_with_weights-16
layer-24
layer_with_weights-17
layer-25
layer_with_weights-18
layer-26
layer-27
layer_with_weights-19
layer-28
layer_with_weights-20
layer-29
layer_with_weights-21
layer-30
 layer-31
!layer_with_weights-22
!layer-32
"layer_with_weights-23
"layer-33
#layer_with_weights-24
#layer-34
$layer-35
%layer_with_weights-25
%layer-36
&layer_with_weights-26
&layer-37
'layer_with_weights-27
'layer-38
(layer_with_weights-28
(layer-39
)	optimizer
*	variables
+trainable_variables
,regularization_losses
-	keras_api
.__call__
*/&call_and_return_all_conditional_losses
0_default_save_signature
1
signatures*
* 
?

2kernel
3bias
4	variables
5trainable_variables
6regularization_losses
7	keras_api
8__call__
*9&call_and_return_all_conditional_losses*
?

:kernel
;bias
<	variables
=trainable_variables
>regularization_losses
?	keras_api
@__call__
*A&call_and_return_all_conditional_losses*
?
Baxis
	Cgamma
Dbeta
Emoving_mean
Fmoving_variance
G	variables
Htrainable_variables
Iregularization_losses
J	keras_api
K__call__
*L&call_and_return_all_conditional_losses*
?
M	variables
Ntrainable_variables
Oregularization_losses
P	keras_api
Q__call__
*R&call_and_return_all_conditional_losses* 
?

Skernel
Tbias
U	variables
Vtrainable_variables
Wregularization_losses
X	keras_api
Y__call__
*Z&call_and_return_all_conditional_losses*
?

[kernel
\bias
]	variables
^trainable_variables
_regularization_losses
`	keras_api
a__call__
*b&call_and_return_all_conditional_losses*
?
caxis
	dgamma
ebeta
fmoving_mean
gmoving_variance
h	variables
itrainable_variables
jregularization_losses
k	keras_api
l__call__
*m&call_and_return_all_conditional_losses*
?
n	variables
otrainable_variables
pregularization_losses
q	keras_api
r__call__
*s&call_and_return_all_conditional_losses* 
?

tkernel
ubias
v	variables
wtrainable_variables
xregularization_losses
y	keras_api
z__call__
*{&call_and_return_all_conditional_losses*
?

|kernel
}bias
~	variables
trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses*
?
	?axis

?gamma
	?beta
?moving_mean
?moving_variance
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses*
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses* 
?
?kernel
	?bias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses*
?
?kernel
	?bias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses*
?
	?axis

?gamma
	?beta
?moving_mean
?moving_variance
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses*
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?_random_generator
?__call__
+?&call_and_return_all_conditional_losses* 
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses* 
?
?kernel
	?bias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses*
?
?kernel
	?bias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses*
?
	?axis

?gamma
	?beta
?moving_mean
?moving_variance
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses*
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?_random_generator
?__call__
+?&call_and_return_all_conditional_losses* 
?
?kernel
	?bias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses*
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses* 
?
?kernel
	?bias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses*
?
?kernel
	?bias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses*
?
?kernel
	?bias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses*
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses* 
?
?kernel
	?bias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses*
?
?kernel
	?bias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses*
?
?kernel
	?bias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses*
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses* 
?
?kernel
	?bias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses*
?
?kernel
	?bias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses*
?
?kernel
	?bias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses*
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses* 
?
?kernel
	?bias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses*
?
?kernel
	?bias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses*
?
?kernel
	?bias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses*
?
?kernel
	?bias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses*
?

	?iter
?beta_1
?beta_2

?decay
?learning_rate2m?3m?:m?;m?Cm?Dm?Sm?Tm?[m?\m?dm?em?tm?um?|m?}m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?2v?3v?:v?;v?Cv?Dv?Sv?Tv?[v?\v?dv?ev?tv?uv?|v?}v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?*
?
20
31
:2
;3
C4
D5
E6
F7
S8
T9
[10
\11
d12
e13
f14
g15
t16
u17
|18
}19
?20
?21
?22
?23
?24
?25
?26
?27
?28
?29
?30
?31
?32
?33
?34
?35
?36
?37
?38
?39
?40
?41
?42
?43
?44
?45
?46
?47
?48
?49
?50
?51
?52
?53
?54
?55
?56
?57
?58
?59
?60
?61
?62
?63
?64
?65
?66
?67*
?
20
31
:2
;3
C4
D5
S6
T7
[8
\9
d10
e11
t12
u13
|14
}15
?16
?17
?18
?19
?20
?21
?22
?23
?24
?25
?26
?27
?28
?29
?30
?31
?32
?33
?34
?35
?36
?37
?38
?39
?40
?41
?42
?43
?44
?45
?46
?47
?48
?49
?50
?51
?52
?53
?54
?55
?56
?57*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
*	variables
+trainable_variables
,regularization_losses
.__call__
0_default_save_signature
*/&call_and_return_all_conditional_losses
&/"call_and_return_conditional_losses*
* 
* 
* 

?serving_default* 
`Z
VARIABLE_VALUEconv2d_40/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_40/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*

20
31*

20
31*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
4	variables
5trainable_variables
6regularization_losses
8__call__
*9&call_and_return_all_conditional_losses
&9"call_and_return_conditional_losses*
* 
* 
`Z
VARIABLE_VALUEconv2d_41/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_41/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*

:0
;1*

:0
;1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
<	variables
=trainable_variables
>regularization_losses
@__call__
*A&call_and_return_all_conditional_losses
&A"call_and_return_conditional_losses*
* 
* 
* 
ke
VARIABLE_VALUEbatch_normalization_10/gamma5layer_with_weights-2/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEbatch_normalization_10/beta4layer_with_weights-2/beta/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE"batch_normalization_10/moving_mean;layer_with_weights-2/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE&batch_normalization_10/moving_variance?layer_with_weights-2/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
 
C0
D1
E2
F3*

C0
D1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
G	variables
Htrainable_variables
Iregularization_losses
K__call__
*L&call_and_return_all_conditional_losses
&L"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
M	variables
Ntrainable_variables
Oregularization_losses
Q__call__
*R&call_and_return_all_conditional_losses
&R"call_and_return_conditional_losses* 
* 
* 
`Z
VARIABLE_VALUEconv2d_42/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_42/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*

S0
T1*

S0
T1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
U	variables
Vtrainable_variables
Wregularization_losses
Y__call__
*Z&call_and_return_all_conditional_losses
&Z"call_and_return_conditional_losses*
* 
* 
`Z
VARIABLE_VALUEconv2d_43/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_43/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*

[0
\1*

[0
\1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
]	variables
^trainable_variables
_regularization_losses
a__call__
*b&call_and_return_all_conditional_losses
&b"call_and_return_conditional_losses*
* 
* 
* 
ke
VARIABLE_VALUEbatch_normalization_11/gamma5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEbatch_normalization_11/beta4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE"batch_normalization_11/moving_mean;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE&batch_normalization_11/moving_variance?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
 
d0
e1
f2
g3*

d0
e1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
h	variables
itrainable_variables
jregularization_losses
l__call__
*m&call_and_return_all_conditional_losses
&m"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
n	variables
otrainable_variables
pregularization_losses
r__call__
*s&call_and_return_all_conditional_losses
&s"call_and_return_conditional_losses* 
* 
* 
`Z
VARIABLE_VALUEconv2d_44/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_44/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE*

t0
u1*

t0
u1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
v	variables
wtrainable_variables
xregularization_losses
z__call__
*{&call_and_return_all_conditional_losses
&{"call_and_return_conditional_losses*
* 
* 
`Z
VARIABLE_VALUEconv2d_45/kernel6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_45/bias4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUE*

|0
}1*

|0
}1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
~	variables
trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*
* 
* 
* 
ke
VARIABLE_VALUEbatch_normalization_12/gamma5layer_with_weights-8/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEbatch_normalization_12/beta4layer_with_weights-8/beta/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE"batch_normalization_12/moving_mean;layer_with_weights-8/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE&batch_normalization_12/moving_variance?layer_with_weights-8/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
$
?0
?1
?2
?3*

?0
?1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses* 
* 
* 
`Z
VARIABLE_VALUEconv2d_46/kernel6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_46/bias4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUE*

?0
?1*

?0
?1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*
* 
* 
a[
VARIABLE_VALUEconv2d_47/kernel7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv2d_47/bias5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUE*

?0
?1*

?0
?1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*
* 
* 
* 
lf
VARIABLE_VALUEbatch_normalization_13/gamma6layer_with_weights-11/gamma/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUEbatch_normalization_13/beta5layer_with_weights-11/beta/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUE"batch_normalization_13/moving_mean<layer_with_weights-11/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
?z
VARIABLE_VALUE&batch_normalization_13/moving_variance@layer_with_weights-11/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
$
?0
?1
?2
?3*

?0
?1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses* 
* 
* 
a[
VARIABLE_VALUEconv2d_48/kernel7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv2d_48/bias5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUE*

?0
?1*

?0
?1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*
* 
* 
a[
VARIABLE_VALUEconv2d_49/kernel7layer_with_weights-13/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv2d_49/bias5layer_with_weights-13/bias/.ATTRIBUTES/VARIABLE_VALUE*

?0
?1*

?0
?1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*
* 
* 
* 
lf
VARIABLE_VALUEbatch_normalization_14/gamma6layer_with_weights-14/gamma/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUEbatch_normalization_14/beta5layer_with_weights-14/beta/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUE"batch_normalization_14/moving_mean<layer_with_weights-14/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
?z
VARIABLE_VALUE&batch_normalization_14/moving_variance@layer_with_weights-14/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
$
?0
?1
?2
?3*

?0
?1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses* 
* 
* 
* 
jd
VARIABLE_VALUEconv2d_transpose_8/kernel7layer_with_weights-15/kernel/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUEconv2d_transpose_8/bias5layer_with_weights-15/bias/.ATTRIBUTES/VARIABLE_VALUE*

?0
?1*

?0
?1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses* 
* 
* 
a[
VARIABLE_VALUEconv2d_50/kernel7layer_with_weights-16/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv2d_50/bias5layer_with_weights-16/bias/.ATTRIBUTES/VARIABLE_VALUE*

?0
?1*

?0
?1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*
* 
* 
a[
VARIABLE_VALUEconv2d_51/kernel7layer_with_weights-17/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv2d_51/bias5layer_with_weights-17/bias/.ATTRIBUTES/VARIABLE_VALUE*

?0
?1*

?0
?1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*
* 
* 
jd
VARIABLE_VALUEconv2d_transpose_9/kernel7layer_with_weights-18/kernel/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUEconv2d_transpose_9/bias5layer_with_weights-18/bias/.ATTRIBUTES/VARIABLE_VALUE*

?0
?1*

?0
?1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses* 
* 
* 
a[
VARIABLE_VALUEconv2d_52/kernel7layer_with_weights-19/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv2d_52/bias5layer_with_weights-19/bias/.ATTRIBUTES/VARIABLE_VALUE*

?0
?1*

?0
?1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*
* 
* 
a[
VARIABLE_VALUEconv2d_53/kernel7layer_with_weights-20/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv2d_53/bias5layer_with_weights-20/bias/.ATTRIBUTES/VARIABLE_VALUE*

?0
?1*

?0
?1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*
* 
* 
ke
VARIABLE_VALUEconv2d_transpose_10/kernel7layer_with_weights-21/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUEconv2d_transpose_10/bias5layer_with_weights-21/bias/.ATTRIBUTES/VARIABLE_VALUE*

?0
?1*

?0
?1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses* 
* 
* 
a[
VARIABLE_VALUEconv2d_54/kernel7layer_with_weights-22/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv2d_54/bias5layer_with_weights-22/bias/.ATTRIBUTES/VARIABLE_VALUE*

?0
?1*

?0
?1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*
* 
* 
a[
VARIABLE_VALUEconv2d_55/kernel7layer_with_weights-23/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv2d_55/bias5layer_with_weights-23/bias/.ATTRIBUTES/VARIABLE_VALUE*

?0
?1*

?0
?1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*
* 
* 
ke
VARIABLE_VALUEconv2d_transpose_11/kernel7layer_with_weights-24/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUEconv2d_transpose_11/bias5layer_with_weights-24/bias/.ATTRIBUTES/VARIABLE_VALUE*

?0
?1*

?0
?1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses* 
* 
* 
a[
VARIABLE_VALUEconv2d_56/kernel7layer_with_weights-25/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv2d_56/bias5layer_with_weights-25/bias/.ATTRIBUTES/VARIABLE_VALUE*

?0
?1*

?0
?1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*
* 
* 
a[
VARIABLE_VALUEconv2d_57/kernel7layer_with_weights-26/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv2d_57/bias5layer_with_weights-26/bias/.ATTRIBUTES/VARIABLE_VALUE*

?0
?1*

?0
?1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*
* 
* 
a[
VARIABLE_VALUEconv2d_58/kernel7layer_with_weights-27/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv2d_58/bias5layer_with_weights-27/bias/.ATTRIBUTES/VARIABLE_VALUE*

?0
?1*

?0
?1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*
* 
* 
a[
VARIABLE_VALUEconv2d_59/kernel7layer_with_weights-28/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv2d_59/bias5layer_with_weights-28/bias/.ATTRIBUTES/VARIABLE_VALUE*

?0
?1*

?0
?1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*
* 
* 
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
P
E0
F1
f2
g3
?4
?5
?6
?7
?8
?9*
?
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24
25
26
27
28
29
30
 31
!32
"33
#34
$35
%36
&37
'38
(39*

?0
?1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

E0
F1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

f0
g1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

?0
?1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

?0
?1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

?0
?1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
<

?total

?count
?	variables
?	keras_api*
M

?total

?count
?
_fn_kwargs
?	variables
?	keras_api*
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

?0
?1*

?	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

?0
?1*

?	variables*
?}
VARIABLE_VALUEAdam/conv2d_40/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_40/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?}
VARIABLE_VALUEAdam/conv2d_41/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_41/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE#Adam/batch_normalization_10/gamma/mQlayer_with_weights-2/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE"Adam/batch_normalization_10/beta/mPlayer_with_weights-2/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?}
VARIABLE_VALUEAdam/conv2d_42/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_42/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?}
VARIABLE_VALUEAdam/conv2d_43/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_43/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE#Adam/batch_normalization_11/gamma/mQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE"Adam/batch_normalization_11/beta/mPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?}
VARIABLE_VALUEAdam/conv2d_44/kernel/mRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_44/bias/mPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?}
VARIABLE_VALUEAdam/conv2d_45/kernel/mRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_45/bias/mPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE#Adam/batch_normalization_12/gamma/mQlayer_with_weights-8/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE"Adam/batch_normalization_12/beta/mPlayer_with_weights-8/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?}
VARIABLE_VALUEAdam/conv2d_46/kernel/mRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_46/bias/mPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?~
VARIABLE_VALUEAdam/conv2d_47/kernel/mSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?z
VARIABLE_VALUEAdam/conv2d_47/bias/mQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE#Adam/batch_normalization_13/gamma/mRlayer_with_weights-11/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE"Adam/batch_normalization_13/beta/mQlayer_with_weights-11/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?~
VARIABLE_VALUEAdam/conv2d_48/kernel/mSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?z
VARIABLE_VALUEAdam/conv2d_48/bias/mQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?~
VARIABLE_VALUEAdam/conv2d_49/kernel/mSlayer_with_weights-13/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?z
VARIABLE_VALUEAdam/conv2d_49/bias/mQlayer_with_weights-13/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE#Adam/batch_normalization_14/gamma/mRlayer_with_weights-14/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE"Adam/batch_normalization_14/beta/mQlayer_with_weights-14/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE Adam/conv2d_transpose_8/kernel/mSlayer_with_weights-15/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAdam/conv2d_transpose_8/bias/mQlayer_with_weights-15/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?~
VARIABLE_VALUEAdam/conv2d_50/kernel/mSlayer_with_weights-16/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?z
VARIABLE_VALUEAdam/conv2d_50/bias/mQlayer_with_weights-16/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?~
VARIABLE_VALUEAdam/conv2d_51/kernel/mSlayer_with_weights-17/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?z
VARIABLE_VALUEAdam/conv2d_51/bias/mQlayer_with_weights-17/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE Adam/conv2d_transpose_9/kernel/mSlayer_with_weights-18/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAdam/conv2d_transpose_9/bias/mQlayer_with_weights-18/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?~
VARIABLE_VALUEAdam/conv2d_52/kernel/mSlayer_with_weights-19/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?z
VARIABLE_VALUEAdam/conv2d_52/bias/mQlayer_with_weights-19/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?~
VARIABLE_VALUEAdam/conv2d_53/kernel/mSlayer_with_weights-20/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?z
VARIABLE_VALUEAdam/conv2d_53/bias/mQlayer_with_weights-20/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE!Adam/conv2d_transpose_10/kernel/mSlayer_with_weights-21/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAdam/conv2d_transpose_10/bias/mQlayer_with_weights-21/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?~
VARIABLE_VALUEAdam/conv2d_54/kernel/mSlayer_with_weights-22/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?z
VARIABLE_VALUEAdam/conv2d_54/bias/mQlayer_with_weights-22/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?~
VARIABLE_VALUEAdam/conv2d_55/kernel/mSlayer_with_weights-23/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?z
VARIABLE_VALUEAdam/conv2d_55/bias/mQlayer_with_weights-23/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE!Adam/conv2d_transpose_11/kernel/mSlayer_with_weights-24/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAdam/conv2d_transpose_11/bias/mQlayer_with_weights-24/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?~
VARIABLE_VALUEAdam/conv2d_56/kernel/mSlayer_with_weights-25/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?z
VARIABLE_VALUEAdam/conv2d_56/bias/mQlayer_with_weights-25/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?~
VARIABLE_VALUEAdam/conv2d_57/kernel/mSlayer_with_weights-26/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?z
VARIABLE_VALUEAdam/conv2d_57/bias/mQlayer_with_weights-26/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?~
VARIABLE_VALUEAdam/conv2d_58/kernel/mSlayer_with_weights-27/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?z
VARIABLE_VALUEAdam/conv2d_58/bias/mQlayer_with_weights-27/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?~
VARIABLE_VALUEAdam/conv2d_59/kernel/mSlayer_with_weights-28/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?z
VARIABLE_VALUEAdam/conv2d_59/bias/mQlayer_with_weights-28/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?}
VARIABLE_VALUEAdam/conv2d_40/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_40/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?}
VARIABLE_VALUEAdam/conv2d_41/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_41/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE#Adam/batch_normalization_10/gamma/vQlayer_with_weights-2/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE"Adam/batch_normalization_10/beta/vPlayer_with_weights-2/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?}
VARIABLE_VALUEAdam/conv2d_42/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_42/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?}
VARIABLE_VALUEAdam/conv2d_43/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_43/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE#Adam/batch_normalization_11/gamma/vQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE"Adam/batch_normalization_11/beta/vPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?}
VARIABLE_VALUEAdam/conv2d_44/kernel/vRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_44/bias/vPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?}
VARIABLE_VALUEAdam/conv2d_45/kernel/vRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_45/bias/vPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE#Adam/batch_normalization_12/gamma/vQlayer_with_weights-8/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE"Adam/batch_normalization_12/beta/vPlayer_with_weights-8/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?}
VARIABLE_VALUEAdam/conv2d_46/kernel/vRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_46/bias/vPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?~
VARIABLE_VALUEAdam/conv2d_47/kernel/vSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?z
VARIABLE_VALUEAdam/conv2d_47/bias/vQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE#Adam/batch_normalization_13/gamma/vRlayer_with_weights-11/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE"Adam/batch_normalization_13/beta/vQlayer_with_weights-11/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?~
VARIABLE_VALUEAdam/conv2d_48/kernel/vSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?z
VARIABLE_VALUEAdam/conv2d_48/bias/vQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?~
VARIABLE_VALUEAdam/conv2d_49/kernel/vSlayer_with_weights-13/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?z
VARIABLE_VALUEAdam/conv2d_49/bias/vQlayer_with_weights-13/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE#Adam/batch_normalization_14/gamma/vRlayer_with_weights-14/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE"Adam/batch_normalization_14/beta/vQlayer_with_weights-14/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE Adam/conv2d_transpose_8/kernel/vSlayer_with_weights-15/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAdam/conv2d_transpose_8/bias/vQlayer_with_weights-15/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?~
VARIABLE_VALUEAdam/conv2d_50/kernel/vSlayer_with_weights-16/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?z
VARIABLE_VALUEAdam/conv2d_50/bias/vQlayer_with_weights-16/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?~
VARIABLE_VALUEAdam/conv2d_51/kernel/vSlayer_with_weights-17/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?z
VARIABLE_VALUEAdam/conv2d_51/bias/vQlayer_with_weights-17/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE Adam/conv2d_transpose_9/kernel/vSlayer_with_weights-18/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAdam/conv2d_transpose_9/bias/vQlayer_with_weights-18/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?~
VARIABLE_VALUEAdam/conv2d_52/kernel/vSlayer_with_weights-19/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?z
VARIABLE_VALUEAdam/conv2d_52/bias/vQlayer_with_weights-19/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?~
VARIABLE_VALUEAdam/conv2d_53/kernel/vSlayer_with_weights-20/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?z
VARIABLE_VALUEAdam/conv2d_53/bias/vQlayer_with_weights-20/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE!Adam/conv2d_transpose_10/kernel/vSlayer_with_weights-21/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAdam/conv2d_transpose_10/bias/vQlayer_with_weights-21/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?~
VARIABLE_VALUEAdam/conv2d_54/kernel/vSlayer_with_weights-22/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?z
VARIABLE_VALUEAdam/conv2d_54/bias/vQlayer_with_weights-22/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?~
VARIABLE_VALUEAdam/conv2d_55/kernel/vSlayer_with_weights-23/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?z
VARIABLE_VALUEAdam/conv2d_55/bias/vQlayer_with_weights-23/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE!Adam/conv2d_transpose_11/kernel/vSlayer_with_weights-24/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAdam/conv2d_transpose_11/bias/vQlayer_with_weights-24/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?~
VARIABLE_VALUEAdam/conv2d_56/kernel/vSlayer_with_weights-25/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?z
VARIABLE_VALUEAdam/conv2d_56/bias/vQlayer_with_weights-25/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?~
VARIABLE_VALUEAdam/conv2d_57/kernel/vSlayer_with_weights-26/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?z
VARIABLE_VALUEAdam/conv2d_57/bias/vQlayer_with_weights-26/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?~
VARIABLE_VALUEAdam/conv2d_58/kernel/vSlayer_with_weights-27/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?z
VARIABLE_VALUEAdam/conv2d_58/bias/vQlayer_with_weights-27/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?~
VARIABLE_VALUEAdam/conv2d_59/kernel/vSlayer_with_weights-28/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?z
VARIABLE_VALUEAdam/conv2d_59/bias/vQlayer_with_weights-28/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?
serving_default_input_3Placeholder*1
_output_shapes
:???????????*
dtype0*&
shape:???????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_3conv2d_40/kernelconv2d_40/biasconv2d_41/kernelconv2d_41/biasbatch_normalization_10/gammabatch_normalization_10/beta"batch_normalization_10/moving_mean&batch_normalization_10/moving_varianceconv2d_42/kernelconv2d_42/biasconv2d_43/kernelconv2d_43/biasbatch_normalization_11/gammabatch_normalization_11/beta"batch_normalization_11/moving_mean&batch_normalization_11/moving_varianceconv2d_44/kernelconv2d_44/biasconv2d_45/kernelconv2d_45/biasbatch_normalization_12/gammabatch_normalization_12/beta"batch_normalization_12/moving_mean&batch_normalization_12/moving_varianceconv2d_46/kernelconv2d_46/biasconv2d_47/kernelconv2d_47/biasbatch_normalization_13/gammabatch_normalization_13/beta"batch_normalization_13/moving_mean&batch_normalization_13/moving_varianceconv2d_48/kernelconv2d_48/biasconv2d_49/kernelconv2d_49/biasbatch_normalization_14/gammabatch_normalization_14/beta"batch_normalization_14/moving_mean&batch_normalization_14/moving_varianceconv2d_transpose_8/kernelconv2d_transpose_8/biasconv2d_50/kernelconv2d_50/biasconv2d_51/kernelconv2d_51/biasconv2d_transpose_9/kernelconv2d_transpose_9/biasconv2d_52/kernelconv2d_52/biasconv2d_53/kernelconv2d_53/biasconv2d_transpose_10/kernelconv2d_transpose_10/biasconv2d_54/kernelconv2d_54/biasconv2d_55/kernelconv2d_55/biasconv2d_transpose_11/kernelconv2d_transpose_11/biasconv2d_56/kernelconv2d_56/biasconv2d_57/kernelconv2d_57/biasconv2d_58/kernelconv2d_58/biasconv2d_59/kernelconv2d_59/bias*P
TinI
G2E*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*f
_read_only_resource_inputsH
FD	
 !"#$%&'()*+,-./0123456789:;<=>?@ABCD*0
config_proto 

CPU

GPU2*0J 8? *,
f'R%
#__inference_signature_wrapper_45991
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?G
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$conv2d_40/kernel/Read/ReadVariableOp"conv2d_40/bias/Read/ReadVariableOp$conv2d_41/kernel/Read/ReadVariableOp"conv2d_41/bias/Read/ReadVariableOp0batch_normalization_10/gamma/Read/ReadVariableOp/batch_normalization_10/beta/Read/ReadVariableOp6batch_normalization_10/moving_mean/Read/ReadVariableOp:batch_normalization_10/moving_variance/Read/ReadVariableOp$conv2d_42/kernel/Read/ReadVariableOp"conv2d_42/bias/Read/ReadVariableOp$conv2d_43/kernel/Read/ReadVariableOp"conv2d_43/bias/Read/ReadVariableOp0batch_normalization_11/gamma/Read/ReadVariableOp/batch_normalization_11/beta/Read/ReadVariableOp6batch_normalization_11/moving_mean/Read/ReadVariableOp:batch_normalization_11/moving_variance/Read/ReadVariableOp$conv2d_44/kernel/Read/ReadVariableOp"conv2d_44/bias/Read/ReadVariableOp$conv2d_45/kernel/Read/ReadVariableOp"conv2d_45/bias/Read/ReadVariableOp0batch_normalization_12/gamma/Read/ReadVariableOp/batch_normalization_12/beta/Read/ReadVariableOp6batch_normalization_12/moving_mean/Read/ReadVariableOp:batch_normalization_12/moving_variance/Read/ReadVariableOp$conv2d_46/kernel/Read/ReadVariableOp"conv2d_46/bias/Read/ReadVariableOp$conv2d_47/kernel/Read/ReadVariableOp"conv2d_47/bias/Read/ReadVariableOp0batch_normalization_13/gamma/Read/ReadVariableOp/batch_normalization_13/beta/Read/ReadVariableOp6batch_normalization_13/moving_mean/Read/ReadVariableOp:batch_normalization_13/moving_variance/Read/ReadVariableOp$conv2d_48/kernel/Read/ReadVariableOp"conv2d_48/bias/Read/ReadVariableOp$conv2d_49/kernel/Read/ReadVariableOp"conv2d_49/bias/Read/ReadVariableOp0batch_normalization_14/gamma/Read/ReadVariableOp/batch_normalization_14/beta/Read/ReadVariableOp6batch_normalization_14/moving_mean/Read/ReadVariableOp:batch_normalization_14/moving_variance/Read/ReadVariableOp-conv2d_transpose_8/kernel/Read/ReadVariableOp+conv2d_transpose_8/bias/Read/ReadVariableOp$conv2d_50/kernel/Read/ReadVariableOp"conv2d_50/bias/Read/ReadVariableOp$conv2d_51/kernel/Read/ReadVariableOp"conv2d_51/bias/Read/ReadVariableOp-conv2d_transpose_9/kernel/Read/ReadVariableOp+conv2d_transpose_9/bias/Read/ReadVariableOp$conv2d_52/kernel/Read/ReadVariableOp"conv2d_52/bias/Read/ReadVariableOp$conv2d_53/kernel/Read/ReadVariableOp"conv2d_53/bias/Read/ReadVariableOp.conv2d_transpose_10/kernel/Read/ReadVariableOp,conv2d_transpose_10/bias/Read/ReadVariableOp$conv2d_54/kernel/Read/ReadVariableOp"conv2d_54/bias/Read/ReadVariableOp$conv2d_55/kernel/Read/ReadVariableOp"conv2d_55/bias/Read/ReadVariableOp.conv2d_transpose_11/kernel/Read/ReadVariableOp,conv2d_transpose_11/bias/Read/ReadVariableOp$conv2d_56/kernel/Read/ReadVariableOp"conv2d_56/bias/Read/ReadVariableOp$conv2d_57/kernel/Read/ReadVariableOp"conv2d_57/bias/Read/ReadVariableOp$conv2d_58/kernel/Read/ReadVariableOp"conv2d_58/bias/Read/ReadVariableOp$conv2d_59/kernel/Read/ReadVariableOp"conv2d_59/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp+Adam/conv2d_40/kernel/m/Read/ReadVariableOp)Adam/conv2d_40/bias/m/Read/ReadVariableOp+Adam/conv2d_41/kernel/m/Read/ReadVariableOp)Adam/conv2d_41/bias/m/Read/ReadVariableOp7Adam/batch_normalization_10/gamma/m/Read/ReadVariableOp6Adam/batch_normalization_10/beta/m/Read/ReadVariableOp+Adam/conv2d_42/kernel/m/Read/ReadVariableOp)Adam/conv2d_42/bias/m/Read/ReadVariableOp+Adam/conv2d_43/kernel/m/Read/ReadVariableOp)Adam/conv2d_43/bias/m/Read/ReadVariableOp7Adam/batch_normalization_11/gamma/m/Read/ReadVariableOp6Adam/batch_normalization_11/beta/m/Read/ReadVariableOp+Adam/conv2d_44/kernel/m/Read/ReadVariableOp)Adam/conv2d_44/bias/m/Read/ReadVariableOp+Adam/conv2d_45/kernel/m/Read/ReadVariableOp)Adam/conv2d_45/bias/m/Read/ReadVariableOp7Adam/batch_normalization_12/gamma/m/Read/ReadVariableOp6Adam/batch_normalization_12/beta/m/Read/ReadVariableOp+Adam/conv2d_46/kernel/m/Read/ReadVariableOp)Adam/conv2d_46/bias/m/Read/ReadVariableOp+Adam/conv2d_47/kernel/m/Read/ReadVariableOp)Adam/conv2d_47/bias/m/Read/ReadVariableOp7Adam/batch_normalization_13/gamma/m/Read/ReadVariableOp6Adam/batch_normalization_13/beta/m/Read/ReadVariableOp+Adam/conv2d_48/kernel/m/Read/ReadVariableOp)Adam/conv2d_48/bias/m/Read/ReadVariableOp+Adam/conv2d_49/kernel/m/Read/ReadVariableOp)Adam/conv2d_49/bias/m/Read/ReadVariableOp7Adam/batch_normalization_14/gamma/m/Read/ReadVariableOp6Adam/batch_normalization_14/beta/m/Read/ReadVariableOp4Adam/conv2d_transpose_8/kernel/m/Read/ReadVariableOp2Adam/conv2d_transpose_8/bias/m/Read/ReadVariableOp+Adam/conv2d_50/kernel/m/Read/ReadVariableOp)Adam/conv2d_50/bias/m/Read/ReadVariableOp+Adam/conv2d_51/kernel/m/Read/ReadVariableOp)Adam/conv2d_51/bias/m/Read/ReadVariableOp4Adam/conv2d_transpose_9/kernel/m/Read/ReadVariableOp2Adam/conv2d_transpose_9/bias/m/Read/ReadVariableOp+Adam/conv2d_52/kernel/m/Read/ReadVariableOp)Adam/conv2d_52/bias/m/Read/ReadVariableOp+Adam/conv2d_53/kernel/m/Read/ReadVariableOp)Adam/conv2d_53/bias/m/Read/ReadVariableOp5Adam/conv2d_transpose_10/kernel/m/Read/ReadVariableOp3Adam/conv2d_transpose_10/bias/m/Read/ReadVariableOp+Adam/conv2d_54/kernel/m/Read/ReadVariableOp)Adam/conv2d_54/bias/m/Read/ReadVariableOp+Adam/conv2d_55/kernel/m/Read/ReadVariableOp)Adam/conv2d_55/bias/m/Read/ReadVariableOp5Adam/conv2d_transpose_11/kernel/m/Read/ReadVariableOp3Adam/conv2d_transpose_11/bias/m/Read/ReadVariableOp+Adam/conv2d_56/kernel/m/Read/ReadVariableOp)Adam/conv2d_56/bias/m/Read/ReadVariableOp+Adam/conv2d_57/kernel/m/Read/ReadVariableOp)Adam/conv2d_57/bias/m/Read/ReadVariableOp+Adam/conv2d_58/kernel/m/Read/ReadVariableOp)Adam/conv2d_58/bias/m/Read/ReadVariableOp+Adam/conv2d_59/kernel/m/Read/ReadVariableOp)Adam/conv2d_59/bias/m/Read/ReadVariableOp+Adam/conv2d_40/kernel/v/Read/ReadVariableOp)Adam/conv2d_40/bias/v/Read/ReadVariableOp+Adam/conv2d_41/kernel/v/Read/ReadVariableOp)Adam/conv2d_41/bias/v/Read/ReadVariableOp7Adam/batch_normalization_10/gamma/v/Read/ReadVariableOp6Adam/batch_normalization_10/beta/v/Read/ReadVariableOp+Adam/conv2d_42/kernel/v/Read/ReadVariableOp)Adam/conv2d_42/bias/v/Read/ReadVariableOp+Adam/conv2d_43/kernel/v/Read/ReadVariableOp)Adam/conv2d_43/bias/v/Read/ReadVariableOp7Adam/batch_normalization_11/gamma/v/Read/ReadVariableOp6Adam/batch_normalization_11/beta/v/Read/ReadVariableOp+Adam/conv2d_44/kernel/v/Read/ReadVariableOp)Adam/conv2d_44/bias/v/Read/ReadVariableOp+Adam/conv2d_45/kernel/v/Read/ReadVariableOp)Adam/conv2d_45/bias/v/Read/ReadVariableOp7Adam/batch_normalization_12/gamma/v/Read/ReadVariableOp6Adam/batch_normalization_12/beta/v/Read/ReadVariableOp+Adam/conv2d_46/kernel/v/Read/ReadVariableOp)Adam/conv2d_46/bias/v/Read/ReadVariableOp+Adam/conv2d_47/kernel/v/Read/ReadVariableOp)Adam/conv2d_47/bias/v/Read/ReadVariableOp7Adam/batch_normalization_13/gamma/v/Read/ReadVariableOp6Adam/batch_normalization_13/beta/v/Read/ReadVariableOp+Adam/conv2d_48/kernel/v/Read/ReadVariableOp)Adam/conv2d_48/bias/v/Read/ReadVariableOp+Adam/conv2d_49/kernel/v/Read/ReadVariableOp)Adam/conv2d_49/bias/v/Read/ReadVariableOp7Adam/batch_normalization_14/gamma/v/Read/ReadVariableOp6Adam/batch_normalization_14/beta/v/Read/ReadVariableOp4Adam/conv2d_transpose_8/kernel/v/Read/ReadVariableOp2Adam/conv2d_transpose_8/bias/v/Read/ReadVariableOp+Adam/conv2d_50/kernel/v/Read/ReadVariableOp)Adam/conv2d_50/bias/v/Read/ReadVariableOp+Adam/conv2d_51/kernel/v/Read/ReadVariableOp)Adam/conv2d_51/bias/v/Read/ReadVariableOp4Adam/conv2d_transpose_9/kernel/v/Read/ReadVariableOp2Adam/conv2d_transpose_9/bias/v/Read/ReadVariableOp+Adam/conv2d_52/kernel/v/Read/ReadVariableOp)Adam/conv2d_52/bias/v/Read/ReadVariableOp+Adam/conv2d_53/kernel/v/Read/ReadVariableOp)Adam/conv2d_53/bias/v/Read/ReadVariableOp5Adam/conv2d_transpose_10/kernel/v/Read/ReadVariableOp3Adam/conv2d_transpose_10/bias/v/Read/ReadVariableOp+Adam/conv2d_54/kernel/v/Read/ReadVariableOp)Adam/conv2d_54/bias/v/Read/ReadVariableOp+Adam/conv2d_55/kernel/v/Read/ReadVariableOp)Adam/conv2d_55/bias/v/Read/ReadVariableOp5Adam/conv2d_transpose_11/kernel/v/Read/ReadVariableOp3Adam/conv2d_transpose_11/bias/v/Read/ReadVariableOp+Adam/conv2d_56/kernel/v/Read/ReadVariableOp)Adam/conv2d_56/bias/v/Read/ReadVariableOp+Adam/conv2d_57/kernel/v/Read/ReadVariableOp)Adam/conv2d_57/bias/v/Read/ReadVariableOp+Adam/conv2d_58/kernel/v/Read/ReadVariableOp)Adam/conv2d_58/bias/v/Read/ReadVariableOp+Adam/conv2d_59/kernel/v/Read/ReadVariableOp)Adam/conv2d_59/bias/v/Read/ReadVariableOpConst*?
Tin?
?2?	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *'
f"R 
__inference__traced_save_47616
?)
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_40/kernelconv2d_40/biasconv2d_41/kernelconv2d_41/biasbatch_normalization_10/gammabatch_normalization_10/beta"batch_normalization_10/moving_mean&batch_normalization_10/moving_varianceconv2d_42/kernelconv2d_42/biasconv2d_43/kernelconv2d_43/biasbatch_normalization_11/gammabatch_normalization_11/beta"batch_normalization_11/moving_mean&batch_normalization_11/moving_varianceconv2d_44/kernelconv2d_44/biasconv2d_45/kernelconv2d_45/biasbatch_normalization_12/gammabatch_normalization_12/beta"batch_normalization_12/moving_mean&batch_normalization_12/moving_varianceconv2d_46/kernelconv2d_46/biasconv2d_47/kernelconv2d_47/biasbatch_normalization_13/gammabatch_normalization_13/beta"batch_normalization_13/moving_mean&batch_normalization_13/moving_varianceconv2d_48/kernelconv2d_48/biasconv2d_49/kernelconv2d_49/biasbatch_normalization_14/gammabatch_normalization_14/beta"batch_normalization_14/moving_mean&batch_normalization_14/moving_varianceconv2d_transpose_8/kernelconv2d_transpose_8/biasconv2d_50/kernelconv2d_50/biasconv2d_51/kernelconv2d_51/biasconv2d_transpose_9/kernelconv2d_transpose_9/biasconv2d_52/kernelconv2d_52/biasconv2d_53/kernelconv2d_53/biasconv2d_transpose_10/kernelconv2d_transpose_10/biasconv2d_54/kernelconv2d_54/biasconv2d_55/kernelconv2d_55/biasconv2d_transpose_11/kernelconv2d_transpose_11/biasconv2d_56/kernelconv2d_56/biasconv2d_57/kernelconv2d_57/biasconv2d_58/kernelconv2d_58/biasconv2d_59/kernelconv2d_59/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1Adam/conv2d_40/kernel/mAdam/conv2d_40/bias/mAdam/conv2d_41/kernel/mAdam/conv2d_41/bias/m#Adam/batch_normalization_10/gamma/m"Adam/batch_normalization_10/beta/mAdam/conv2d_42/kernel/mAdam/conv2d_42/bias/mAdam/conv2d_43/kernel/mAdam/conv2d_43/bias/m#Adam/batch_normalization_11/gamma/m"Adam/batch_normalization_11/beta/mAdam/conv2d_44/kernel/mAdam/conv2d_44/bias/mAdam/conv2d_45/kernel/mAdam/conv2d_45/bias/m#Adam/batch_normalization_12/gamma/m"Adam/batch_normalization_12/beta/mAdam/conv2d_46/kernel/mAdam/conv2d_46/bias/mAdam/conv2d_47/kernel/mAdam/conv2d_47/bias/m#Adam/batch_normalization_13/gamma/m"Adam/batch_normalization_13/beta/mAdam/conv2d_48/kernel/mAdam/conv2d_48/bias/mAdam/conv2d_49/kernel/mAdam/conv2d_49/bias/m#Adam/batch_normalization_14/gamma/m"Adam/batch_normalization_14/beta/m Adam/conv2d_transpose_8/kernel/mAdam/conv2d_transpose_8/bias/mAdam/conv2d_50/kernel/mAdam/conv2d_50/bias/mAdam/conv2d_51/kernel/mAdam/conv2d_51/bias/m Adam/conv2d_transpose_9/kernel/mAdam/conv2d_transpose_9/bias/mAdam/conv2d_52/kernel/mAdam/conv2d_52/bias/mAdam/conv2d_53/kernel/mAdam/conv2d_53/bias/m!Adam/conv2d_transpose_10/kernel/mAdam/conv2d_transpose_10/bias/mAdam/conv2d_54/kernel/mAdam/conv2d_54/bias/mAdam/conv2d_55/kernel/mAdam/conv2d_55/bias/m!Adam/conv2d_transpose_11/kernel/mAdam/conv2d_transpose_11/bias/mAdam/conv2d_56/kernel/mAdam/conv2d_56/bias/mAdam/conv2d_57/kernel/mAdam/conv2d_57/bias/mAdam/conv2d_58/kernel/mAdam/conv2d_58/bias/mAdam/conv2d_59/kernel/mAdam/conv2d_59/bias/mAdam/conv2d_40/kernel/vAdam/conv2d_40/bias/vAdam/conv2d_41/kernel/vAdam/conv2d_41/bias/v#Adam/batch_normalization_10/gamma/v"Adam/batch_normalization_10/beta/vAdam/conv2d_42/kernel/vAdam/conv2d_42/bias/vAdam/conv2d_43/kernel/vAdam/conv2d_43/bias/v#Adam/batch_normalization_11/gamma/v"Adam/batch_normalization_11/beta/vAdam/conv2d_44/kernel/vAdam/conv2d_44/bias/vAdam/conv2d_45/kernel/vAdam/conv2d_45/bias/v#Adam/batch_normalization_12/gamma/v"Adam/batch_normalization_12/beta/vAdam/conv2d_46/kernel/vAdam/conv2d_46/bias/vAdam/conv2d_47/kernel/vAdam/conv2d_47/bias/v#Adam/batch_normalization_13/gamma/v"Adam/batch_normalization_13/beta/vAdam/conv2d_48/kernel/vAdam/conv2d_48/bias/vAdam/conv2d_49/kernel/vAdam/conv2d_49/bias/v#Adam/batch_normalization_14/gamma/v"Adam/batch_normalization_14/beta/v Adam/conv2d_transpose_8/kernel/vAdam/conv2d_transpose_8/bias/vAdam/conv2d_50/kernel/vAdam/conv2d_50/bias/vAdam/conv2d_51/kernel/vAdam/conv2d_51/bias/v Adam/conv2d_transpose_9/kernel/vAdam/conv2d_transpose_9/bias/vAdam/conv2d_52/kernel/vAdam/conv2d_52/bias/vAdam/conv2d_53/kernel/vAdam/conv2d_53/bias/v!Adam/conv2d_transpose_10/kernel/vAdam/conv2d_transpose_10/bias/vAdam/conv2d_54/kernel/vAdam/conv2d_54/bias/vAdam/conv2d_55/kernel/vAdam/conv2d_55/bias/v!Adam/conv2d_transpose_11/kernel/vAdam/conv2d_transpose_11/bias/vAdam/conv2d_56/kernel/vAdam/conv2d_56/bias/vAdam/conv2d_57/kernel/vAdam/conv2d_57/bias/vAdam/conv2d_58/kernel/vAdam/conv2d_58/bias/vAdam/conv2d_59/kernel/vAdam/conv2d_59/bias/v*?
Tin?
?2?*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? **
f%R#
!__inference__traced_restore_48205??&
?
?
)__inference_conv2d_50_layer_call_fn_46659

inputs#
unknown:??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????<<?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_50_layer_call_and_return_conditional_losses_43366x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:?????????<<?`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :?????????<<?: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:?????????<<?
 
_user_specified_nameinputs
?
?
D__inference_conv2d_46_layer_call_and_return_conditional_losses_46347

inputs:
conv2d_readvariableop_resource:??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:??*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????<<?*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????<<?Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:?????????<<?j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:?????????<<?w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :?????????<<?: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:?????????<<?
 
_user_specified_nameinputs
?	
?
6__inference_batch_normalization_14_layer_call_fn_46532

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Z
fURS
Q__inference_batch_normalization_14_layer_call_and_return_conditional_losses_42914?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,????????????????????????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
? 
?
N__inference_conv2d_transpose_10_layer_call_and_return_conditional_losses_46827

inputsC
(conv2d_transpose_readvariableop_resource:@?-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?conv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: I
stack/3Const*
_output_shapes
: *
dtype0*
value	B :@y
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*'
_output_shapes
:@?*
dtype0?
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+???????????????????????????@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????@y
IdentityIdentityBiasAdd:output:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????@?
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,????????????????????????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
D__inference_conv2d_56_layer_call_and_return_conditional_losses_43510

inputs8
conv2d_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:??????????? k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:??????????? w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:???????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:???????????@
 
_user_specified_nameinputs
?
?
)__inference_conv2d_42_layer_call_fn_46112

inputs!
unknown: @
	unknown_0:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_42_layer_call_and_return_conditional_losses_43163y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:???????????@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:??????????? : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:??????????? 
 
_user_specified_nameinputs
?
?
)__inference_conv2d_47_layer_call_fn_46356

inputs#
unknown:??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????<<?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_47_layer_call_and_return_conditional_losses_43268x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:?????????<<?`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :?????????<<?: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:?????????<<?
 
_user_specified_nameinputs
?
?
Q__inference_batch_normalization_13_layer_call_and_return_conditional_losses_42838

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,?????????????????????????????
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
? 
?
M__inference_conv2d_transpose_8_layer_call_and_return_conditional_losses_42962

inputsD
(conv2d_transpose_readvariableop_resource:??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?conv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: J
stack/3Const*
_output_shapes
: *
dtype0*
value
B :?y
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*(
_output_shapes
:??*
dtype0?
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*B
_output_shapes0
.:,????????????????????????????*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,????????????????????????????z
IdentityIdentityBiasAdd:output:0^NoOp*
T0*B
_output_shapes0
.:,?????????????????????????????
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,????????????????????????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
? 
?
M__inference_conv2d_transpose_9_layer_call_and_return_conditional_losses_46732

inputsD
(conv2d_transpose_readvariableop_resource:??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?conv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: J
stack/3Const*
_output_shapes
: *
dtype0*
value
B :?y
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*(
_output_shapes
:??*
dtype0?
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*B
_output_shapes0
.:,????????????????????????????*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,????????????????????????????z
IdentityIdentityBiasAdd:output:0^NoOp*
T0*B
_output_shapes0
.:,?????????????????????????????
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,????????????????????????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
g
K__inference_max_pooling2d_10_layer_call_and_return_conditional_losses_46327

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
D__inference_conv2d_53_layer_call_and_return_conditional_losses_43431

inputs:
conv2d_readvariableop_resource:??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:??*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????xx?*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????xx?Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:?????????xx?j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:?????????xx?w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :?????????xx?: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:?????????xx?
 
_user_specified_nameinputs
?
?
)__inference_conv2d_57_layer_call_fn_46964

inputs!
unknown:  
	unknown_0: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:??????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_57_layer_call_and_return_conditional_losses_43527y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:??????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:??????????? : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:??????????? 
 
_user_specified_nameinputs
?
?
D__inference_conv2d_44_layer_call_and_return_conditional_losses_46235

inputs9
conv2d_readvariableop_resource:@?.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????xx?*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????xx?Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:?????????xx?j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:?????????xx?w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????xx@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????xx@
 
_user_specified_nameinputs
?
?
)__inference_conv2d_58_layer_call_fn_46984

inputs!
unknown:  
	unknown_0: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:??????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_58_layer_call_and_return_conditional_losses_43544y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:??????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:??????????? : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:??????????? 
 
_user_specified_nameinputs
?
?
D__inference_conv2d_57_layer_call_and_return_conditional_losses_46975

inputs8
conv2d_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:??????????? k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:??????????? w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:??????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:??????????? 
 
_user_specified_nameinputs
?
K
/__inference_max_pooling2d_8_layer_call_fn_46098

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_42630?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
f
J__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_42706

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
u
I__inference_concatenate_10_layer_call_and_return_conditional_losses_46840
inputs_0
inputs_1
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :?
concatConcatV2inputs_0inputs_1concat/axis:output:0*
N*
T0*2
_output_shapes 
:????????????b
IdentityIdentityconcat:output:0*
T0*2
_output_shapes 
:????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*M
_input_shapes<
::???????????@:???????????@:[ W
1
_output_shapes
:???????????@
"
_user_specified_name
inputs/0:[W
1
_output_shapes
:???????????@
"
_user_specified_name
inputs/1
?
Y
-__inference_concatenate_9_layer_call_fn_46738
inputs_0
inputs_1
identity?
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????xx?* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_concatenate_9_layer_call_and_return_conditional_losses_43401i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:?????????xx?"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:?????????xx?:?????????xx?:Z V
0
_output_shapes
:?????????xx?
"
_user_specified_name
inputs/0:ZV
0
_output_shapes
:?????????xx?
"
_user_specified_name
inputs/1
?
?
D__inference_conv2d_42_layer_call_and_return_conditional_losses_43163

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????@Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:???????????@k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:???????????@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:??????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:??????????? 
 
_user_specified_nameinputs
?
b
D__inference_dropout_4_layer_call_and_return_conditional_losses_46444

inputs

identity_1W
IdentityIdentityinputs*
T0*0
_output_shapes
:?????????<<?d

Identity_1IdentityIdentity:output:0*
T0*0
_output_shapes
:?????????<<?"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????<<?:X T
0
_output_shapes
:?????????<<?
 
_user_specified_nameinputs
??
?U
__inference__traced_save_47616
file_prefix/
+savev2_conv2d_40_kernel_read_readvariableop-
)savev2_conv2d_40_bias_read_readvariableop/
+savev2_conv2d_41_kernel_read_readvariableop-
)savev2_conv2d_41_bias_read_readvariableop;
7savev2_batch_normalization_10_gamma_read_readvariableop:
6savev2_batch_normalization_10_beta_read_readvariableopA
=savev2_batch_normalization_10_moving_mean_read_readvariableopE
Asavev2_batch_normalization_10_moving_variance_read_readvariableop/
+savev2_conv2d_42_kernel_read_readvariableop-
)savev2_conv2d_42_bias_read_readvariableop/
+savev2_conv2d_43_kernel_read_readvariableop-
)savev2_conv2d_43_bias_read_readvariableop;
7savev2_batch_normalization_11_gamma_read_readvariableop:
6savev2_batch_normalization_11_beta_read_readvariableopA
=savev2_batch_normalization_11_moving_mean_read_readvariableopE
Asavev2_batch_normalization_11_moving_variance_read_readvariableop/
+savev2_conv2d_44_kernel_read_readvariableop-
)savev2_conv2d_44_bias_read_readvariableop/
+savev2_conv2d_45_kernel_read_readvariableop-
)savev2_conv2d_45_bias_read_readvariableop;
7savev2_batch_normalization_12_gamma_read_readvariableop:
6savev2_batch_normalization_12_beta_read_readvariableopA
=savev2_batch_normalization_12_moving_mean_read_readvariableopE
Asavev2_batch_normalization_12_moving_variance_read_readvariableop/
+savev2_conv2d_46_kernel_read_readvariableop-
)savev2_conv2d_46_bias_read_readvariableop/
+savev2_conv2d_47_kernel_read_readvariableop-
)savev2_conv2d_47_bias_read_readvariableop;
7savev2_batch_normalization_13_gamma_read_readvariableop:
6savev2_batch_normalization_13_beta_read_readvariableopA
=savev2_batch_normalization_13_moving_mean_read_readvariableopE
Asavev2_batch_normalization_13_moving_variance_read_readvariableop/
+savev2_conv2d_48_kernel_read_readvariableop-
)savev2_conv2d_48_bias_read_readvariableop/
+savev2_conv2d_49_kernel_read_readvariableop-
)savev2_conv2d_49_bias_read_readvariableop;
7savev2_batch_normalization_14_gamma_read_readvariableop:
6savev2_batch_normalization_14_beta_read_readvariableopA
=savev2_batch_normalization_14_moving_mean_read_readvariableopE
Asavev2_batch_normalization_14_moving_variance_read_readvariableop8
4savev2_conv2d_transpose_8_kernel_read_readvariableop6
2savev2_conv2d_transpose_8_bias_read_readvariableop/
+savev2_conv2d_50_kernel_read_readvariableop-
)savev2_conv2d_50_bias_read_readvariableop/
+savev2_conv2d_51_kernel_read_readvariableop-
)savev2_conv2d_51_bias_read_readvariableop8
4savev2_conv2d_transpose_9_kernel_read_readvariableop6
2savev2_conv2d_transpose_9_bias_read_readvariableop/
+savev2_conv2d_52_kernel_read_readvariableop-
)savev2_conv2d_52_bias_read_readvariableop/
+savev2_conv2d_53_kernel_read_readvariableop-
)savev2_conv2d_53_bias_read_readvariableop9
5savev2_conv2d_transpose_10_kernel_read_readvariableop7
3savev2_conv2d_transpose_10_bias_read_readvariableop/
+savev2_conv2d_54_kernel_read_readvariableop-
)savev2_conv2d_54_bias_read_readvariableop/
+savev2_conv2d_55_kernel_read_readvariableop-
)savev2_conv2d_55_bias_read_readvariableop9
5savev2_conv2d_transpose_11_kernel_read_readvariableop7
3savev2_conv2d_transpose_11_bias_read_readvariableop/
+savev2_conv2d_56_kernel_read_readvariableop-
)savev2_conv2d_56_bias_read_readvariableop/
+savev2_conv2d_57_kernel_read_readvariableop-
)savev2_conv2d_57_bias_read_readvariableop/
+savev2_conv2d_58_kernel_read_readvariableop-
)savev2_conv2d_58_bias_read_readvariableop/
+savev2_conv2d_59_kernel_read_readvariableop-
)savev2_conv2d_59_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop6
2savev2_adam_conv2d_40_kernel_m_read_readvariableop4
0savev2_adam_conv2d_40_bias_m_read_readvariableop6
2savev2_adam_conv2d_41_kernel_m_read_readvariableop4
0savev2_adam_conv2d_41_bias_m_read_readvariableopB
>savev2_adam_batch_normalization_10_gamma_m_read_readvariableopA
=savev2_adam_batch_normalization_10_beta_m_read_readvariableop6
2savev2_adam_conv2d_42_kernel_m_read_readvariableop4
0savev2_adam_conv2d_42_bias_m_read_readvariableop6
2savev2_adam_conv2d_43_kernel_m_read_readvariableop4
0savev2_adam_conv2d_43_bias_m_read_readvariableopB
>savev2_adam_batch_normalization_11_gamma_m_read_readvariableopA
=savev2_adam_batch_normalization_11_beta_m_read_readvariableop6
2savev2_adam_conv2d_44_kernel_m_read_readvariableop4
0savev2_adam_conv2d_44_bias_m_read_readvariableop6
2savev2_adam_conv2d_45_kernel_m_read_readvariableop4
0savev2_adam_conv2d_45_bias_m_read_readvariableopB
>savev2_adam_batch_normalization_12_gamma_m_read_readvariableopA
=savev2_adam_batch_normalization_12_beta_m_read_readvariableop6
2savev2_adam_conv2d_46_kernel_m_read_readvariableop4
0savev2_adam_conv2d_46_bias_m_read_readvariableop6
2savev2_adam_conv2d_47_kernel_m_read_readvariableop4
0savev2_adam_conv2d_47_bias_m_read_readvariableopB
>savev2_adam_batch_normalization_13_gamma_m_read_readvariableopA
=savev2_adam_batch_normalization_13_beta_m_read_readvariableop6
2savev2_adam_conv2d_48_kernel_m_read_readvariableop4
0savev2_adam_conv2d_48_bias_m_read_readvariableop6
2savev2_adam_conv2d_49_kernel_m_read_readvariableop4
0savev2_adam_conv2d_49_bias_m_read_readvariableopB
>savev2_adam_batch_normalization_14_gamma_m_read_readvariableopA
=savev2_adam_batch_normalization_14_beta_m_read_readvariableop?
;savev2_adam_conv2d_transpose_8_kernel_m_read_readvariableop=
9savev2_adam_conv2d_transpose_8_bias_m_read_readvariableop6
2savev2_adam_conv2d_50_kernel_m_read_readvariableop4
0savev2_adam_conv2d_50_bias_m_read_readvariableop6
2savev2_adam_conv2d_51_kernel_m_read_readvariableop4
0savev2_adam_conv2d_51_bias_m_read_readvariableop?
;savev2_adam_conv2d_transpose_9_kernel_m_read_readvariableop=
9savev2_adam_conv2d_transpose_9_bias_m_read_readvariableop6
2savev2_adam_conv2d_52_kernel_m_read_readvariableop4
0savev2_adam_conv2d_52_bias_m_read_readvariableop6
2savev2_adam_conv2d_53_kernel_m_read_readvariableop4
0savev2_adam_conv2d_53_bias_m_read_readvariableop@
<savev2_adam_conv2d_transpose_10_kernel_m_read_readvariableop>
:savev2_adam_conv2d_transpose_10_bias_m_read_readvariableop6
2savev2_adam_conv2d_54_kernel_m_read_readvariableop4
0savev2_adam_conv2d_54_bias_m_read_readvariableop6
2savev2_adam_conv2d_55_kernel_m_read_readvariableop4
0savev2_adam_conv2d_55_bias_m_read_readvariableop@
<savev2_adam_conv2d_transpose_11_kernel_m_read_readvariableop>
:savev2_adam_conv2d_transpose_11_bias_m_read_readvariableop6
2savev2_adam_conv2d_56_kernel_m_read_readvariableop4
0savev2_adam_conv2d_56_bias_m_read_readvariableop6
2savev2_adam_conv2d_57_kernel_m_read_readvariableop4
0savev2_adam_conv2d_57_bias_m_read_readvariableop6
2savev2_adam_conv2d_58_kernel_m_read_readvariableop4
0savev2_adam_conv2d_58_bias_m_read_readvariableop6
2savev2_adam_conv2d_59_kernel_m_read_readvariableop4
0savev2_adam_conv2d_59_bias_m_read_readvariableop6
2savev2_adam_conv2d_40_kernel_v_read_readvariableop4
0savev2_adam_conv2d_40_bias_v_read_readvariableop6
2savev2_adam_conv2d_41_kernel_v_read_readvariableop4
0savev2_adam_conv2d_41_bias_v_read_readvariableopB
>savev2_adam_batch_normalization_10_gamma_v_read_readvariableopA
=savev2_adam_batch_normalization_10_beta_v_read_readvariableop6
2savev2_adam_conv2d_42_kernel_v_read_readvariableop4
0savev2_adam_conv2d_42_bias_v_read_readvariableop6
2savev2_adam_conv2d_43_kernel_v_read_readvariableop4
0savev2_adam_conv2d_43_bias_v_read_readvariableopB
>savev2_adam_batch_normalization_11_gamma_v_read_readvariableopA
=savev2_adam_batch_normalization_11_beta_v_read_readvariableop6
2savev2_adam_conv2d_44_kernel_v_read_readvariableop4
0savev2_adam_conv2d_44_bias_v_read_readvariableop6
2savev2_adam_conv2d_45_kernel_v_read_readvariableop4
0savev2_adam_conv2d_45_bias_v_read_readvariableopB
>savev2_adam_batch_normalization_12_gamma_v_read_readvariableopA
=savev2_adam_batch_normalization_12_beta_v_read_readvariableop6
2savev2_adam_conv2d_46_kernel_v_read_readvariableop4
0savev2_adam_conv2d_46_bias_v_read_readvariableop6
2savev2_adam_conv2d_47_kernel_v_read_readvariableop4
0savev2_adam_conv2d_47_bias_v_read_readvariableopB
>savev2_adam_batch_normalization_13_gamma_v_read_readvariableopA
=savev2_adam_batch_normalization_13_beta_v_read_readvariableop6
2savev2_adam_conv2d_48_kernel_v_read_readvariableop4
0savev2_adam_conv2d_48_bias_v_read_readvariableop6
2savev2_adam_conv2d_49_kernel_v_read_readvariableop4
0savev2_adam_conv2d_49_bias_v_read_readvariableopB
>savev2_adam_batch_normalization_14_gamma_v_read_readvariableopA
=savev2_adam_batch_normalization_14_beta_v_read_readvariableop?
;savev2_adam_conv2d_transpose_8_kernel_v_read_readvariableop=
9savev2_adam_conv2d_transpose_8_bias_v_read_readvariableop6
2savev2_adam_conv2d_50_kernel_v_read_readvariableop4
0savev2_adam_conv2d_50_bias_v_read_readvariableop6
2savev2_adam_conv2d_51_kernel_v_read_readvariableop4
0savev2_adam_conv2d_51_bias_v_read_readvariableop?
;savev2_adam_conv2d_transpose_9_kernel_v_read_readvariableop=
9savev2_adam_conv2d_transpose_9_bias_v_read_readvariableop6
2savev2_adam_conv2d_52_kernel_v_read_readvariableop4
0savev2_adam_conv2d_52_bias_v_read_readvariableop6
2savev2_adam_conv2d_53_kernel_v_read_readvariableop4
0savev2_adam_conv2d_53_bias_v_read_readvariableop@
<savev2_adam_conv2d_transpose_10_kernel_v_read_readvariableop>
:savev2_adam_conv2d_transpose_10_bias_v_read_readvariableop6
2savev2_adam_conv2d_54_kernel_v_read_readvariableop4
0savev2_adam_conv2d_54_bias_v_read_readvariableop6
2savev2_adam_conv2d_55_kernel_v_read_readvariableop4
0savev2_adam_conv2d_55_bias_v_read_readvariableop@
<savev2_adam_conv2d_transpose_11_kernel_v_read_readvariableop>
:savev2_adam_conv2d_transpose_11_bias_v_read_readvariableop6
2savev2_adam_conv2d_56_kernel_v_read_readvariableop4
0savev2_adam_conv2d_56_bias_v_read_readvariableop6
2savev2_adam_conv2d_57_kernel_v_read_readvariableop4
0savev2_adam_conv2d_57_bias_v_read_readvariableop6
2savev2_adam_conv2d_58_kernel_v_read_readvariableop4
0savev2_adam_conv2d_58_bias_v_read_readvariableop6
2savev2_adam_conv2d_59_kernel_v_read_readvariableop4
0savev2_adam_conv2d_59_bias_v_read_readvariableop
savev2_const

identity_1??MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : ?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ?n
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes	
:?*
dtype0*?m
value?mB?m?B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-2/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-2/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-2/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-8/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-8/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-8/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-11/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-11/beta/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-11/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-11/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-13/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-13/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-14/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-14/beta/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-14/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-14/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-15/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-15/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-16/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-16/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-17/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-17/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-18/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-18/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-19/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-19/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-20/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-20/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-21/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-21/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-22/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-22/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-23/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-23/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-24/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-24/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-25/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-25/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-26/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-26/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-27/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-27/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-28/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-28/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-2/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-8/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-11/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-11/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-13/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-13/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-14/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-14/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-15/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-15/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-16/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-16/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-17/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-17/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-18/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-18/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-19/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-19/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-20/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-20/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-21/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-21/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-22/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-22/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-23/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-23/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-24/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-24/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-25/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-25/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-26/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-26/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-27/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-27/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-28/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-28/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-2/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-8/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-11/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-11/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-13/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-13/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-14/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-14/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-15/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-15/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-16/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-16/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-17/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-17/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-18/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-18/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-19/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-19/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-20/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-20/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-21/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-21/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-22/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-22/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-23/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-23/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-24/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-24/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-25/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-25/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-26/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-26/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-27/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-27/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-28/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-28/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes	
:?*
dtype0*?
value?B??B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ?Q
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_conv2d_40_kernel_read_readvariableop)savev2_conv2d_40_bias_read_readvariableop+savev2_conv2d_41_kernel_read_readvariableop)savev2_conv2d_41_bias_read_readvariableop7savev2_batch_normalization_10_gamma_read_readvariableop6savev2_batch_normalization_10_beta_read_readvariableop=savev2_batch_normalization_10_moving_mean_read_readvariableopAsavev2_batch_normalization_10_moving_variance_read_readvariableop+savev2_conv2d_42_kernel_read_readvariableop)savev2_conv2d_42_bias_read_readvariableop+savev2_conv2d_43_kernel_read_readvariableop)savev2_conv2d_43_bias_read_readvariableop7savev2_batch_normalization_11_gamma_read_readvariableop6savev2_batch_normalization_11_beta_read_readvariableop=savev2_batch_normalization_11_moving_mean_read_readvariableopAsavev2_batch_normalization_11_moving_variance_read_readvariableop+savev2_conv2d_44_kernel_read_readvariableop)savev2_conv2d_44_bias_read_readvariableop+savev2_conv2d_45_kernel_read_readvariableop)savev2_conv2d_45_bias_read_readvariableop7savev2_batch_normalization_12_gamma_read_readvariableop6savev2_batch_normalization_12_beta_read_readvariableop=savev2_batch_normalization_12_moving_mean_read_readvariableopAsavev2_batch_normalization_12_moving_variance_read_readvariableop+savev2_conv2d_46_kernel_read_readvariableop)savev2_conv2d_46_bias_read_readvariableop+savev2_conv2d_47_kernel_read_readvariableop)savev2_conv2d_47_bias_read_readvariableop7savev2_batch_normalization_13_gamma_read_readvariableop6savev2_batch_normalization_13_beta_read_readvariableop=savev2_batch_normalization_13_moving_mean_read_readvariableopAsavev2_batch_normalization_13_moving_variance_read_readvariableop+savev2_conv2d_48_kernel_read_readvariableop)savev2_conv2d_48_bias_read_readvariableop+savev2_conv2d_49_kernel_read_readvariableop)savev2_conv2d_49_bias_read_readvariableop7savev2_batch_normalization_14_gamma_read_readvariableop6savev2_batch_normalization_14_beta_read_readvariableop=savev2_batch_normalization_14_moving_mean_read_readvariableopAsavev2_batch_normalization_14_moving_variance_read_readvariableop4savev2_conv2d_transpose_8_kernel_read_readvariableop2savev2_conv2d_transpose_8_bias_read_readvariableop+savev2_conv2d_50_kernel_read_readvariableop)savev2_conv2d_50_bias_read_readvariableop+savev2_conv2d_51_kernel_read_readvariableop)savev2_conv2d_51_bias_read_readvariableop4savev2_conv2d_transpose_9_kernel_read_readvariableop2savev2_conv2d_transpose_9_bias_read_readvariableop+savev2_conv2d_52_kernel_read_readvariableop)savev2_conv2d_52_bias_read_readvariableop+savev2_conv2d_53_kernel_read_readvariableop)savev2_conv2d_53_bias_read_readvariableop5savev2_conv2d_transpose_10_kernel_read_readvariableop3savev2_conv2d_transpose_10_bias_read_readvariableop+savev2_conv2d_54_kernel_read_readvariableop)savev2_conv2d_54_bias_read_readvariableop+savev2_conv2d_55_kernel_read_readvariableop)savev2_conv2d_55_bias_read_readvariableop5savev2_conv2d_transpose_11_kernel_read_readvariableop3savev2_conv2d_transpose_11_bias_read_readvariableop+savev2_conv2d_56_kernel_read_readvariableop)savev2_conv2d_56_bias_read_readvariableop+savev2_conv2d_57_kernel_read_readvariableop)savev2_conv2d_57_bias_read_readvariableop+savev2_conv2d_58_kernel_read_readvariableop)savev2_conv2d_58_bias_read_readvariableop+savev2_conv2d_59_kernel_read_readvariableop)savev2_conv2d_59_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop2savev2_adam_conv2d_40_kernel_m_read_readvariableop0savev2_adam_conv2d_40_bias_m_read_readvariableop2savev2_adam_conv2d_41_kernel_m_read_readvariableop0savev2_adam_conv2d_41_bias_m_read_readvariableop>savev2_adam_batch_normalization_10_gamma_m_read_readvariableop=savev2_adam_batch_normalization_10_beta_m_read_readvariableop2savev2_adam_conv2d_42_kernel_m_read_readvariableop0savev2_adam_conv2d_42_bias_m_read_readvariableop2savev2_adam_conv2d_43_kernel_m_read_readvariableop0savev2_adam_conv2d_43_bias_m_read_readvariableop>savev2_adam_batch_normalization_11_gamma_m_read_readvariableop=savev2_adam_batch_normalization_11_beta_m_read_readvariableop2savev2_adam_conv2d_44_kernel_m_read_readvariableop0savev2_adam_conv2d_44_bias_m_read_readvariableop2savev2_adam_conv2d_45_kernel_m_read_readvariableop0savev2_adam_conv2d_45_bias_m_read_readvariableop>savev2_adam_batch_normalization_12_gamma_m_read_readvariableop=savev2_adam_batch_normalization_12_beta_m_read_readvariableop2savev2_adam_conv2d_46_kernel_m_read_readvariableop0savev2_adam_conv2d_46_bias_m_read_readvariableop2savev2_adam_conv2d_47_kernel_m_read_readvariableop0savev2_adam_conv2d_47_bias_m_read_readvariableop>savev2_adam_batch_normalization_13_gamma_m_read_readvariableop=savev2_adam_batch_normalization_13_beta_m_read_readvariableop2savev2_adam_conv2d_48_kernel_m_read_readvariableop0savev2_adam_conv2d_48_bias_m_read_readvariableop2savev2_adam_conv2d_49_kernel_m_read_readvariableop0savev2_adam_conv2d_49_bias_m_read_readvariableop>savev2_adam_batch_normalization_14_gamma_m_read_readvariableop=savev2_adam_batch_normalization_14_beta_m_read_readvariableop;savev2_adam_conv2d_transpose_8_kernel_m_read_readvariableop9savev2_adam_conv2d_transpose_8_bias_m_read_readvariableop2savev2_adam_conv2d_50_kernel_m_read_readvariableop0savev2_adam_conv2d_50_bias_m_read_readvariableop2savev2_adam_conv2d_51_kernel_m_read_readvariableop0savev2_adam_conv2d_51_bias_m_read_readvariableop;savev2_adam_conv2d_transpose_9_kernel_m_read_readvariableop9savev2_adam_conv2d_transpose_9_bias_m_read_readvariableop2savev2_adam_conv2d_52_kernel_m_read_readvariableop0savev2_adam_conv2d_52_bias_m_read_readvariableop2savev2_adam_conv2d_53_kernel_m_read_readvariableop0savev2_adam_conv2d_53_bias_m_read_readvariableop<savev2_adam_conv2d_transpose_10_kernel_m_read_readvariableop:savev2_adam_conv2d_transpose_10_bias_m_read_readvariableop2savev2_adam_conv2d_54_kernel_m_read_readvariableop0savev2_adam_conv2d_54_bias_m_read_readvariableop2savev2_adam_conv2d_55_kernel_m_read_readvariableop0savev2_adam_conv2d_55_bias_m_read_readvariableop<savev2_adam_conv2d_transpose_11_kernel_m_read_readvariableop:savev2_adam_conv2d_transpose_11_bias_m_read_readvariableop2savev2_adam_conv2d_56_kernel_m_read_readvariableop0savev2_adam_conv2d_56_bias_m_read_readvariableop2savev2_adam_conv2d_57_kernel_m_read_readvariableop0savev2_adam_conv2d_57_bias_m_read_readvariableop2savev2_adam_conv2d_58_kernel_m_read_readvariableop0savev2_adam_conv2d_58_bias_m_read_readvariableop2savev2_adam_conv2d_59_kernel_m_read_readvariableop0savev2_adam_conv2d_59_bias_m_read_readvariableop2savev2_adam_conv2d_40_kernel_v_read_readvariableop0savev2_adam_conv2d_40_bias_v_read_readvariableop2savev2_adam_conv2d_41_kernel_v_read_readvariableop0savev2_adam_conv2d_41_bias_v_read_readvariableop>savev2_adam_batch_normalization_10_gamma_v_read_readvariableop=savev2_adam_batch_normalization_10_beta_v_read_readvariableop2savev2_adam_conv2d_42_kernel_v_read_readvariableop0savev2_adam_conv2d_42_bias_v_read_readvariableop2savev2_adam_conv2d_43_kernel_v_read_readvariableop0savev2_adam_conv2d_43_bias_v_read_readvariableop>savev2_adam_batch_normalization_11_gamma_v_read_readvariableop=savev2_adam_batch_normalization_11_beta_v_read_readvariableop2savev2_adam_conv2d_44_kernel_v_read_readvariableop0savev2_adam_conv2d_44_bias_v_read_readvariableop2savev2_adam_conv2d_45_kernel_v_read_readvariableop0savev2_adam_conv2d_45_bias_v_read_readvariableop>savev2_adam_batch_normalization_12_gamma_v_read_readvariableop=savev2_adam_batch_normalization_12_beta_v_read_readvariableop2savev2_adam_conv2d_46_kernel_v_read_readvariableop0savev2_adam_conv2d_46_bias_v_read_readvariableop2savev2_adam_conv2d_47_kernel_v_read_readvariableop0savev2_adam_conv2d_47_bias_v_read_readvariableop>savev2_adam_batch_normalization_13_gamma_v_read_readvariableop=savev2_adam_batch_normalization_13_beta_v_read_readvariableop2savev2_adam_conv2d_48_kernel_v_read_readvariableop0savev2_adam_conv2d_48_bias_v_read_readvariableop2savev2_adam_conv2d_49_kernel_v_read_readvariableop0savev2_adam_conv2d_49_bias_v_read_readvariableop>savev2_adam_batch_normalization_14_gamma_v_read_readvariableop=savev2_adam_batch_normalization_14_beta_v_read_readvariableop;savev2_adam_conv2d_transpose_8_kernel_v_read_readvariableop9savev2_adam_conv2d_transpose_8_bias_v_read_readvariableop2savev2_adam_conv2d_50_kernel_v_read_readvariableop0savev2_adam_conv2d_50_bias_v_read_readvariableop2savev2_adam_conv2d_51_kernel_v_read_readvariableop0savev2_adam_conv2d_51_bias_v_read_readvariableop;savev2_adam_conv2d_transpose_9_kernel_v_read_readvariableop9savev2_adam_conv2d_transpose_9_bias_v_read_readvariableop2savev2_adam_conv2d_52_kernel_v_read_readvariableop0savev2_adam_conv2d_52_bias_v_read_readvariableop2savev2_adam_conv2d_53_kernel_v_read_readvariableop0savev2_adam_conv2d_53_bias_v_read_readvariableop<savev2_adam_conv2d_transpose_10_kernel_v_read_readvariableop:savev2_adam_conv2d_transpose_10_bias_v_read_readvariableop2savev2_adam_conv2d_54_kernel_v_read_readvariableop0savev2_adam_conv2d_54_bias_v_read_readvariableop2savev2_adam_conv2d_55_kernel_v_read_readvariableop0savev2_adam_conv2d_55_bias_v_read_readvariableop<savev2_adam_conv2d_transpose_11_kernel_v_read_readvariableop:savev2_adam_conv2d_transpose_11_bias_v_read_readvariableop2savev2_adam_conv2d_56_kernel_v_read_readvariableop0savev2_adam_conv2d_56_bias_v_read_readvariableop2savev2_adam_conv2d_57_kernel_v_read_readvariableop0savev2_adam_conv2d_57_bias_v_read_readvariableop2savev2_adam_conv2d_58_kernel_v_read_readvariableop0savev2_adam_conv2d_58_bias_v_read_readvariableop2savev2_adam_conv2d_59_kernel_v_read_readvariableop0savev2_adam_conv2d_59_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *?
dtypes?
?2?	?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*?
_input_shapes?
?: : : :  : : : : : : @:@:@@:@:@:@:@:@:@?:?:??:?:?:?:?:?:??:?:??:?:?:?:?:?:??:?:??:?:?:?:?:?:??:?:??:?:??:?:??:?:??:?:??:?:@?:@:?@:@:@@:@: @: :@ : :  : :  : : :: : : : : : : : : : : :  : : : : @:@:@@:@:@:@:@?:?:??:?:?:?:??:?:??:?:?:?:??:?:??:?:?:?:??:?:??:?:??:?:??:?:??:?:??:?:@?:@:?@:@:@@:@: @: :@ : :  : :  : : :: : :  : : : : @:@:@@:@:@:@:@?:?:??:?:?:?:??:?:??:?:?:?:??:?:??:?:?:?:??:?:??:?:??:?:??:?:??:?:??:?:@?:@:?@:@:@@:@: @: :@ : :  : :  : : :: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
:  : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: :,	(
&
_output_shapes
: @: 


_output_shapes
:@:,(
&
_output_shapes
:@@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@:-)
'
_output_shapes
:@?:!

_output_shapes	
:?:.*
(
_output_shapes
:??:!

_output_shapes	
:?:!

_output_shapes	
:?:!

_output_shapes	
:?:!

_output_shapes	
:?:!

_output_shapes	
:?:.*
(
_output_shapes
:??:!

_output_shapes	
:?:.*
(
_output_shapes
:??:!

_output_shapes	
:?:!

_output_shapes	
:?:!

_output_shapes	
:?:!

_output_shapes	
:?:! 

_output_shapes	
:?:.!*
(
_output_shapes
:??:!"

_output_shapes	
:?:.#*
(
_output_shapes
:??:!$

_output_shapes	
:?:!%

_output_shapes	
:?:!&

_output_shapes	
:?:!'

_output_shapes	
:?:!(

_output_shapes	
:?:.)*
(
_output_shapes
:??:!*

_output_shapes	
:?:.+*
(
_output_shapes
:??:!,

_output_shapes	
:?:.-*
(
_output_shapes
:??:!.

_output_shapes	
:?:./*
(
_output_shapes
:??:!0

_output_shapes	
:?:.1*
(
_output_shapes
:??:!2

_output_shapes	
:?:.3*
(
_output_shapes
:??:!4

_output_shapes	
:?:-5)
'
_output_shapes
:@?: 6

_output_shapes
:@:-7)
'
_output_shapes
:?@: 8

_output_shapes
:@:,9(
&
_output_shapes
:@@: :

_output_shapes
:@:,;(
&
_output_shapes
: @: <

_output_shapes
: :,=(
&
_output_shapes
:@ : >

_output_shapes
: :,?(
&
_output_shapes
:  : @

_output_shapes
: :,A(
&
_output_shapes
:  : B

_output_shapes
: :,C(
&
_output_shapes
: : D

_output_shapes
::E

_output_shapes
: :F

_output_shapes
: :G

_output_shapes
: :H

_output_shapes
: :I

_output_shapes
: :J

_output_shapes
: :K

_output_shapes
: :L

_output_shapes
: :M

_output_shapes
: :,N(
&
_output_shapes
: : O

_output_shapes
: :,P(
&
_output_shapes
:  : Q

_output_shapes
: : R

_output_shapes
: : S

_output_shapes
: :,T(
&
_output_shapes
: @: U

_output_shapes
:@:,V(
&
_output_shapes
:@@: W

_output_shapes
:@: X

_output_shapes
:@: Y

_output_shapes
:@:-Z)
'
_output_shapes
:@?:![

_output_shapes	
:?:.\*
(
_output_shapes
:??:!]

_output_shapes	
:?:!^

_output_shapes	
:?:!_

_output_shapes	
:?:.`*
(
_output_shapes
:??:!a

_output_shapes	
:?:.b*
(
_output_shapes
:??:!c

_output_shapes	
:?:!d

_output_shapes	
:?:!e

_output_shapes	
:?:.f*
(
_output_shapes
:??:!g

_output_shapes	
:?:.h*
(
_output_shapes
:??:!i

_output_shapes	
:?:!j

_output_shapes	
:?:!k

_output_shapes	
:?:.l*
(
_output_shapes
:??:!m

_output_shapes	
:?:.n*
(
_output_shapes
:??:!o

_output_shapes	
:?:.p*
(
_output_shapes
:??:!q

_output_shapes	
:?:.r*
(
_output_shapes
:??:!s

_output_shapes	
:?:.t*
(
_output_shapes
:??:!u

_output_shapes	
:?:.v*
(
_output_shapes
:??:!w

_output_shapes	
:?:-x)
'
_output_shapes
:@?: y

_output_shapes
:@:-z)
'
_output_shapes
:?@: {

_output_shapes
:@:,|(
&
_output_shapes
:@@: }

_output_shapes
:@:,~(
&
_output_shapes
: @: 

_output_shapes
: :-?(
&
_output_shapes
:@ :!?

_output_shapes
: :-?(
&
_output_shapes
:  :!?

_output_shapes
: :-?(
&
_output_shapes
:  :!?

_output_shapes
: :-?(
&
_output_shapes
: :!?

_output_shapes
::-?(
&
_output_shapes
: :!?

_output_shapes
: :-?(
&
_output_shapes
:  :!?

_output_shapes
: :!?

_output_shapes
: :!?

_output_shapes
: :-?(
&
_output_shapes
: @:!?

_output_shapes
:@:-?(
&
_output_shapes
:@@:!?

_output_shapes
:@:!?

_output_shapes
:@:!?

_output_shapes
:@:.?)
'
_output_shapes
:@?:"?

_output_shapes	
:?:/?*
(
_output_shapes
:??:"?

_output_shapes	
:?:"?

_output_shapes	
:?:"?

_output_shapes	
:?:/?*
(
_output_shapes
:??:"?

_output_shapes	
:?:/?*
(
_output_shapes
:??:"?

_output_shapes	
:?:"?

_output_shapes	
:?:"?

_output_shapes	
:?:/?*
(
_output_shapes
:??:"?

_output_shapes	
:?:/?*
(
_output_shapes
:??:"?

_output_shapes	
:?:"?

_output_shapes	
:?:"?

_output_shapes	
:?:/?*
(
_output_shapes
:??:"?

_output_shapes	
:?:/?*
(
_output_shapes
:??:"?

_output_shapes	
:?:/?*
(
_output_shapes
:??:"?

_output_shapes	
:?:/?*
(
_output_shapes
:??:"?

_output_shapes	
:?:/?*
(
_output_shapes
:??:"?

_output_shapes	
:?:/?*
(
_output_shapes
:??:"?

_output_shapes	
:?:.?)
'
_output_shapes
:@?:!?

_output_shapes
:@:.?)
'
_output_shapes
:?@:!?

_output_shapes
:@:-?(
&
_output_shapes
:@@:!?

_output_shapes
:@:-?(
&
_output_shapes
: @:!?

_output_shapes
: :-?(
&
_output_shapes
:@ :!?

_output_shapes
: :-?(
&
_output_shapes
:  :!?

_output_shapes
: :-?(
&
_output_shapes
:  :!?

_output_shapes
: :-?(
&
_output_shapes
: :!?

_output_shapes
::?

_output_shapes
: 
?
?
D__inference_conv2d_48_layer_call_and_return_conditional_losses_43302

inputs:
conv2d_readvariableop_resource:??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:??*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:??????????j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:??????????w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
Q__inference_batch_normalization_12_layer_call_and_return_conditional_losses_46317

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,?????????????????????????????
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?	
?
6__inference_batch_normalization_14_layer_call_fn_46519

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Z
fURS
Q__inference_batch_normalization_14_layer_call_and_return_conditional_losses_42883?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,????????????????????????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?	
?
6__inference_batch_normalization_13_layer_call_fn_46393

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Z
fURS
Q__inference_batch_normalization_13_layer_call_and_return_conditional_losses_42838?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,????????????????????????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
)__inference_conv2d_41_layer_call_fn_46020

inputs!
unknown:  
	unknown_0: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:??????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_41_layer_call_and_return_conditional_losses_43136y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:??????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:??????????? : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:??????????? 
 
_user_specified_nameinputs
??
?
B__inference_model_2_layer_call_and_return_conditional_losses_44761
input_3)
conv2d_40_44585: 
conv2d_40_44587: )
conv2d_41_44590:  
conv2d_41_44592: *
batch_normalization_10_44595: *
batch_normalization_10_44597: *
batch_normalization_10_44599: *
batch_normalization_10_44601: )
conv2d_42_44605: @
conv2d_42_44607:@)
conv2d_43_44610:@@
conv2d_43_44612:@*
batch_normalization_11_44615:@*
batch_normalization_11_44617:@*
batch_normalization_11_44619:@*
batch_normalization_11_44621:@*
conv2d_44_44625:@?
conv2d_44_44627:	?+
conv2d_45_44630:??
conv2d_45_44632:	?+
batch_normalization_12_44635:	?+
batch_normalization_12_44637:	?+
batch_normalization_12_44639:	?+
batch_normalization_12_44641:	?+
conv2d_46_44645:??
conv2d_46_44647:	?+
conv2d_47_44650:??
conv2d_47_44652:	?+
batch_normalization_13_44655:	?+
batch_normalization_13_44657:	?+
batch_normalization_13_44659:	?+
batch_normalization_13_44661:	?+
conv2d_48_44666:??
conv2d_48_44668:	?+
conv2d_49_44671:??
conv2d_49_44673:	?+
batch_normalization_14_44676:	?+
batch_normalization_14_44678:	?+
batch_normalization_14_44680:	?+
batch_normalization_14_44682:	?4
conv2d_transpose_8_44686:??'
conv2d_transpose_8_44688:	?+
conv2d_50_44692:??
conv2d_50_44694:	?+
conv2d_51_44697:??
conv2d_51_44699:	?4
conv2d_transpose_9_44702:??'
conv2d_transpose_9_44704:	?+
conv2d_52_44708:??
conv2d_52_44710:	?+
conv2d_53_44713:??
conv2d_53_44715:	?4
conv2d_transpose_10_44718:@?'
conv2d_transpose_10_44720:@*
conv2d_54_44724:?@
conv2d_54_44726:@)
conv2d_55_44729:@@
conv2d_55_44731:@3
conv2d_transpose_11_44734: @'
conv2d_transpose_11_44736: )
conv2d_56_44740:@ 
conv2d_56_44742: )
conv2d_57_44745:  
conv2d_57_44747: )
conv2d_58_44750:  
conv2d_58_44752: )
conv2d_59_44755: 
conv2d_59_44757:
identity??.batch_normalization_10/StatefulPartitionedCall?.batch_normalization_11/StatefulPartitionedCall?.batch_normalization_12/StatefulPartitionedCall?.batch_normalization_13/StatefulPartitionedCall?.batch_normalization_14/StatefulPartitionedCall?!conv2d_40/StatefulPartitionedCall?!conv2d_41/StatefulPartitionedCall?!conv2d_42/StatefulPartitionedCall?!conv2d_43/StatefulPartitionedCall?!conv2d_44/StatefulPartitionedCall?!conv2d_45/StatefulPartitionedCall?!conv2d_46/StatefulPartitionedCall?!conv2d_47/StatefulPartitionedCall?!conv2d_48/StatefulPartitionedCall?!conv2d_49/StatefulPartitionedCall?!conv2d_50/StatefulPartitionedCall?!conv2d_51/StatefulPartitionedCall?!conv2d_52/StatefulPartitionedCall?!conv2d_53/StatefulPartitionedCall?!conv2d_54/StatefulPartitionedCall?!conv2d_55/StatefulPartitionedCall?!conv2d_56/StatefulPartitionedCall?!conv2d_57/StatefulPartitionedCall?!conv2d_58/StatefulPartitionedCall?!conv2d_59/StatefulPartitionedCall?+conv2d_transpose_10/StatefulPartitionedCall?+conv2d_transpose_11/StatefulPartitionedCall?*conv2d_transpose_8/StatefulPartitionedCall?*conv2d_transpose_9/StatefulPartitionedCall?
!conv2d_40/StatefulPartitionedCallStatefulPartitionedCallinput_3conv2d_40_44585conv2d_40_44587*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:??????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_40_layer_call_and_return_conditional_losses_43119?
!conv2d_41/StatefulPartitionedCallStatefulPartitionedCall*conv2d_40/StatefulPartitionedCall:output:0conv2d_41_44590conv2d_41_44592*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:??????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_41_layer_call_and_return_conditional_losses_43136?
.batch_normalization_10/StatefulPartitionedCallStatefulPartitionedCall*conv2d_41/StatefulPartitionedCall:output:0batch_normalization_10_44595batch_normalization_10_44597batch_normalization_10_44599batch_normalization_10_44601*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:??????????? *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Z
fURS
Q__inference_batch_normalization_10_layer_call_and_return_conditional_losses_42579?
max_pooling2d_8/PartitionedCallPartitionedCall7batch_normalization_10/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:??????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_42630?
!conv2d_42/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_8/PartitionedCall:output:0conv2d_42_44605conv2d_42_44607*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_42_layer_call_and_return_conditional_losses_43163?
!conv2d_43/StatefulPartitionedCallStatefulPartitionedCall*conv2d_42/StatefulPartitionedCall:output:0conv2d_43_44610conv2d_43_44612*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_43_layer_call_and_return_conditional_losses_43180?
.batch_normalization_11/StatefulPartitionedCallStatefulPartitionedCall*conv2d_43/StatefulPartitionedCall:output:0batch_normalization_11_44615batch_normalization_11_44617batch_normalization_11_44619batch_normalization_11_44621*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Z
fURS
Q__inference_batch_normalization_11_layer_call_and_return_conditional_losses_42655?
max_pooling2d_9/PartitionedCallPartitionedCall7batch_normalization_11/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????xx@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_42706?
!conv2d_44/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_9/PartitionedCall:output:0conv2d_44_44625conv2d_44_44627*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????xx?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_44_layer_call_and_return_conditional_losses_43207?
!conv2d_45/StatefulPartitionedCallStatefulPartitionedCall*conv2d_44/StatefulPartitionedCall:output:0conv2d_45_44630conv2d_45_44632*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????xx?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_45_layer_call_and_return_conditional_losses_43224?
.batch_normalization_12/StatefulPartitionedCallStatefulPartitionedCall*conv2d_45/StatefulPartitionedCall:output:0batch_normalization_12_44635batch_normalization_12_44637batch_normalization_12_44639batch_normalization_12_44641*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????xx?*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Z
fURS
Q__inference_batch_normalization_12_layer_call_and_return_conditional_losses_42731?
 max_pooling2d_10/PartitionedCallPartitionedCall7batch_normalization_12/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????<<?* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_max_pooling2d_10_layer_call_and_return_conditional_losses_42782?
!conv2d_46/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_10/PartitionedCall:output:0conv2d_46_44645conv2d_46_44647*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????<<?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_46_layer_call_and_return_conditional_losses_43251?
!conv2d_47/StatefulPartitionedCallStatefulPartitionedCall*conv2d_46/StatefulPartitionedCall:output:0conv2d_47_44650conv2d_47_44652*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????<<?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_47_layer_call_and_return_conditional_losses_43268?
.batch_normalization_13/StatefulPartitionedCallStatefulPartitionedCall*conv2d_47/StatefulPartitionedCall:output:0batch_normalization_13_44655batch_normalization_13_44657batch_normalization_13_44659batch_normalization_13_44661*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????<<?*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Z
fURS
Q__inference_batch_normalization_13_layer_call_and_return_conditional_losses_42807?
dropout_4/PartitionedCallPartitionedCall7batch_normalization_13/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????<<?* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dropout_4_layer_call_and_return_conditional_losses_43288?
 max_pooling2d_11/PartitionedCallPartitionedCall"dropout_4/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_max_pooling2d_11_layer_call_and_return_conditional_losses_42858?
!conv2d_48/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_11/PartitionedCall:output:0conv2d_48_44666conv2d_48_44668*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_48_layer_call_and_return_conditional_losses_43302?
!conv2d_49/StatefulPartitionedCallStatefulPartitionedCall*conv2d_48/StatefulPartitionedCall:output:0conv2d_49_44671conv2d_49_44673*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_49_layer_call_and_return_conditional_losses_43319?
.batch_normalization_14/StatefulPartitionedCallStatefulPartitionedCall*conv2d_49/StatefulPartitionedCall:output:0batch_normalization_14_44676batch_normalization_14_44678batch_normalization_14_44680batch_normalization_14_44682*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Z
fURS
Q__inference_batch_normalization_14_layer_call_and_return_conditional_losses_42883?
dropout_5/PartitionedCallPartitionedCall7batch_normalization_14/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dropout_5_layer_call_and_return_conditional_losses_43339?
*conv2d_transpose_8/StatefulPartitionedCallStatefulPartitionedCall"dropout_5/PartitionedCall:output:0conv2d_transpose_8_44686conv2d_transpose_8_44688*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????<<?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_conv2d_transpose_8_layer_call_and_return_conditional_losses_42962?
concatenate_8/PartitionedCallPartitionedCall3conv2d_transpose_8/StatefulPartitionedCall:output:0"dropout_4/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????<<?* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_concatenate_8_layer_call_and_return_conditional_losses_43353?
!conv2d_50/StatefulPartitionedCallStatefulPartitionedCall&concatenate_8/PartitionedCall:output:0conv2d_50_44692conv2d_50_44694*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????<<?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_50_layer_call_and_return_conditional_losses_43366?
!conv2d_51/StatefulPartitionedCallStatefulPartitionedCall*conv2d_50/StatefulPartitionedCall:output:0conv2d_51_44697conv2d_51_44699*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????<<?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_51_layer_call_and_return_conditional_losses_43383?
*conv2d_transpose_9/StatefulPartitionedCallStatefulPartitionedCall*conv2d_51/StatefulPartitionedCall:output:0conv2d_transpose_9_44702conv2d_transpose_9_44704*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????xx?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_conv2d_transpose_9_layer_call_and_return_conditional_losses_43006?
concatenate_9/PartitionedCallPartitionedCall3conv2d_transpose_9/StatefulPartitionedCall:output:07batch_normalization_12/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????xx?* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_concatenate_9_layer_call_and_return_conditional_losses_43401?
!conv2d_52/StatefulPartitionedCallStatefulPartitionedCall&concatenate_9/PartitionedCall:output:0conv2d_52_44708conv2d_52_44710*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????xx?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_52_layer_call_and_return_conditional_losses_43414?
!conv2d_53/StatefulPartitionedCallStatefulPartitionedCall*conv2d_52/StatefulPartitionedCall:output:0conv2d_53_44713conv2d_53_44715*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????xx?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_53_layer_call_and_return_conditional_losses_43431?
+conv2d_transpose_10/StatefulPartitionedCallStatefulPartitionedCall*conv2d_53/StatefulPartitionedCall:output:0conv2d_transpose_10_44718conv2d_transpose_10_44720*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_conv2d_transpose_10_layer_call_and_return_conditional_losses_43050?
concatenate_10/PartitionedCallPartitionedCall4conv2d_transpose_10/StatefulPartitionedCall:output:07batch_normalization_11/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_concatenate_10_layer_call_and_return_conditional_losses_43449?
!conv2d_54/StatefulPartitionedCallStatefulPartitionedCall'concatenate_10/PartitionedCall:output:0conv2d_54_44724conv2d_54_44726*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_54_layer_call_and_return_conditional_losses_43462?
!conv2d_55/StatefulPartitionedCallStatefulPartitionedCall*conv2d_54/StatefulPartitionedCall:output:0conv2d_55_44729conv2d_55_44731*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_55_layer_call_and_return_conditional_losses_43479?
+conv2d_transpose_11/StatefulPartitionedCallStatefulPartitionedCall*conv2d_55/StatefulPartitionedCall:output:0conv2d_transpose_11_44734conv2d_transpose_11_44736*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:??????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_conv2d_transpose_11_layer_call_and_return_conditional_losses_43094?
concatenate_11/PartitionedCallPartitionedCall4conv2d_transpose_11/StatefulPartitionedCall:output:07batch_normalization_10/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_concatenate_11_layer_call_and_return_conditional_losses_43497?
!conv2d_56/StatefulPartitionedCallStatefulPartitionedCall'concatenate_11/PartitionedCall:output:0conv2d_56_44740conv2d_56_44742*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:??????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_56_layer_call_and_return_conditional_losses_43510?
!conv2d_57/StatefulPartitionedCallStatefulPartitionedCall*conv2d_56/StatefulPartitionedCall:output:0conv2d_57_44745conv2d_57_44747*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:??????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_57_layer_call_and_return_conditional_losses_43527?
!conv2d_58/StatefulPartitionedCallStatefulPartitionedCall*conv2d_57/StatefulPartitionedCall:output:0conv2d_58_44750conv2d_58_44752*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:??????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_58_layer_call_and_return_conditional_losses_43544?
!conv2d_59/StatefulPartitionedCallStatefulPartitionedCall*conv2d_58/StatefulPartitionedCall:output:0conv2d_59_44755conv2d_59_44757*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_59_layer_call_and_return_conditional_losses_43560?
IdentityIdentity*conv2d_59/StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:????????????	
NoOpNoOp/^batch_normalization_10/StatefulPartitionedCall/^batch_normalization_11/StatefulPartitionedCall/^batch_normalization_12/StatefulPartitionedCall/^batch_normalization_13/StatefulPartitionedCall/^batch_normalization_14/StatefulPartitionedCall"^conv2d_40/StatefulPartitionedCall"^conv2d_41/StatefulPartitionedCall"^conv2d_42/StatefulPartitionedCall"^conv2d_43/StatefulPartitionedCall"^conv2d_44/StatefulPartitionedCall"^conv2d_45/StatefulPartitionedCall"^conv2d_46/StatefulPartitionedCall"^conv2d_47/StatefulPartitionedCall"^conv2d_48/StatefulPartitionedCall"^conv2d_49/StatefulPartitionedCall"^conv2d_50/StatefulPartitionedCall"^conv2d_51/StatefulPartitionedCall"^conv2d_52/StatefulPartitionedCall"^conv2d_53/StatefulPartitionedCall"^conv2d_54/StatefulPartitionedCall"^conv2d_55/StatefulPartitionedCall"^conv2d_56/StatefulPartitionedCall"^conv2d_57/StatefulPartitionedCall"^conv2d_58/StatefulPartitionedCall"^conv2d_59/StatefulPartitionedCall,^conv2d_transpose_10/StatefulPartitionedCall,^conv2d_transpose_11/StatefulPartitionedCall+^conv2d_transpose_8/StatefulPartitionedCall+^conv2d_transpose_9/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:???????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_10/StatefulPartitionedCall.batch_normalization_10/StatefulPartitionedCall2`
.batch_normalization_11/StatefulPartitionedCall.batch_normalization_11/StatefulPartitionedCall2`
.batch_normalization_12/StatefulPartitionedCall.batch_normalization_12/StatefulPartitionedCall2`
.batch_normalization_13/StatefulPartitionedCall.batch_normalization_13/StatefulPartitionedCall2`
.batch_normalization_14/StatefulPartitionedCall.batch_normalization_14/StatefulPartitionedCall2F
!conv2d_40/StatefulPartitionedCall!conv2d_40/StatefulPartitionedCall2F
!conv2d_41/StatefulPartitionedCall!conv2d_41/StatefulPartitionedCall2F
!conv2d_42/StatefulPartitionedCall!conv2d_42/StatefulPartitionedCall2F
!conv2d_43/StatefulPartitionedCall!conv2d_43/StatefulPartitionedCall2F
!conv2d_44/StatefulPartitionedCall!conv2d_44/StatefulPartitionedCall2F
!conv2d_45/StatefulPartitionedCall!conv2d_45/StatefulPartitionedCall2F
!conv2d_46/StatefulPartitionedCall!conv2d_46/StatefulPartitionedCall2F
!conv2d_47/StatefulPartitionedCall!conv2d_47/StatefulPartitionedCall2F
!conv2d_48/StatefulPartitionedCall!conv2d_48/StatefulPartitionedCall2F
!conv2d_49/StatefulPartitionedCall!conv2d_49/StatefulPartitionedCall2F
!conv2d_50/StatefulPartitionedCall!conv2d_50/StatefulPartitionedCall2F
!conv2d_51/StatefulPartitionedCall!conv2d_51/StatefulPartitionedCall2F
!conv2d_52/StatefulPartitionedCall!conv2d_52/StatefulPartitionedCall2F
!conv2d_53/StatefulPartitionedCall!conv2d_53/StatefulPartitionedCall2F
!conv2d_54/StatefulPartitionedCall!conv2d_54/StatefulPartitionedCall2F
!conv2d_55/StatefulPartitionedCall!conv2d_55/StatefulPartitionedCall2F
!conv2d_56/StatefulPartitionedCall!conv2d_56/StatefulPartitionedCall2F
!conv2d_57/StatefulPartitionedCall!conv2d_57/StatefulPartitionedCall2F
!conv2d_58/StatefulPartitionedCall!conv2d_58/StatefulPartitionedCall2F
!conv2d_59/StatefulPartitionedCall!conv2d_59/StatefulPartitionedCall2Z
+conv2d_transpose_10/StatefulPartitionedCall+conv2d_transpose_10/StatefulPartitionedCall2Z
+conv2d_transpose_11/StatefulPartitionedCall+conv2d_transpose_11/StatefulPartitionedCall2X
*conv2d_transpose_8/StatefulPartitionedCall*conv2d_transpose_8/StatefulPartitionedCall2X
*conv2d_transpose_9/StatefulPartitionedCall*conv2d_transpose_9/StatefulPartitionedCall:Z V
1
_output_shapes
:???????????
!
_user_specified_name	input_3
? 
?
N__inference_conv2d_transpose_10_layer_call_and_return_conditional_losses_43050

inputsC
(conv2d_transpose_readvariableop_resource:@?-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?conv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: I
stack/3Const*
_output_shapes
: *
dtype0*
value	B :@y
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*'
_output_shapes
:@?*
dtype0?
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+???????????????????????????@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????@y
IdentityIdentityBiasAdd:output:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????@?
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,????????????????????????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
D__inference_conv2d_51_layer_call_and_return_conditional_losses_43383

inputs:
conv2d_readvariableop_resource:??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:??*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????<<?*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????<<?Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:?????????<<?j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:?????????<<?w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :?????????<<?: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:?????????<<?
 
_user_specified_nameinputs
?
?
D__inference_conv2d_56_layer_call_and_return_conditional_losses_46955

inputs8
conv2d_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:??????????? k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:??????????? w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:???????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:???????????@
 
_user_specified_nameinputs
?
?
D__inference_conv2d_57_layer_call_and_return_conditional_losses_43527

inputs8
conv2d_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:??????????? k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:??????????? w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:??????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:??????????? 
 
_user_specified_nameinputs
?
b
D__inference_dropout_4_layer_call_and_return_conditional_losses_43288

inputs

identity_1W
IdentityIdentityinputs*
T0*0
_output_shapes
:?????????<<?d

Identity_1IdentityIdentity:output:0*
T0*0
_output_shapes
:?????????<<?"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????<<?:X T
0
_output_shapes
:?????????<<?
 
_user_specified_nameinputs
?
?
Q__inference_batch_normalization_11_layer_call_and_return_conditional_losses_46187

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o?:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????@?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????@: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
E
)__inference_dropout_4_layer_call_fn_46434

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????<<?* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dropout_4_layer_call_and_return_conditional_losses_43288i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:?????????<<?"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????<<?:X T
0
_output_shapes
:?????????<<?
 
_user_specified_nameinputs
?
s
I__inference_concatenate_10_layer_call_and_return_conditional_losses_43449

inputs
inputs_1
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :?
concatConcatV2inputsinputs_1concat/axis:output:0*
N*
T0*2
_output_shapes 
:????????????b
IdentityIdentityconcat:output:0*
T0*2
_output_shapes 
:????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*M
_input_shapes<
::???????????@:???????????@:Y U
1
_output_shapes
:???????????@
 
_user_specified_nameinputs:YU
1
_output_shapes
:???????????@
 
_user_specified_nameinputs
?
?
Q__inference_batch_normalization_12_layer_call_and_return_conditional_losses_42762

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,?????????????????????????????
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
D__inference_conv2d_52_layer_call_and_return_conditional_losses_43414

inputs:
conv2d_readvariableop_resource:??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:??*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????xx?*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????xx?Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:?????????xx?j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:?????????xx?w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :?????????xx?: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:?????????xx?
 
_user_specified_nameinputs
?	
?
6__inference_batch_normalization_11_layer_call_fn_46156

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Z
fURS
Q__inference_batch_normalization_11_layer_call_and_return_conditional_losses_42655?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?

?
D__inference_conv2d_59_layer_call_and_return_conditional_losses_43560

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????i
IdentityIdentityBiasAdd:output:0^NoOp*
T0*1
_output_shapes
:???????????w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:??????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:??????????? 
 
_user_specified_nameinputs
??
?:
B__inference_model_2_layer_call_and_return_conditional_losses_45848

inputsB
(conv2d_40_conv2d_readvariableop_resource: 7
)conv2d_40_biasadd_readvariableop_resource: B
(conv2d_41_conv2d_readvariableop_resource:  7
)conv2d_41_biasadd_readvariableop_resource: <
.batch_normalization_10_readvariableop_resource: >
0batch_normalization_10_readvariableop_1_resource: M
?batch_normalization_10_fusedbatchnormv3_readvariableop_resource: O
Abatch_normalization_10_fusedbatchnormv3_readvariableop_1_resource: B
(conv2d_42_conv2d_readvariableop_resource: @7
)conv2d_42_biasadd_readvariableop_resource:@B
(conv2d_43_conv2d_readvariableop_resource:@@7
)conv2d_43_biasadd_readvariableop_resource:@<
.batch_normalization_11_readvariableop_resource:@>
0batch_normalization_11_readvariableop_1_resource:@M
?batch_normalization_11_fusedbatchnormv3_readvariableop_resource:@O
Abatch_normalization_11_fusedbatchnormv3_readvariableop_1_resource:@C
(conv2d_44_conv2d_readvariableop_resource:@?8
)conv2d_44_biasadd_readvariableop_resource:	?D
(conv2d_45_conv2d_readvariableop_resource:??8
)conv2d_45_biasadd_readvariableop_resource:	?=
.batch_normalization_12_readvariableop_resource:	??
0batch_normalization_12_readvariableop_1_resource:	?N
?batch_normalization_12_fusedbatchnormv3_readvariableop_resource:	?P
Abatch_normalization_12_fusedbatchnormv3_readvariableop_1_resource:	?D
(conv2d_46_conv2d_readvariableop_resource:??8
)conv2d_46_biasadd_readvariableop_resource:	?D
(conv2d_47_conv2d_readvariableop_resource:??8
)conv2d_47_biasadd_readvariableop_resource:	?=
.batch_normalization_13_readvariableop_resource:	??
0batch_normalization_13_readvariableop_1_resource:	?N
?batch_normalization_13_fusedbatchnormv3_readvariableop_resource:	?P
Abatch_normalization_13_fusedbatchnormv3_readvariableop_1_resource:	?D
(conv2d_48_conv2d_readvariableop_resource:??8
)conv2d_48_biasadd_readvariableop_resource:	?D
(conv2d_49_conv2d_readvariableop_resource:??8
)conv2d_49_biasadd_readvariableop_resource:	?=
.batch_normalization_14_readvariableop_resource:	??
0batch_normalization_14_readvariableop_1_resource:	?N
?batch_normalization_14_fusedbatchnormv3_readvariableop_resource:	?P
Abatch_normalization_14_fusedbatchnormv3_readvariableop_1_resource:	?W
;conv2d_transpose_8_conv2d_transpose_readvariableop_resource:??A
2conv2d_transpose_8_biasadd_readvariableop_resource:	?D
(conv2d_50_conv2d_readvariableop_resource:??8
)conv2d_50_biasadd_readvariableop_resource:	?D
(conv2d_51_conv2d_readvariableop_resource:??8
)conv2d_51_biasadd_readvariableop_resource:	?W
;conv2d_transpose_9_conv2d_transpose_readvariableop_resource:??A
2conv2d_transpose_9_biasadd_readvariableop_resource:	?D
(conv2d_52_conv2d_readvariableop_resource:??8
)conv2d_52_biasadd_readvariableop_resource:	?D
(conv2d_53_conv2d_readvariableop_resource:??8
)conv2d_53_biasadd_readvariableop_resource:	?W
<conv2d_transpose_10_conv2d_transpose_readvariableop_resource:@?A
3conv2d_transpose_10_biasadd_readvariableop_resource:@C
(conv2d_54_conv2d_readvariableop_resource:?@7
)conv2d_54_biasadd_readvariableop_resource:@B
(conv2d_55_conv2d_readvariableop_resource:@@7
)conv2d_55_biasadd_readvariableop_resource:@V
<conv2d_transpose_11_conv2d_transpose_readvariableop_resource: @A
3conv2d_transpose_11_biasadd_readvariableop_resource: B
(conv2d_56_conv2d_readvariableop_resource:@ 7
)conv2d_56_biasadd_readvariableop_resource: B
(conv2d_57_conv2d_readvariableop_resource:  7
)conv2d_57_biasadd_readvariableop_resource: B
(conv2d_58_conv2d_readvariableop_resource:  7
)conv2d_58_biasadd_readvariableop_resource: B
(conv2d_59_conv2d_readvariableop_resource: 7
)conv2d_59_biasadd_readvariableop_resource:
identity??6batch_normalization_10/FusedBatchNormV3/ReadVariableOp?8batch_normalization_10/FusedBatchNormV3/ReadVariableOp_1?%batch_normalization_10/ReadVariableOp?'batch_normalization_10/ReadVariableOp_1?6batch_normalization_11/FusedBatchNormV3/ReadVariableOp?8batch_normalization_11/FusedBatchNormV3/ReadVariableOp_1?%batch_normalization_11/ReadVariableOp?'batch_normalization_11/ReadVariableOp_1?6batch_normalization_12/FusedBatchNormV3/ReadVariableOp?8batch_normalization_12/FusedBatchNormV3/ReadVariableOp_1?%batch_normalization_12/ReadVariableOp?'batch_normalization_12/ReadVariableOp_1?6batch_normalization_13/FusedBatchNormV3/ReadVariableOp?8batch_normalization_13/FusedBatchNormV3/ReadVariableOp_1?%batch_normalization_13/ReadVariableOp?'batch_normalization_13/ReadVariableOp_1?6batch_normalization_14/FusedBatchNormV3/ReadVariableOp?8batch_normalization_14/FusedBatchNormV3/ReadVariableOp_1?%batch_normalization_14/ReadVariableOp?'batch_normalization_14/ReadVariableOp_1? conv2d_40/BiasAdd/ReadVariableOp?conv2d_40/Conv2D/ReadVariableOp? conv2d_41/BiasAdd/ReadVariableOp?conv2d_41/Conv2D/ReadVariableOp? conv2d_42/BiasAdd/ReadVariableOp?conv2d_42/Conv2D/ReadVariableOp? conv2d_43/BiasAdd/ReadVariableOp?conv2d_43/Conv2D/ReadVariableOp? conv2d_44/BiasAdd/ReadVariableOp?conv2d_44/Conv2D/ReadVariableOp? conv2d_45/BiasAdd/ReadVariableOp?conv2d_45/Conv2D/ReadVariableOp? conv2d_46/BiasAdd/ReadVariableOp?conv2d_46/Conv2D/ReadVariableOp? conv2d_47/BiasAdd/ReadVariableOp?conv2d_47/Conv2D/ReadVariableOp? conv2d_48/BiasAdd/ReadVariableOp?conv2d_48/Conv2D/ReadVariableOp? conv2d_49/BiasAdd/ReadVariableOp?conv2d_49/Conv2D/ReadVariableOp? conv2d_50/BiasAdd/ReadVariableOp?conv2d_50/Conv2D/ReadVariableOp? conv2d_51/BiasAdd/ReadVariableOp?conv2d_51/Conv2D/ReadVariableOp? conv2d_52/BiasAdd/ReadVariableOp?conv2d_52/Conv2D/ReadVariableOp? conv2d_53/BiasAdd/ReadVariableOp?conv2d_53/Conv2D/ReadVariableOp? conv2d_54/BiasAdd/ReadVariableOp?conv2d_54/Conv2D/ReadVariableOp? conv2d_55/BiasAdd/ReadVariableOp?conv2d_55/Conv2D/ReadVariableOp? conv2d_56/BiasAdd/ReadVariableOp?conv2d_56/Conv2D/ReadVariableOp? conv2d_57/BiasAdd/ReadVariableOp?conv2d_57/Conv2D/ReadVariableOp? conv2d_58/BiasAdd/ReadVariableOp?conv2d_58/Conv2D/ReadVariableOp? conv2d_59/BiasAdd/ReadVariableOp?conv2d_59/Conv2D/ReadVariableOp?*conv2d_transpose_10/BiasAdd/ReadVariableOp?3conv2d_transpose_10/conv2d_transpose/ReadVariableOp?*conv2d_transpose_11/BiasAdd/ReadVariableOp?3conv2d_transpose_11/conv2d_transpose/ReadVariableOp?)conv2d_transpose_8/BiasAdd/ReadVariableOp?2conv2d_transpose_8/conv2d_transpose/ReadVariableOp?)conv2d_transpose_9/BiasAdd/ReadVariableOp?2conv2d_transpose_9/conv2d_transpose/ReadVariableOp?
conv2d_40/Conv2D/ReadVariableOpReadVariableOp(conv2d_40_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0?
conv2d_40/Conv2DConv2Dinputs'conv2d_40/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? *
paddingSAME*
strides
?
 conv2d_40/BiasAdd/ReadVariableOpReadVariableOp)conv2d_40_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
conv2d_40/BiasAddBiasAddconv2d_40/Conv2D:output:0(conv2d_40/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? n
conv2d_40/ReluReluconv2d_40/BiasAdd:output:0*
T0*1
_output_shapes
:??????????? ?
conv2d_41/Conv2D/ReadVariableOpReadVariableOp(conv2d_41_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0?
conv2d_41/Conv2DConv2Dconv2d_40/Relu:activations:0'conv2d_41/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? *
paddingSAME*
strides
?
 conv2d_41/BiasAdd/ReadVariableOpReadVariableOp)conv2d_41_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
conv2d_41/BiasAddBiasAddconv2d_41/Conv2D:output:0(conv2d_41/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? n
conv2d_41/ReluReluconv2d_41/BiasAdd:output:0*
T0*1
_output_shapes
:??????????? ?
%batch_normalization_10/ReadVariableOpReadVariableOp.batch_normalization_10_readvariableop_resource*
_output_shapes
: *
dtype0?
'batch_normalization_10/ReadVariableOp_1ReadVariableOp0batch_normalization_10_readvariableop_1_resource*
_output_shapes
: *
dtype0?
6batch_normalization_10/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_10_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0?
8batch_normalization_10/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_10_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0?
'batch_normalization_10/FusedBatchNormV3FusedBatchNormV3conv2d_41/Relu:activations:0-batch_normalization_10/ReadVariableOp:value:0/batch_normalization_10/ReadVariableOp_1:value:0>batch_normalization_10/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_10/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*M
_output_shapes;
9:??????????? : : : : :*
epsilon%o?:*
is_training( ?
max_pooling2d_8/MaxPoolMaxPool+batch_normalization_10/FusedBatchNormV3:y:0*1
_output_shapes
:??????????? *
ksize
*
paddingVALID*
strides
?
conv2d_42/Conv2D/ReadVariableOpReadVariableOp(conv2d_42_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0?
conv2d_42/Conv2DConv2D max_pooling2d_8/MaxPool:output:0'conv2d_42/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????@*
paddingSAME*
strides
?
 conv2d_42/BiasAdd/ReadVariableOpReadVariableOp)conv2d_42_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
conv2d_42/BiasAddBiasAddconv2d_42/Conv2D:output:0(conv2d_42/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????@n
conv2d_42/ReluReluconv2d_42/BiasAdd:output:0*
T0*1
_output_shapes
:???????????@?
conv2d_43/Conv2D/ReadVariableOpReadVariableOp(conv2d_43_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0?
conv2d_43/Conv2DConv2Dconv2d_42/Relu:activations:0'conv2d_43/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????@*
paddingSAME*
strides
?
 conv2d_43/BiasAdd/ReadVariableOpReadVariableOp)conv2d_43_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
conv2d_43/BiasAddBiasAddconv2d_43/Conv2D:output:0(conv2d_43/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????@n
conv2d_43/ReluReluconv2d_43/BiasAdd:output:0*
T0*1
_output_shapes
:???????????@?
%batch_normalization_11/ReadVariableOpReadVariableOp.batch_normalization_11_readvariableop_resource*
_output_shapes
:@*
dtype0?
'batch_normalization_11/ReadVariableOp_1ReadVariableOp0batch_normalization_11_readvariableop_1_resource*
_output_shapes
:@*
dtype0?
6batch_normalization_11/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_11_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0?
8batch_normalization_11/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_11_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0?
'batch_normalization_11/FusedBatchNormV3FusedBatchNormV3conv2d_43/Relu:activations:0-batch_normalization_11/ReadVariableOp:value:0/batch_normalization_11/ReadVariableOp_1:value:0>batch_normalization_11/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_11/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*M
_output_shapes;
9:???????????@:@:@:@:@:*
epsilon%o?:*
is_training( ?
max_pooling2d_9/MaxPoolMaxPool+batch_normalization_11/FusedBatchNormV3:y:0*/
_output_shapes
:?????????xx@*
ksize
*
paddingVALID*
strides
?
conv2d_44/Conv2D/ReadVariableOpReadVariableOp(conv2d_44_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype0?
conv2d_44/Conv2DConv2D max_pooling2d_9/MaxPool:output:0'conv2d_44/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????xx?*
paddingSAME*
strides
?
 conv2d_44/BiasAdd/ReadVariableOpReadVariableOp)conv2d_44_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
conv2d_44/BiasAddBiasAddconv2d_44/Conv2D:output:0(conv2d_44/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????xx?m
conv2d_44/ReluReluconv2d_44/BiasAdd:output:0*
T0*0
_output_shapes
:?????????xx??
conv2d_45/Conv2D/ReadVariableOpReadVariableOp(conv2d_45_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype0?
conv2d_45/Conv2DConv2Dconv2d_44/Relu:activations:0'conv2d_45/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????xx?*
paddingSAME*
strides
?
 conv2d_45/BiasAdd/ReadVariableOpReadVariableOp)conv2d_45_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
conv2d_45/BiasAddBiasAddconv2d_45/Conv2D:output:0(conv2d_45/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????xx?m
conv2d_45/ReluReluconv2d_45/BiasAdd:output:0*
T0*0
_output_shapes
:?????????xx??
%batch_normalization_12/ReadVariableOpReadVariableOp.batch_normalization_12_readvariableop_resource*
_output_shapes	
:?*
dtype0?
'batch_normalization_12/ReadVariableOp_1ReadVariableOp0batch_normalization_12_readvariableop_1_resource*
_output_shapes	
:?*
dtype0?
6batch_normalization_12/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_12_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype0?
8batch_normalization_12/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_12_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype0?
'batch_normalization_12/FusedBatchNormV3FusedBatchNormV3conv2d_45/Relu:activations:0-batch_normalization_12/ReadVariableOp:value:0/batch_normalization_12/ReadVariableOp_1:value:0>batch_normalization_12/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_12/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:?????????xx?:?:?:?:?:*
epsilon%o?:*
is_training( ?
max_pooling2d_10/MaxPoolMaxPool+batch_normalization_12/FusedBatchNormV3:y:0*0
_output_shapes
:?????????<<?*
ksize
*
paddingVALID*
strides
?
conv2d_46/Conv2D/ReadVariableOpReadVariableOp(conv2d_46_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype0?
conv2d_46/Conv2DConv2D!max_pooling2d_10/MaxPool:output:0'conv2d_46/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????<<?*
paddingSAME*
strides
?
 conv2d_46/BiasAdd/ReadVariableOpReadVariableOp)conv2d_46_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
conv2d_46/BiasAddBiasAddconv2d_46/Conv2D:output:0(conv2d_46/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????<<?m
conv2d_46/ReluReluconv2d_46/BiasAdd:output:0*
T0*0
_output_shapes
:?????????<<??
conv2d_47/Conv2D/ReadVariableOpReadVariableOp(conv2d_47_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype0?
conv2d_47/Conv2DConv2Dconv2d_46/Relu:activations:0'conv2d_47/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????<<?*
paddingSAME*
strides
?
 conv2d_47/BiasAdd/ReadVariableOpReadVariableOp)conv2d_47_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
conv2d_47/BiasAddBiasAddconv2d_47/Conv2D:output:0(conv2d_47/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????<<?m
conv2d_47/ReluReluconv2d_47/BiasAdd:output:0*
T0*0
_output_shapes
:?????????<<??
%batch_normalization_13/ReadVariableOpReadVariableOp.batch_normalization_13_readvariableop_resource*
_output_shapes	
:?*
dtype0?
'batch_normalization_13/ReadVariableOp_1ReadVariableOp0batch_normalization_13_readvariableop_1_resource*
_output_shapes	
:?*
dtype0?
6batch_normalization_13/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_13_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype0?
8batch_normalization_13/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_13_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype0?
'batch_normalization_13/FusedBatchNormV3FusedBatchNormV3conv2d_47/Relu:activations:0-batch_normalization_13/ReadVariableOp:value:0/batch_normalization_13/ReadVariableOp_1:value:0>batch_normalization_13/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_13/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:?????????<<?:?:?:?:?:*
epsilon%o?:*
is_training( \
dropout_4/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶??
dropout_4/dropout/MulMul+batch_normalization_13/FusedBatchNormV3:y:0 dropout_4/dropout/Const:output:0*
T0*0
_output_shapes
:?????????<<?r
dropout_4/dropout/ShapeShape+batch_normalization_13/FusedBatchNormV3:y:0*
T0*
_output_shapes
:?
.dropout_4/dropout/random_uniform/RandomUniformRandomUniform dropout_4/dropout/Shape:output:0*
T0*0
_output_shapes
:?????????<<?*
dtype0e
 dropout_4/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>?
dropout_4/dropout/GreaterEqualGreaterEqual7dropout_4/dropout/random_uniform/RandomUniform:output:0)dropout_4/dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:?????????<<??
dropout_4/dropout/CastCast"dropout_4/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:?????????<<??
dropout_4/dropout/Mul_1Muldropout_4/dropout/Mul:z:0dropout_4/dropout/Cast:y:0*
T0*0
_output_shapes
:?????????<<??
max_pooling2d_11/MaxPoolMaxPooldropout_4/dropout/Mul_1:z:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
?
conv2d_48/Conv2D/ReadVariableOpReadVariableOp(conv2d_48_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype0?
conv2d_48/Conv2DConv2D!max_pooling2d_11/MaxPool:output:0'conv2d_48/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
?
 conv2d_48/BiasAdd/ReadVariableOpReadVariableOp)conv2d_48_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
conv2d_48/BiasAddBiasAddconv2d_48/Conv2D:output:0(conv2d_48/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????m
conv2d_48/ReluReluconv2d_48/BiasAdd:output:0*
T0*0
_output_shapes
:???????????
conv2d_49/Conv2D/ReadVariableOpReadVariableOp(conv2d_49_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype0?
conv2d_49/Conv2DConv2Dconv2d_48/Relu:activations:0'conv2d_49/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
?
 conv2d_49/BiasAdd/ReadVariableOpReadVariableOp)conv2d_49_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
conv2d_49/BiasAddBiasAddconv2d_49/Conv2D:output:0(conv2d_49/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????m
conv2d_49/ReluReluconv2d_49/BiasAdd:output:0*
T0*0
_output_shapes
:???????????
%batch_normalization_14/ReadVariableOpReadVariableOp.batch_normalization_14_readvariableop_resource*
_output_shapes	
:?*
dtype0?
'batch_normalization_14/ReadVariableOp_1ReadVariableOp0batch_normalization_14_readvariableop_1_resource*
_output_shapes	
:?*
dtype0?
6batch_normalization_14/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_14_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype0?
8batch_normalization_14/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_14_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype0?
'batch_normalization_14/FusedBatchNormV3FusedBatchNormV3conv2d_49/Relu:activations:0-batch_normalization_14/ReadVariableOp:value:0/batch_normalization_14/ReadVariableOp_1:value:0>batch_normalization_14/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_14/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( \
dropout_5/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶??
dropout_5/dropout/MulMul+batch_normalization_14/FusedBatchNormV3:y:0 dropout_5/dropout/Const:output:0*
T0*0
_output_shapes
:??????????r
dropout_5/dropout/ShapeShape+batch_normalization_14/FusedBatchNormV3:y:0*
T0*
_output_shapes
:?
.dropout_5/dropout/random_uniform/RandomUniformRandomUniform dropout_5/dropout/Shape:output:0*
T0*0
_output_shapes
:??????????*
dtype0e
 dropout_5/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>?
dropout_5/dropout/GreaterEqualGreaterEqual7dropout_5/dropout/random_uniform/RandomUniform:output:0)dropout_5/dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:???????????
dropout_5/dropout/CastCast"dropout_5/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:???????????
dropout_5/dropout/Mul_1Muldropout_5/dropout/Mul:z:0dropout_5/dropout/Cast:y:0*
T0*0
_output_shapes
:??????????c
conv2d_transpose_8/ShapeShapedropout_5/dropout/Mul_1:z:0*
T0*
_output_shapes
:p
&conv2d_transpose_8/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(conv2d_transpose_8/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(conv2d_transpose_8/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
 conv2d_transpose_8/strided_sliceStridedSlice!conv2d_transpose_8/Shape:output:0/conv2d_transpose_8/strided_slice/stack:output:01conv2d_transpose_8/strided_slice/stack_1:output:01conv2d_transpose_8/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask\
conv2d_transpose_8/stack/1Const*
_output_shapes
: *
dtype0*
value	B :<\
conv2d_transpose_8/stack/2Const*
_output_shapes
: *
dtype0*
value	B :<]
conv2d_transpose_8/stack/3Const*
_output_shapes
: *
dtype0*
value
B :??
conv2d_transpose_8/stackPack)conv2d_transpose_8/strided_slice:output:0#conv2d_transpose_8/stack/1:output:0#conv2d_transpose_8/stack/2:output:0#conv2d_transpose_8/stack/3:output:0*
N*
T0*
_output_shapes
:r
(conv2d_transpose_8/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*conv2d_transpose_8/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*conv2d_transpose_8/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
"conv2d_transpose_8/strided_slice_1StridedSlice!conv2d_transpose_8/stack:output:01conv2d_transpose_8/strided_slice_1/stack:output:03conv2d_transpose_8/strided_slice_1/stack_1:output:03conv2d_transpose_8/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
2conv2d_transpose_8/conv2d_transpose/ReadVariableOpReadVariableOp;conv2d_transpose_8_conv2d_transpose_readvariableop_resource*(
_output_shapes
:??*
dtype0?
#conv2d_transpose_8/conv2d_transposeConv2DBackpropInput!conv2d_transpose_8/stack:output:0:conv2d_transpose_8/conv2d_transpose/ReadVariableOp:value:0dropout_5/dropout/Mul_1:z:0*
T0*0
_output_shapes
:?????????<<?*
paddingSAME*
strides
?
)conv2d_transpose_8/BiasAdd/ReadVariableOpReadVariableOp2conv2d_transpose_8_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
conv2d_transpose_8/BiasAddBiasAdd,conv2d_transpose_8/conv2d_transpose:output:01conv2d_transpose_8/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????<<?[
concatenate_8/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :?
concatenate_8/concatConcatV2#conv2d_transpose_8/BiasAdd:output:0dropout_4/dropout/Mul_1:z:0"concatenate_8/concat/axis:output:0*
N*
T0*0
_output_shapes
:?????????<<??
conv2d_50/Conv2D/ReadVariableOpReadVariableOp(conv2d_50_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype0?
conv2d_50/Conv2DConv2Dconcatenate_8/concat:output:0'conv2d_50/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????<<?*
paddingSAME*
strides
?
 conv2d_50/BiasAdd/ReadVariableOpReadVariableOp)conv2d_50_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
conv2d_50/BiasAddBiasAddconv2d_50/Conv2D:output:0(conv2d_50/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????<<?m
conv2d_50/ReluReluconv2d_50/BiasAdd:output:0*
T0*0
_output_shapes
:?????????<<??
conv2d_51/Conv2D/ReadVariableOpReadVariableOp(conv2d_51_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype0?
conv2d_51/Conv2DConv2Dconv2d_50/Relu:activations:0'conv2d_51/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????<<?*
paddingSAME*
strides
?
 conv2d_51/BiasAdd/ReadVariableOpReadVariableOp)conv2d_51_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
conv2d_51/BiasAddBiasAddconv2d_51/Conv2D:output:0(conv2d_51/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????<<?m
conv2d_51/ReluReluconv2d_51/BiasAdd:output:0*
T0*0
_output_shapes
:?????????<<?d
conv2d_transpose_9/ShapeShapeconv2d_51/Relu:activations:0*
T0*
_output_shapes
:p
&conv2d_transpose_9/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(conv2d_transpose_9/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(conv2d_transpose_9/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
 conv2d_transpose_9/strided_sliceStridedSlice!conv2d_transpose_9/Shape:output:0/conv2d_transpose_9/strided_slice/stack:output:01conv2d_transpose_9/strided_slice/stack_1:output:01conv2d_transpose_9/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask\
conv2d_transpose_9/stack/1Const*
_output_shapes
: *
dtype0*
value	B :x\
conv2d_transpose_9/stack/2Const*
_output_shapes
: *
dtype0*
value	B :x]
conv2d_transpose_9/stack/3Const*
_output_shapes
: *
dtype0*
value
B :??
conv2d_transpose_9/stackPack)conv2d_transpose_9/strided_slice:output:0#conv2d_transpose_9/stack/1:output:0#conv2d_transpose_9/stack/2:output:0#conv2d_transpose_9/stack/3:output:0*
N*
T0*
_output_shapes
:r
(conv2d_transpose_9/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*conv2d_transpose_9/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*conv2d_transpose_9/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
"conv2d_transpose_9/strided_slice_1StridedSlice!conv2d_transpose_9/stack:output:01conv2d_transpose_9/strided_slice_1/stack:output:03conv2d_transpose_9/strided_slice_1/stack_1:output:03conv2d_transpose_9/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
2conv2d_transpose_9/conv2d_transpose/ReadVariableOpReadVariableOp;conv2d_transpose_9_conv2d_transpose_readvariableop_resource*(
_output_shapes
:??*
dtype0?
#conv2d_transpose_9/conv2d_transposeConv2DBackpropInput!conv2d_transpose_9/stack:output:0:conv2d_transpose_9/conv2d_transpose/ReadVariableOp:value:0conv2d_51/Relu:activations:0*
T0*0
_output_shapes
:?????????xx?*
paddingSAME*
strides
?
)conv2d_transpose_9/BiasAdd/ReadVariableOpReadVariableOp2conv2d_transpose_9_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
conv2d_transpose_9/BiasAddBiasAdd,conv2d_transpose_9/conv2d_transpose:output:01conv2d_transpose_9/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????xx?[
concatenate_9/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :?
concatenate_9/concatConcatV2#conv2d_transpose_9/BiasAdd:output:0+batch_normalization_12/FusedBatchNormV3:y:0"concatenate_9/concat/axis:output:0*
N*
T0*0
_output_shapes
:?????????xx??
conv2d_52/Conv2D/ReadVariableOpReadVariableOp(conv2d_52_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype0?
conv2d_52/Conv2DConv2Dconcatenate_9/concat:output:0'conv2d_52/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????xx?*
paddingSAME*
strides
?
 conv2d_52/BiasAdd/ReadVariableOpReadVariableOp)conv2d_52_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
conv2d_52/BiasAddBiasAddconv2d_52/Conv2D:output:0(conv2d_52/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????xx?m
conv2d_52/ReluReluconv2d_52/BiasAdd:output:0*
T0*0
_output_shapes
:?????????xx??
conv2d_53/Conv2D/ReadVariableOpReadVariableOp(conv2d_53_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype0?
conv2d_53/Conv2DConv2Dconv2d_52/Relu:activations:0'conv2d_53/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????xx?*
paddingSAME*
strides
?
 conv2d_53/BiasAdd/ReadVariableOpReadVariableOp)conv2d_53_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
conv2d_53/BiasAddBiasAddconv2d_53/Conv2D:output:0(conv2d_53/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????xx?m
conv2d_53/ReluReluconv2d_53/BiasAdd:output:0*
T0*0
_output_shapes
:?????????xx?e
conv2d_transpose_10/ShapeShapeconv2d_53/Relu:activations:0*
T0*
_output_shapes
:q
'conv2d_transpose_10/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: s
)conv2d_transpose_10/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:s
)conv2d_transpose_10/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
!conv2d_transpose_10/strided_sliceStridedSlice"conv2d_transpose_10/Shape:output:00conv2d_transpose_10/strided_slice/stack:output:02conv2d_transpose_10/strided_slice/stack_1:output:02conv2d_transpose_10/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
conv2d_transpose_10/stack/1Const*
_output_shapes
: *
dtype0*
value
B :?^
conv2d_transpose_10/stack/2Const*
_output_shapes
: *
dtype0*
value
B :?]
conv2d_transpose_10/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@?
conv2d_transpose_10/stackPack*conv2d_transpose_10/strided_slice:output:0$conv2d_transpose_10/stack/1:output:0$conv2d_transpose_10/stack/2:output:0$conv2d_transpose_10/stack/3:output:0*
N*
T0*
_output_shapes
:s
)conv2d_transpose_10/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+conv2d_transpose_10/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+conv2d_transpose_10/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
#conv2d_transpose_10/strided_slice_1StridedSlice"conv2d_transpose_10/stack:output:02conv2d_transpose_10/strided_slice_1/stack:output:04conv2d_transpose_10/strided_slice_1/stack_1:output:04conv2d_transpose_10/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
3conv2d_transpose_10/conv2d_transpose/ReadVariableOpReadVariableOp<conv2d_transpose_10_conv2d_transpose_readvariableop_resource*'
_output_shapes
:@?*
dtype0?
$conv2d_transpose_10/conv2d_transposeConv2DBackpropInput"conv2d_transpose_10/stack:output:0;conv2d_transpose_10/conv2d_transpose/ReadVariableOp:value:0conv2d_53/Relu:activations:0*
T0*1
_output_shapes
:???????????@*
paddingSAME*
strides
?
*conv2d_transpose_10/BiasAdd/ReadVariableOpReadVariableOp3conv2d_transpose_10_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
conv2d_transpose_10/BiasAddBiasAdd-conv2d_transpose_10/conv2d_transpose:output:02conv2d_transpose_10/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????@\
concatenate_10/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :?
concatenate_10/concatConcatV2$conv2d_transpose_10/BiasAdd:output:0+batch_normalization_11/FusedBatchNormV3:y:0#concatenate_10/concat/axis:output:0*
N*
T0*2
_output_shapes 
:?????????????
conv2d_54/Conv2D/ReadVariableOpReadVariableOp(conv2d_54_conv2d_readvariableop_resource*'
_output_shapes
:?@*
dtype0?
conv2d_54/Conv2DConv2Dconcatenate_10/concat:output:0'conv2d_54/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????@*
paddingSAME*
strides
?
 conv2d_54/BiasAdd/ReadVariableOpReadVariableOp)conv2d_54_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
conv2d_54/BiasAddBiasAddconv2d_54/Conv2D:output:0(conv2d_54/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????@n
conv2d_54/ReluReluconv2d_54/BiasAdd:output:0*
T0*1
_output_shapes
:???????????@?
conv2d_55/Conv2D/ReadVariableOpReadVariableOp(conv2d_55_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0?
conv2d_55/Conv2DConv2Dconv2d_54/Relu:activations:0'conv2d_55/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????@*
paddingSAME*
strides
?
 conv2d_55/BiasAdd/ReadVariableOpReadVariableOp)conv2d_55_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
conv2d_55/BiasAddBiasAddconv2d_55/Conv2D:output:0(conv2d_55/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????@n
conv2d_55/ReluReluconv2d_55/BiasAdd:output:0*
T0*1
_output_shapes
:???????????@e
conv2d_transpose_11/ShapeShapeconv2d_55/Relu:activations:0*
T0*
_output_shapes
:q
'conv2d_transpose_11/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: s
)conv2d_transpose_11/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:s
)conv2d_transpose_11/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
!conv2d_transpose_11/strided_sliceStridedSlice"conv2d_transpose_11/Shape:output:00conv2d_transpose_11/strided_slice/stack:output:02conv2d_transpose_11/strided_slice/stack_1:output:02conv2d_transpose_11/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
conv2d_transpose_11/stack/1Const*
_output_shapes
: *
dtype0*
value
B :?^
conv2d_transpose_11/stack/2Const*
_output_shapes
: *
dtype0*
value
B :?]
conv2d_transpose_11/stack/3Const*
_output_shapes
: *
dtype0*
value	B : ?
conv2d_transpose_11/stackPack*conv2d_transpose_11/strided_slice:output:0$conv2d_transpose_11/stack/1:output:0$conv2d_transpose_11/stack/2:output:0$conv2d_transpose_11/stack/3:output:0*
N*
T0*
_output_shapes
:s
)conv2d_transpose_11/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+conv2d_transpose_11/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+conv2d_transpose_11/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
#conv2d_transpose_11/strided_slice_1StridedSlice"conv2d_transpose_11/stack:output:02conv2d_transpose_11/strided_slice_1/stack:output:04conv2d_transpose_11/strided_slice_1/stack_1:output:04conv2d_transpose_11/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
3conv2d_transpose_11/conv2d_transpose/ReadVariableOpReadVariableOp<conv2d_transpose_11_conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype0?
$conv2d_transpose_11/conv2d_transposeConv2DBackpropInput"conv2d_transpose_11/stack:output:0;conv2d_transpose_11/conv2d_transpose/ReadVariableOp:value:0conv2d_55/Relu:activations:0*
T0*1
_output_shapes
:??????????? *
paddingSAME*
strides
?
*conv2d_transpose_11/BiasAdd/ReadVariableOpReadVariableOp3conv2d_transpose_11_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
conv2d_transpose_11/BiasAddBiasAdd-conv2d_transpose_11/conv2d_transpose:output:02conv2d_transpose_11/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? \
concatenate_11/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :?
concatenate_11/concatConcatV2$conv2d_transpose_11/BiasAdd:output:0+batch_normalization_10/FusedBatchNormV3:y:0#concatenate_11/concat/axis:output:0*
N*
T0*1
_output_shapes
:???????????@?
conv2d_56/Conv2D/ReadVariableOpReadVariableOp(conv2d_56_conv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype0?
conv2d_56/Conv2DConv2Dconcatenate_11/concat:output:0'conv2d_56/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? *
paddingSAME*
strides
?
 conv2d_56/BiasAdd/ReadVariableOpReadVariableOp)conv2d_56_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
conv2d_56/BiasAddBiasAddconv2d_56/Conv2D:output:0(conv2d_56/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? n
conv2d_56/ReluReluconv2d_56/BiasAdd:output:0*
T0*1
_output_shapes
:??????????? ?
conv2d_57/Conv2D/ReadVariableOpReadVariableOp(conv2d_57_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0?
conv2d_57/Conv2DConv2Dconv2d_56/Relu:activations:0'conv2d_57/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? *
paddingSAME*
strides
?
 conv2d_57/BiasAdd/ReadVariableOpReadVariableOp)conv2d_57_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
conv2d_57/BiasAddBiasAddconv2d_57/Conv2D:output:0(conv2d_57/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? n
conv2d_57/ReluReluconv2d_57/BiasAdd:output:0*
T0*1
_output_shapes
:??????????? ?
conv2d_58/Conv2D/ReadVariableOpReadVariableOp(conv2d_58_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0?
conv2d_58/Conv2DConv2Dconv2d_57/Relu:activations:0'conv2d_58/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? *
paddingSAME*
strides
?
 conv2d_58/BiasAdd/ReadVariableOpReadVariableOp)conv2d_58_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
conv2d_58/BiasAddBiasAddconv2d_58/Conv2D:output:0(conv2d_58/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? n
conv2d_58/ReluReluconv2d_58/BiasAdd:output:0*
T0*1
_output_shapes
:??????????? ?
conv2d_59/Conv2D/ReadVariableOpReadVariableOp(conv2d_59_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0?
conv2d_59/Conv2DConv2Dconv2d_58/Relu:activations:0'conv2d_59/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
?
 conv2d_59/BiasAdd/ReadVariableOpReadVariableOp)conv2d_59_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
conv2d_59/BiasAddBiasAddconv2d_59/Conv2D:output:0(conv2d_59/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????s
IdentityIdentityconv2d_59/BiasAdd:output:0^NoOp*
T0*1
_output_shapes
:????????????
NoOpNoOp7^batch_normalization_10/FusedBatchNormV3/ReadVariableOp9^batch_normalization_10/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_10/ReadVariableOp(^batch_normalization_10/ReadVariableOp_17^batch_normalization_11/FusedBatchNormV3/ReadVariableOp9^batch_normalization_11/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_11/ReadVariableOp(^batch_normalization_11/ReadVariableOp_17^batch_normalization_12/FusedBatchNormV3/ReadVariableOp9^batch_normalization_12/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_12/ReadVariableOp(^batch_normalization_12/ReadVariableOp_17^batch_normalization_13/FusedBatchNormV3/ReadVariableOp9^batch_normalization_13/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_13/ReadVariableOp(^batch_normalization_13/ReadVariableOp_17^batch_normalization_14/FusedBatchNormV3/ReadVariableOp9^batch_normalization_14/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_14/ReadVariableOp(^batch_normalization_14/ReadVariableOp_1!^conv2d_40/BiasAdd/ReadVariableOp ^conv2d_40/Conv2D/ReadVariableOp!^conv2d_41/BiasAdd/ReadVariableOp ^conv2d_41/Conv2D/ReadVariableOp!^conv2d_42/BiasAdd/ReadVariableOp ^conv2d_42/Conv2D/ReadVariableOp!^conv2d_43/BiasAdd/ReadVariableOp ^conv2d_43/Conv2D/ReadVariableOp!^conv2d_44/BiasAdd/ReadVariableOp ^conv2d_44/Conv2D/ReadVariableOp!^conv2d_45/BiasAdd/ReadVariableOp ^conv2d_45/Conv2D/ReadVariableOp!^conv2d_46/BiasAdd/ReadVariableOp ^conv2d_46/Conv2D/ReadVariableOp!^conv2d_47/BiasAdd/ReadVariableOp ^conv2d_47/Conv2D/ReadVariableOp!^conv2d_48/BiasAdd/ReadVariableOp ^conv2d_48/Conv2D/ReadVariableOp!^conv2d_49/BiasAdd/ReadVariableOp ^conv2d_49/Conv2D/ReadVariableOp!^conv2d_50/BiasAdd/ReadVariableOp ^conv2d_50/Conv2D/ReadVariableOp!^conv2d_51/BiasAdd/ReadVariableOp ^conv2d_51/Conv2D/ReadVariableOp!^conv2d_52/BiasAdd/ReadVariableOp ^conv2d_52/Conv2D/ReadVariableOp!^conv2d_53/BiasAdd/ReadVariableOp ^conv2d_53/Conv2D/ReadVariableOp!^conv2d_54/BiasAdd/ReadVariableOp ^conv2d_54/Conv2D/ReadVariableOp!^conv2d_55/BiasAdd/ReadVariableOp ^conv2d_55/Conv2D/ReadVariableOp!^conv2d_56/BiasAdd/ReadVariableOp ^conv2d_56/Conv2D/ReadVariableOp!^conv2d_57/BiasAdd/ReadVariableOp ^conv2d_57/Conv2D/ReadVariableOp!^conv2d_58/BiasAdd/ReadVariableOp ^conv2d_58/Conv2D/ReadVariableOp!^conv2d_59/BiasAdd/ReadVariableOp ^conv2d_59/Conv2D/ReadVariableOp+^conv2d_transpose_10/BiasAdd/ReadVariableOp4^conv2d_transpose_10/conv2d_transpose/ReadVariableOp+^conv2d_transpose_11/BiasAdd/ReadVariableOp4^conv2d_transpose_11/conv2d_transpose/ReadVariableOp*^conv2d_transpose_8/BiasAdd/ReadVariableOp3^conv2d_transpose_8/conv2d_transpose/ReadVariableOp*^conv2d_transpose_9/BiasAdd/ReadVariableOp3^conv2d_transpose_9/conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:???????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2p
6batch_normalization_10/FusedBatchNormV3/ReadVariableOp6batch_normalization_10/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_10/FusedBatchNormV3/ReadVariableOp_18batch_normalization_10/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_10/ReadVariableOp%batch_normalization_10/ReadVariableOp2R
'batch_normalization_10/ReadVariableOp_1'batch_normalization_10/ReadVariableOp_12p
6batch_normalization_11/FusedBatchNormV3/ReadVariableOp6batch_normalization_11/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_11/FusedBatchNormV3/ReadVariableOp_18batch_normalization_11/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_11/ReadVariableOp%batch_normalization_11/ReadVariableOp2R
'batch_normalization_11/ReadVariableOp_1'batch_normalization_11/ReadVariableOp_12p
6batch_normalization_12/FusedBatchNormV3/ReadVariableOp6batch_normalization_12/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_12/FusedBatchNormV3/ReadVariableOp_18batch_normalization_12/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_12/ReadVariableOp%batch_normalization_12/ReadVariableOp2R
'batch_normalization_12/ReadVariableOp_1'batch_normalization_12/ReadVariableOp_12p
6batch_normalization_13/FusedBatchNormV3/ReadVariableOp6batch_normalization_13/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_13/FusedBatchNormV3/ReadVariableOp_18batch_normalization_13/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_13/ReadVariableOp%batch_normalization_13/ReadVariableOp2R
'batch_normalization_13/ReadVariableOp_1'batch_normalization_13/ReadVariableOp_12p
6batch_normalization_14/FusedBatchNormV3/ReadVariableOp6batch_normalization_14/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_14/FusedBatchNormV3/ReadVariableOp_18batch_normalization_14/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_14/ReadVariableOp%batch_normalization_14/ReadVariableOp2R
'batch_normalization_14/ReadVariableOp_1'batch_normalization_14/ReadVariableOp_12D
 conv2d_40/BiasAdd/ReadVariableOp conv2d_40/BiasAdd/ReadVariableOp2B
conv2d_40/Conv2D/ReadVariableOpconv2d_40/Conv2D/ReadVariableOp2D
 conv2d_41/BiasAdd/ReadVariableOp conv2d_41/BiasAdd/ReadVariableOp2B
conv2d_41/Conv2D/ReadVariableOpconv2d_41/Conv2D/ReadVariableOp2D
 conv2d_42/BiasAdd/ReadVariableOp conv2d_42/BiasAdd/ReadVariableOp2B
conv2d_42/Conv2D/ReadVariableOpconv2d_42/Conv2D/ReadVariableOp2D
 conv2d_43/BiasAdd/ReadVariableOp conv2d_43/BiasAdd/ReadVariableOp2B
conv2d_43/Conv2D/ReadVariableOpconv2d_43/Conv2D/ReadVariableOp2D
 conv2d_44/BiasAdd/ReadVariableOp conv2d_44/BiasAdd/ReadVariableOp2B
conv2d_44/Conv2D/ReadVariableOpconv2d_44/Conv2D/ReadVariableOp2D
 conv2d_45/BiasAdd/ReadVariableOp conv2d_45/BiasAdd/ReadVariableOp2B
conv2d_45/Conv2D/ReadVariableOpconv2d_45/Conv2D/ReadVariableOp2D
 conv2d_46/BiasAdd/ReadVariableOp conv2d_46/BiasAdd/ReadVariableOp2B
conv2d_46/Conv2D/ReadVariableOpconv2d_46/Conv2D/ReadVariableOp2D
 conv2d_47/BiasAdd/ReadVariableOp conv2d_47/BiasAdd/ReadVariableOp2B
conv2d_47/Conv2D/ReadVariableOpconv2d_47/Conv2D/ReadVariableOp2D
 conv2d_48/BiasAdd/ReadVariableOp conv2d_48/BiasAdd/ReadVariableOp2B
conv2d_48/Conv2D/ReadVariableOpconv2d_48/Conv2D/ReadVariableOp2D
 conv2d_49/BiasAdd/ReadVariableOp conv2d_49/BiasAdd/ReadVariableOp2B
conv2d_49/Conv2D/ReadVariableOpconv2d_49/Conv2D/ReadVariableOp2D
 conv2d_50/BiasAdd/ReadVariableOp conv2d_50/BiasAdd/ReadVariableOp2B
conv2d_50/Conv2D/ReadVariableOpconv2d_50/Conv2D/ReadVariableOp2D
 conv2d_51/BiasAdd/ReadVariableOp conv2d_51/BiasAdd/ReadVariableOp2B
conv2d_51/Conv2D/ReadVariableOpconv2d_51/Conv2D/ReadVariableOp2D
 conv2d_52/BiasAdd/ReadVariableOp conv2d_52/BiasAdd/ReadVariableOp2B
conv2d_52/Conv2D/ReadVariableOpconv2d_52/Conv2D/ReadVariableOp2D
 conv2d_53/BiasAdd/ReadVariableOp conv2d_53/BiasAdd/ReadVariableOp2B
conv2d_53/Conv2D/ReadVariableOpconv2d_53/Conv2D/ReadVariableOp2D
 conv2d_54/BiasAdd/ReadVariableOp conv2d_54/BiasAdd/ReadVariableOp2B
conv2d_54/Conv2D/ReadVariableOpconv2d_54/Conv2D/ReadVariableOp2D
 conv2d_55/BiasAdd/ReadVariableOp conv2d_55/BiasAdd/ReadVariableOp2B
conv2d_55/Conv2D/ReadVariableOpconv2d_55/Conv2D/ReadVariableOp2D
 conv2d_56/BiasAdd/ReadVariableOp conv2d_56/BiasAdd/ReadVariableOp2B
conv2d_56/Conv2D/ReadVariableOpconv2d_56/Conv2D/ReadVariableOp2D
 conv2d_57/BiasAdd/ReadVariableOp conv2d_57/BiasAdd/ReadVariableOp2B
conv2d_57/Conv2D/ReadVariableOpconv2d_57/Conv2D/ReadVariableOp2D
 conv2d_58/BiasAdd/ReadVariableOp conv2d_58/BiasAdd/ReadVariableOp2B
conv2d_58/Conv2D/ReadVariableOpconv2d_58/Conv2D/ReadVariableOp2D
 conv2d_59/BiasAdd/ReadVariableOp conv2d_59/BiasAdd/ReadVariableOp2B
conv2d_59/Conv2D/ReadVariableOpconv2d_59/Conv2D/ReadVariableOp2X
*conv2d_transpose_10/BiasAdd/ReadVariableOp*conv2d_transpose_10/BiasAdd/ReadVariableOp2j
3conv2d_transpose_10/conv2d_transpose/ReadVariableOp3conv2d_transpose_10/conv2d_transpose/ReadVariableOp2X
*conv2d_transpose_11/BiasAdd/ReadVariableOp*conv2d_transpose_11/BiasAdd/ReadVariableOp2j
3conv2d_transpose_11/conv2d_transpose/ReadVariableOp3conv2d_transpose_11/conv2d_transpose/ReadVariableOp2V
)conv2d_transpose_8/BiasAdd/ReadVariableOp)conv2d_transpose_8/BiasAdd/ReadVariableOp2h
2conv2d_transpose_8/conv2d_transpose/ReadVariableOp2conv2d_transpose_8/conv2d_transpose/ReadVariableOp2V
)conv2d_transpose_9/BiasAdd/ReadVariableOp)conv2d_transpose_9/BiasAdd/ReadVariableOp2h
2conv2d_transpose_9/conv2d_transpose/ReadVariableOp2conv2d_transpose_9/conv2d_transpose/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
g
K__inference_max_pooling2d_11_layer_call_and_return_conditional_losses_42858

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
L
0__inference_max_pooling2d_10_layer_call_fn_46322

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_max_pooling2d_10_layer_call_and_return_conditional_losses_42782?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
'__inference_model_2_layer_call_fn_44582
input_3!
unknown: 
	unknown_0: #
	unknown_1:  
	unknown_2: 
	unknown_3: 
	unknown_4: 
	unknown_5: 
	unknown_6: #
	unknown_7: @
	unknown_8:@#
	unknown_9:@@

unknown_10:@

unknown_11:@

unknown_12:@

unknown_13:@

unknown_14:@%

unknown_15:@?

unknown_16:	?&

unknown_17:??

unknown_18:	?

unknown_19:	?

unknown_20:	?

unknown_21:	?

unknown_22:	?&

unknown_23:??

unknown_24:	?&

unknown_25:??

unknown_26:	?

unknown_27:	?

unknown_28:	?

unknown_29:	?

unknown_30:	?&

unknown_31:??

unknown_32:	?&

unknown_33:??

unknown_34:	?

unknown_35:	?

unknown_36:	?

unknown_37:	?

unknown_38:	?&

unknown_39:??

unknown_40:	?&

unknown_41:??

unknown_42:	?&

unknown_43:??

unknown_44:	?&

unknown_45:??

unknown_46:	?&

unknown_47:??

unknown_48:	?&

unknown_49:??

unknown_50:	?%

unknown_51:@?

unknown_52:@%

unknown_53:?@

unknown_54:@$

unknown_55:@@

unknown_56:@$

unknown_57: @

unknown_58: $

unknown_59:@ 

unknown_60: $

unknown_61:  

unknown_62: $

unknown_63:  

unknown_64: $

unknown_65: 

unknown_66:
identity??StatefulPartitionedCall?	
StatefulPartitionedCallStatefulPartitionedCallinput_3unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44
unknown_45
unknown_46
unknown_47
unknown_48
unknown_49
unknown_50
unknown_51
unknown_52
unknown_53
unknown_54
unknown_55
unknown_56
unknown_57
unknown_58
unknown_59
unknown_60
unknown_61
unknown_62
unknown_63
unknown_64
unknown_65
unknown_66*P
TinI
G2E*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*f
_read_only_resource_inputsH
FD	
 !"#$%&'()*+,-./0123456789:;<=>?@ABCD*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_model_2_layer_call_and_return_conditional_losses_44302y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:???????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:???????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:???????????
!
_user_specified_name	input_3
?
?
)__inference_conv2d_43_layer_call_fn_46132

inputs!
unknown:@@
	unknown_0:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_43_layer_call_and_return_conditional_losses_43180y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:???????????@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:???????????@: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:???????????@
 
_user_specified_nameinputs
?

c
D__inference_dropout_4_layer_call_and_return_conditional_losses_43897

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?m
dropout/MulMulinputsdropout/Const:output:0*
T0*0
_output_shapes
:?????????<<?C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*0
_output_shapes
:?????????<<?*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:?????????<<?x
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:?????????<<?r
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*0
_output_shapes
:?????????<<?b
IdentityIdentitydropout/Mul_1:z:0*
T0*0
_output_shapes
:?????????<<?"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????<<?:X T
0
_output_shapes
:?????????<<?
 
_user_specified_nameinputs
?
?
D__inference_conv2d_46_layer_call_and_return_conditional_losses_43251

inputs:
conv2d_readvariableop_resource:??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:??*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????<<?*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????<<?Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:?????????<<?j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:?????????<<?w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :?????????<<?: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:?????????<<?
 
_user_specified_nameinputs
?
?
Q__inference_batch_normalization_10_layer_call_and_return_conditional_losses_42610

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+??????????????????????????? : : : : :*
epsilon%o?:*
exponential_avg_factor%
?#<?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+??????????????????????????? ?
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+??????????????????????????? : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
Y
-__inference_concatenate_8_layer_call_fn_46643
inputs_0
inputs_1
identity?
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????<<?* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_concatenate_8_layer_call_and_return_conditional_losses_43353i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:?????????<<?"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:?????????<<?:?????????<<?:Z V
0
_output_shapes
:?????????<<?
"
_user_specified_name
inputs/0:ZV
0
_output_shapes
:?????????<<?
"
_user_specified_name
inputs/1
? 
?
M__inference_conv2d_transpose_8_layer_call_and_return_conditional_losses_46637

inputsD
(conv2d_transpose_readvariableop_resource:??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?conv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: J
stack/3Const*
_output_shapes
: *
dtype0*
value
B :?y
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*(
_output_shapes
:??*
dtype0?
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*B
_output_shapes0
.:,????????????????????????????*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,????????????????????????????z
IdentityIdentityBiasAdd:output:0^NoOp*
T0*B
_output_shapes0
.:,?????????????????????????????
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,????????????????????????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
Q__inference_batch_normalization_11_layer_call_and_return_conditional_losses_46205

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????@?
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????@: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
??
?:
B__inference_model_2_layer_call_and_return_conditional_losses_45531

inputsB
(conv2d_40_conv2d_readvariableop_resource: 7
)conv2d_40_biasadd_readvariableop_resource: B
(conv2d_41_conv2d_readvariableop_resource:  7
)conv2d_41_biasadd_readvariableop_resource: <
.batch_normalization_10_readvariableop_resource: >
0batch_normalization_10_readvariableop_1_resource: M
?batch_normalization_10_fusedbatchnormv3_readvariableop_resource: O
Abatch_normalization_10_fusedbatchnormv3_readvariableop_1_resource: B
(conv2d_42_conv2d_readvariableop_resource: @7
)conv2d_42_biasadd_readvariableop_resource:@B
(conv2d_43_conv2d_readvariableop_resource:@@7
)conv2d_43_biasadd_readvariableop_resource:@<
.batch_normalization_11_readvariableop_resource:@>
0batch_normalization_11_readvariableop_1_resource:@M
?batch_normalization_11_fusedbatchnormv3_readvariableop_resource:@O
Abatch_normalization_11_fusedbatchnormv3_readvariableop_1_resource:@C
(conv2d_44_conv2d_readvariableop_resource:@?8
)conv2d_44_biasadd_readvariableop_resource:	?D
(conv2d_45_conv2d_readvariableop_resource:??8
)conv2d_45_biasadd_readvariableop_resource:	?=
.batch_normalization_12_readvariableop_resource:	??
0batch_normalization_12_readvariableop_1_resource:	?N
?batch_normalization_12_fusedbatchnormv3_readvariableop_resource:	?P
Abatch_normalization_12_fusedbatchnormv3_readvariableop_1_resource:	?D
(conv2d_46_conv2d_readvariableop_resource:??8
)conv2d_46_biasadd_readvariableop_resource:	?D
(conv2d_47_conv2d_readvariableop_resource:??8
)conv2d_47_biasadd_readvariableop_resource:	?=
.batch_normalization_13_readvariableop_resource:	??
0batch_normalization_13_readvariableop_1_resource:	?N
?batch_normalization_13_fusedbatchnormv3_readvariableop_resource:	?P
Abatch_normalization_13_fusedbatchnormv3_readvariableop_1_resource:	?D
(conv2d_48_conv2d_readvariableop_resource:??8
)conv2d_48_biasadd_readvariableop_resource:	?D
(conv2d_49_conv2d_readvariableop_resource:??8
)conv2d_49_biasadd_readvariableop_resource:	?=
.batch_normalization_14_readvariableop_resource:	??
0batch_normalization_14_readvariableop_1_resource:	?N
?batch_normalization_14_fusedbatchnormv3_readvariableop_resource:	?P
Abatch_normalization_14_fusedbatchnormv3_readvariableop_1_resource:	?W
;conv2d_transpose_8_conv2d_transpose_readvariableop_resource:??A
2conv2d_transpose_8_biasadd_readvariableop_resource:	?D
(conv2d_50_conv2d_readvariableop_resource:??8
)conv2d_50_biasadd_readvariableop_resource:	?D
(conv2d_51_conv2d_readvariableop_resource:??8
)conv2d_51_biasadd_readvariableop_resource:	?W
;conv2d_transpose_9_conv2d_transpose_readvariableop_resource:??A
2conv2d_transpose_9_biasadd_readvariableop_resource:	?D
(conv2d_52_conv2d_readvariableop_resource:??8
)conv2d_52_biasadd_readvariableop_resource:	?D
(conv2d_53_conv2d_readvariableop_resource:??8
)conv2d_53_biasadd_readvariableop_resource:	?W
<conv2d_transpose_10_conv2d_transpose_readvariableop_resource:@?A
3conv2d_transpose_10_biasadd_readvariableop_resource:@C
(conv2d_54_conv2d_readvariableop_resource:?@7
)conv2d_54_biasadd_readvariableop_resource:@B
(conv2d_55_conv2d_readvariableop_resource:@@7
)conv2d_55_biasadd_readvariableop_resource:@V
<conv2d_transpose_11_conv2d_transpose_readvariableop_resource: @A
3conv2d_transpose_11_biasadd_readvariableop_resource: B
(conv2d_56_conv2d_readvariableop_resource:@ 7
)conv2d_56_biasadd_readvariableop_resource: B
(conv2d_57_conv2d_readvariableop_resource:  7
)conv2d_57_biasadd_readvariableop_resource: B
(conv2d_58_conv2d_readvariableop_resource:  7
)conv2d_58_biasadd_readvariableop_resource: B
(conv2d_59_conv2d_readvariableop_resource: 7
)conv2d_59_biasadd_readvariableop_resource:
identity??6batch_normalization_10/FusedBatchNormV3/ReadVariableOp?8batch_normalization_10/FusedBatchNormV3/ReadVariableOp_1?%batch_normalization_10/ReadVariableOp?'batch_normalization_10/ReadVariableOp_1?6batch_normalization_11/FusedBatchNormV3/ReadVariableOp?8batch_normalization_11/FusedBatchNormV3/ReadVariableOp_1?%batch_normalization_11/ReadVariableOp?'batch_normalization_11/ReadVariableOp_1?6batch_normalization_12/FusedBatchNormV3/ReadVariableOp?8batch_normalization_12/FusedBatchNormV3/ReadVariableOp_1?%batch_normalization_12/ReadVariableOp?'batch_normalization_12/ReadVariableOp_1?6batch_normalization_13/FusedBatchNormV3/ReadVariableOp?8batch_normalization_13/FusedBatchNormV3/ReadVariableOp_1?%batch_normalization_13/ReadVariableOp?'batch_normalization_13/ReadVariableOp_1?6batch_normalization_14/FusedBatchNormV3/ReadVariableOp?8batch_normalization_14/FusedBatchNormV3/ReadVariableOp_1?%batch_normalization_14/ReadVariableOp?'batch_normalization_14/ReadVariableOp_1? conv2d_40/BiasAdd/ReadVariableOp?conv2d_40/Conv2D/ReadVariableOp? conv2d_41/BiasAdd/ReadVariableOp?conv2d_41/Conv2D/ReadVariableOp? conv2d_42/BiasAdd/ReadVariableOp?conv2d_42/Conv2D/ReadVariableOp? conv2d_43/BiasAdd/ReadVariableOp?conv2d_43/Conv2D/ReadVariableOp? conv2d_44/BiasAdd/ReadVariableOp?conv2d_44/Conv2D/ReadVariableOp? conv2d_45/BiasAdd/ReadVariableOp?conv2d_45/Conv2D/ReadVariableOp? conv2d_46/BiasAdd/ReadVariableOp?conv2d_46/Conv2D/ReadVariableOp? conv2d_47/BiasAdd/ReadVariableOp?conv2d_47/Conv2D/ReadVariableOp? conv2d_48/BiasAdd/ReadVariableOp?conv2d_48/Conv2D/ReadVariableOp? conv2d_49/BiasAdd/ReadVariableOp?conv2d_49/Conv2D/ReadVariableOp? conv2d_50/BiasAdd/ReadVariableOp?conv2d_50/Conv2D/ReadVariableOp? conv2d_51/BiasAdd/ReadVariableOp?conv2d_51/Conv2D/ReadVariableOp? conv2d_52/BiasAdd/ReadVariableOp?conv2d_52/Conv2D/ReadVariableOp? conv2d_53/BiasAdd/ReadVariableOp?conv2d_53/Conv2D/ReadVariableOp? conv2d_54/BiasAdd/ReadVariableOp?conv2d_54/Conv2D/ReadVariableOp? conv2d_55/BiasAdd/ReadVariableOp?conv2d_55/Conv2D/ReadVariableOp? conv2d_56/BiasAdd/ReadVariableOp?conv2d_56/Conv2D/ReadVariableOp? conv2d_57/BiasAdd/ReadVariableOp?conv2d_57/Conv2D/ReadVariableOp? conv2d_58/BiasAdd/ReadVariableOp?conv2d_58/Conv2D/ReadVariableOp? conv2d_59/BiasAdd/ReadVariableOp?conv2d_59/Conv2D/ReadVariableOp?*conv2d_transpose_10/BiasAdd/ReadVariableOp?3conv2d_transpose_10/conv2d_transpose/ReadVariableOp?*conv2d_transpose_11/BiasAdd/ReadVariableOp?3conv2d_transpose_11/conv2d_transpose/ReadVariableOp?)conv2d_transpose_8/BiasAdd/ReadVariableOp?2conv2d_transpose_8/conv2d_transpose/ReadVariableOp?)conv2d_transpose_9/BiasAdd/ReadVariableOp?2conv2d_transpose_9/conv2d_transpose/ReadVariableOp?
conv2d_40/Conv2D/ReadVariableOpReadVariableOp(conv2d_40_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0?
conv2d_40/Conv2DConv2Dinputs'conv2d_40/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? *
paddingSAME*
strides
?
 conv2d_40/BiasAdd/ReadVariableOpReadVariableOp)conv2d_40_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
conv2d_40/BiasAddBiasAddconv2d_40/Conv2D:output:0(conv2d_40/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? n
conv2d_40/ReluReluconv2d_40/BiasAdd:output:0*
T0*1
_output_shapes
:??????????? ?
conv2d_41/Conv2D/ReadVariableOpReadVariableOp(conv2d_41_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0?
conv2d_41/Conv2DConv2Dconv2d_40/Relu:activations:0'conv2d_41/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? *
paddingSAME*
strides
?
 conv2d_41/BiasAdd/ReadVariableOpReadVariableOp)conv2d_41_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
conv2d_41/BiasAddBiasAddconv2d_41/Conv2D:output:0(conv2d_41/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? n
conv2d_41/ReluReluconv2d_41/BiasAdd:output:0*
T0*1
_output_shapes
:??????????? ?
%batch_normalization_10/ReadVariableOpReadVariableOp.batch_normalization_10_readvariableop_resource*
_output_shapes
: *
dtype0?
'batch_normalization_10/ReadVariableOp_1ReadVariableOp0batch_normalization_10_readvariableop_1_resource*
_output_shapes
: *
dtype0?
6batch_normalization_10/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_10_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0?
8batch_normalization_10/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_10_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0?
'batch_normalization_10/FusedBatchNormV3FusedBatchNormV3conv2d_41/Relu:activations:0-batch_normalization_10/ReadVariableOp:value:0/batch_normalization_10/ReadVariableOp_1:value:0>batch_normalization_10/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_10/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*M
_output_shapes;
9:??????????? : : : : :*
epsilon%o?:*
is_training( ?
max_pooling2d_8/MaxPoolMaxPool+batch_normalization_10/FusedBatchNormV3:y:0*1
_output_shapes
:??????????? *
ksize
*
paddingVALID*
strides
?
conv2d_42/Conv2D/ReadVariableOpReadVariableOp(conv2d_42_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0?
conv2d_42/Conv2DConv2D max_pooling2d_8/MaxPool:output:0'conv2d_42/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????@*
paddingSAME*
strides
?
 conv2d_42/BiasAdd/ReadVariableOpReadVariableOp)conv2d_42_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
conv2d_42/BiasAddBiasAddconv2d_42/Conv2D:output:0(conv2d_42/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????@n
conv2d_42/ReluReluconv2d_42/BiasAdd:output:0*
T0*1
_output_shapes
:???????????@?
conv2d_43/Conv2D/ReadVariableOpReadVariableOp(conv2d_43_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0?
conv2d_43/Conv2DConv2Dconv2d_42/Relu:activations:0'conv2d_43/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????@*
paddingSAME*
strides
?
 conv2d_43/BiasAdd/ReadVariableOpReadVariableOp)conv2d_43_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
conv2d_43/BiasAddBiasAddconv2d_43/Conv2D:output:0(conv2d_43/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????@n
conv2d_43/ReluReluconv2d_43/BiasAdd:output:0*
T0*1
_output_shapes
:???????????@?
%batch_normalization_11/ReadVariableOpReadVariableOp.batch_normalization_11_readvariableop_resource*
_output_shapes
:@*
dtype0?
'batch_normalization_11/ReadVariableOp_1ReadVariableOp0batch_normalization_11_readvariableop_1_resource*
_output_shapes
:@*
dtype0?
6batch_normalization_11/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_11_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0?
8batch_normalization_11/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_11_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0?
'batch_normalization_11/FusedBatchNormV3FusedBatchNormV3conv2d_43/Relu:activations:0-batch_normalization_11/ReadVariableOp:value:0/batch_normalization_11/ReadVariableOp_1:value:0>batch_normalization_11/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_11/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*M
_output_shapes;
9:???????????@:@:@:@:@:*
epsilon%o?:*
is_training( ?
max_pooling2d_9/MaxPoolMaxPool+batch_normalization_11/FusedBatchNormV3:y:0*/
_output_shapes
:?????????xx@*
ksize
*
paddingVALID*
strides
?
conv2d_44/Conv2D/ReadVariableOpReadVariableOp(conv2d_44_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype0?
conv2d_44/Conv2DConv2D max_pooling2d_9/MaxPool:output:0'conv2d_44/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????xx?*
paddingSAME*
strides
?
 conv2d_44/BiasAdd/ReadVariableOpReadVariableOp)conv2d_44_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
conv2d_44/BiasAddBiasAddconv2d_44/Conv2D:output:0(conv2d_44/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????xx?m
conv2d_44/ReluReluconv2d_44/BiasAdd:output:0*
T0*0
_output_shapes
:?????????xx??
conv2d_45/Conv2D/ReadVariableOpReadVariableOp(conv2d_45_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype0?
conv2d_45/Conv2DConv2Dconv2d_44/Relu:activations:0'conv2d_45/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????xx?*
paddingSAME*
strides
?
 conv2d_45/BiasAdd/ReadVariableOpReadVariableOp)conv2d_45_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
conv2d_45/BiasAddBiasAddconv2d_45/Conv2D:output:0(conv2d_45/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????xx?m
conv2d_45/ReluReluconv2d_45/BiasAdd:output:0*
T0*0
_output_shapes
:?????????xx??
%batch_normalization_12/ReadVariableOpReadVariableOp.batch_normalization_12_readvariableop_resource*
_output_shapes	
:?*
dtype0?
'batch_normalization_12/ReadVariableOp_1ReadVariableOp0batch_normalization_12_readvariableop_1_resource*
_output_shapes	
:?*
dtype0?
6batch_normalization_12/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_12_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype0?
8batch_normalization_12/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_12_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype0?
'batch_normalization_12/FusedBatchNormV3FusedBatchNormV3conv2d_45/Relu:activations:0-batch_normalization_12/ReadVariableOp:value:0/batch_normalization_12/ReadVariableOp_1:value:0>batch_normalization_12/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_12/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:?????????xx?:?:?:?:?:*
epsilon%o?:*
is_training( ?
max_pooling2d_10/MaxPoolMaxPool+batch_normalization_12/FusedBatchNormV3:y:0*0
_output_shapes
:?????????<<?*
ksize
*
paddingVALID*
strides
?
conv2d_46/Conv2D/ReadVariableOpReadVariableOp(conv2d_46_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype0?
conv2d_46/Conv2DConv2D!max_pooling2d_10/MaxPool:output:0'conv2d_46/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????<<?*
paddingSAME*
strides
?
 conv2d_46/BiasAdd/ReadVariableOpReadVariableOp)conv2d_46_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
conv2d_46/BiasAddBiasAddconv2d_46/Conv2D:output:0(conv2d_46/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????<<?m
conv2d_46/ReluReluconv2d_46/BiasAdd:output:0*
T0*0
_output_shapes
:?????????<<??
conv2d_47/Conv2D/ReadVariableOpReadVariableOp(conv2d_47_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype0?
conv2d_47/Conv2DConv2Dconv2d_46/Relu:activations:0'conv2d_47/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????<<?*
paddingSAME*
strides
?
 conv2d_47/BiasAdd/ReadVariableOpReadVariableOp)conv2d_47_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
conv2d_47/BiasAddBiasAddconv2d_47/Conv2D:output:0(conv2d_47/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????<<?m
conv2d_47/ReluReluconv2d_47/BiasAdd:output:0*
T0*0
_output_shapes
:?????????<<??
%batch_normalization_13/ReadVariableOpReadVariableOp.batch_normalization_13_readvariableop_resource*
_output_shapes	
:?*
dtype0?
'batch_normalization_13/ReadVariableOp_1ReadVariableOp0batch_normalization_13_readvariableop_1_resource*
_output_shapes	
:?*
dtype0?
6batch_normalization_13/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_13_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype0?
8batch_normalization_13/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_13_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype0?
'batch_normalization_13/FusedBatchNormV3FusedBatchNormV3conv2d_47/Relu:activations:0-batch_normalization_13/ReadVariableOp:value:0/batch_normalization_13/ReadVariableOp_1:value:0>batch_normalization_13/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_13/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:?????????<<?:?:?:?:?:*
epsilon%o?:*
is_training( ?
dropout_4/IdentityIdentity+batch_normalization_13/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:?????????<<??
max_pooling2d_11/MaxPoolMaxPooldropout_4/Identity:output:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
?
conv2d_48/Conv2D/ReadVariableOpReadVariableOp(conv2d_48_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype0?
conv2d_48/Conv2DConv2D!max_pooling2d_11/MaxPool:output:0'conv2d_48/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
?
 conv2d_48/BiasAdd/ReadVariableOpReadVariableOp)conv2d_48_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
conv2d_48/BiasAddBiasAddconv2d_48/Conv2D:output:0(conv2d_48/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????m
conv2d_48/ReluReluconv2d_48/BiasAdd:output:0*
T0*0
_output_shapes
:???????????
conv2d_49/Conv2D/ReadVariableOpReadVariableOp(conv2d_49_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype0?
conv2d_49/Conv2DConv2Dconv2d_48/Relu:activations:0'conv2d_49/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
?
 conv2d_49/BiasAdd/ReadVariableOpReadVariableOp)conv2d_49_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
conv2d_49/BiasAddBiasAddconv2d_49/Conv2D:output:0(conv2d_49/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????m
conv2d_49/ReluReluconv2d_49/BiasAdd:output:0*
T0*0
_output_shapes
:???????????
%batch_normalization_14/ReadVariableOpReadVariableOp.batch_normalization_14_readvariableop_resource*
_output_shapes	
:?*
dtype0?
'batch_normalization_14/ReadVariableOp_1ReadVariableOp0batch_normalization_14_readvariableop_1_resource*
_output_shapes	
:?*
dtype0?
6batch_normalization_14/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_14_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype0?
8batch_normalization_14/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_14_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype0?
'batch_normalization_14/FusedBatchNormV3FusedBatchNormV3conv2d_49/Relu:activations:0-batch_normalization_14/ReadVariableOp:value:0/batch_normalization_14/ReadVariableOp_1:value:0>batch_normalization_14/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_14/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( ?
dropout_5/IdentityIdentity+batch_normalization_14/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:??????????c
conv2d_transpose_8/ShapeShapedropout_5/Identity:output:0*
T0*
_output_shapes
:p
&conv2d_transpose_8/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(conv2d_transpose_8/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(conv2d_transpose_8/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
 conv2d_transpose_8/strided_sliceStridedSlice!conv2d_transpose_8/Shape:output:0/conv2d_transpose_8/strided_slice/stack:output:01conv2d_transpose_8/strided_slice/stack_1:output:01conv2d_transpose_8/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask\
conv2d_transpose_8/stack/1Const*
_output_shapes
: *
dtype0*
value	B :<\
conv2d_transpose_8/stack/2Const*
_output_shapes
: *
dtype0*
value	B :<]
conv2d_transpose_8/stack/3Const*
_output_shapes
: *
dtype0*
value
B :??
conv2d_transpose_8/stackPack)conv2d_transpose_8/strided_slice:output:0#conv2d_transpose_8/stack/1:output:0#conv2d_transpose_8/stack/2:output:0#conv2d_transpose_8/stack/3:output:0*
N*
T0*
_output_shapes
:r
(conv2d_transpose_8/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*conv2d_transpose_8/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*conv2d_transpose_8/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
"conv2d_transpose_8/strided_slice_1StridedSlice!conv2d_transpose_8/stack:output:01conv2d_transpose_8/strided_slice_1/stack:output:03conv2d_transpose_8/strided_slice_1/stack_1:output:03conv2d_transpose_8/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
2conv2d_transpose_8/conv2d_transpose/ReadVariableOpReadVariableOp;conv2d_transpose_8_conv2d_transpose_readvariableop_resource*(
_output_shapes
:??*
dtype0?
#conv2d_transpose_8/conv2d_transposeConv2DBackpropInput!conv2d_transpose_8/stack:output:0:conv2d_transpose_8/conv2d_transpose/ReadVariableOp:value:0dropout_5/Identity:output:0*
T0*0
_output_shapes
:?????????<<?*
paddingSAME*
strides
?
)conv2d_transpose_8/BiasAdd/ReadVariableOpReadVariableOp2conv2d_transpose_8_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
conv2d_transpose_8/BiasAddBiasAdd,conv2d_transpose_8/conv2d_transpose:output:01conv2d_transpose_8/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????<<?[
concatenate_8/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :?
concatenate_8/concatConcatV2#conv2d_transpose_8/BiasAdd:output:0dropout_4/Identity:output:0"concatenate_8/concat/axis:output:0*
N*
T0*0
_output_shapes
:?????????<<??
conv2d_50/Conv2D/ReadVariableOpReadVariableOp(conv2d_50_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype0?
conv2d_50/Conv2DConv2Dconcatenate_8/concat:output:0'conv2d_50/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????<<?*
paddingSAME*
strides
?
 conv2d_50/BiasAdd/ReadVariableOpReadVariableOp)conv2d_50_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
conv2d_50/BiasAddBiasAddconv2d_50/Conv2D:output:0(conv2d_50/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????<<?m
conv2d_50/ReluReluconv2d_50/BiasAdd:output:0*
T0*0
_output_shapes
:?????????<<??
conv2d_51/Conv2D/ReadVariableOpReadVariableOp(conv2d_51_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype0?
conv2d_51/Conv2DConv2Dconv2d_50/Relu:activations:0'conv2d_51/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????<<?*
paddingSAME*
strides
?
 conv2d_51/BiasAdd/ReadVariableOpReadVariableOp)conv2d_51_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
conv2d_51/BiasAddBiasAddconv2d_51/Conv2D:output:0(conv2d_51/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????<<?m
conv2d_51/ReluReluconv2d_51/BiasAdd:output:0*
T0*0
_output_shapes
:?????????<<?d
conv2d_transpose_9/ShapeShapeconv2d_51/Relu:activations:0*
T0*
_output_shapes
:p
&conv2d_transpose_9/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(conv2d_transpose_9/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(conv2d_transpose_9/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
 conv2d_transpose_9/strided_sliceStridedSlice!conv2d_transpose_9/Shape:output:0/conv2d_transpose_9/strided_slice/stack:output:01conv2d_transpose_9/strided_slice/stack_1:output:01conv2d_transpose_9/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask\
conv2d_transpose_9/stack/1Const*
_output_shapes
: *
dtype0*
value	B :x\
conv2d_transpose_9/stack/2Const*
_output_shapes
: *
dtype0*
value	B :x]
conv2d_transpose_9/stack/3Const*
_output_shapes
: *
dtype0*
value
B :??
conv2d_transpose_9/stackPack)conv2d_transpose_9/strided_slice:output:0#conv2d_transpose_9/stack/1:output:0#conv2d_transpose_9/stack/2:output:0#conv2d_transpose_9/stack/3:output:0*
N*
T0*
_output_shapes
:r
(conv2d_transpose_9/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*conv2d_transpose_9/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*conv2d_transpose_9/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
"conv2d_transpose_9/strided_slice_1StridedSlice!conv2d_transpose_9/stack:output:01conv2d_transpose_9/strided_slice_1/stack:output:03conv2d_transpose_9/strided_slice_1/stack_1:output:03conv2d_transpose_9/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
2conv2d_transpose_9/conv2d_transpose/ReadVariableOpReadVariableOp;conv2d_transpose_9_conv2d_transpose_readvariableop_resource*(
_output_shapes
:??*
dtype0?
#conv2d_transpose_9/conv2d_transposeConv2DBackpropInput!conv2d_transpose_9/stack:output:0:conv2d_transpose_9/conv2d_transpose/ReadVariableOp:value:0conv2d_51/Relu:activations:0*
T0*0
_output_shapes
:?????????xx?*
paddingSAME*
strides
?
)conv2d_transpose_9/BiasAdd/ReadVariableOpReadVariableOp2conv2d_transpose_9_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
conv2d_transpose_9/BiasAddBiasAdd,conv2d_transpose_9/conv2d_transpose:output:01conv2d_transpose_9/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????xx?[
concatenate_9/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :?
concatenate_9/concatConcatV2#conv2d_transpose_9/BiasAdd:output:0+batch_normalization_12/FusedBatchNormV3:y:0"concatenate_9/concat/axis:output:0*
N*
T0*0
_output_shapes
:?????????xx??
conv2d_52/Conv2D/ReadVariableOpReadVariableOp(conv2d_52_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype0?
conv2d_52/Conv2DConv2Dconcatenate_9/concat:output:0'conv2d_52/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????xx?*
paddingSAME*
strides
?
 conv2d_52/BiasAdd/ReadVariableOpReadVariableOp)conv2d_52_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
conv2d_52/BiasAddBiasAddconv2d_52/Conv2D:output:0(conv2d_52/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????xx?m
conv2d_52/ReluReluconv2d_52/BiasAdd:output:0*
T0*0
_output_shapes
:?????????xx??
conv2d_53/Conv2D/ReadVariableOpReadVariableOp(conv2d_53_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype0?
conv2d_53/Conv2DConv2Dconv2d_52/Relu:activations:0'conv2d_53/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????xx?*
paddingSAME*
strides
?
 conv2d_53/BiasAdd/ReadVariableOpReadVariableOp)conv2d_53_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
conv2d_53/BiasAddBiasAddconv2d_53/Conv2D:output:0(conv2d_53/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????xx?m
conv2d_53/ReluReluconv2d_53/BiasAdd:output:0*
T0*0
_output_shapes
:?????????xx?e
conv2d_transpose_10/ShapeShapeconv2d_53/Relu:activations:0*
T0*
_output_shapes
:q
'conv2d_transpose_10/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: s
)conv2d_transpose_10/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:s
)conv2d_transpose_10/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
!conv2d_transpose_10/strided_sliceStridedSlice"conv2d_transpose_10/Shape:output:00conv2d_transpose_10/strided_slice/stack:output:02conv2d_transpose_10/strided_slice/stack_1:output:02conv2d_transpose_10/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
conv2d_transpose_10/stack/1Const*
_output_shapes
: *
dtype0*
value
B :?^
conv2d_transpose_10/stack/2Const*
_output_shapes
: *
dtype0*
value
B :?]
conv2d_transpose_10/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@?
conv2d_transpose_10/stackPack*conv2d_transpose_10/strided_slice:output:0$conv2d_transpose_10/stack/1:output:0$conv2d_transpose_10/stack/2:output:0$conv2d_transpose_10/stack/3:output:0*
N*
T0*
_output_shapes
:s
)conv2d_transpose_10/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+conv2d_transpose_10/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+conv2d_transpose_10/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
#conv2d_transpose_10/strided_slice_1StridedSlice"conv2d_transpose_10/stack:output:02conv2d_transpose_10/strided_slice_1/stack:output:04conv2d_transpose_10/strided_slice_1/stack_1:output:04conv2d_transpose_10/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
3conv2d_transpose_10/conv2d_transpose/ReadVariableOpReadVariableOp<conv2d_transpose_10_conv2d_transpose_readvariableop_resource*'
_output_shapes
:@?*
dtype0?
$conv2d_transpose_10/conv2d_transposeConv2DBackpropInput"conv2d_transpose_10/stack:output:0;conv2d_transpose_10/conv2d_transpose/ReadVariableOp:value:0conv2d_53/Relu:activations:0*
T0*1
_output_shapes
:???????????@*
paddingSAME*
strides
?
*conv2d_transpose_10/BiasAdd/ReadVariableOpReadVariableOp3conv2d_transpose_10_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
conv2d_transpose_10/BiasAddBiasAdd-conv2d_transpose_10/conv2d_transpose:output:02conv2d_transpose_10/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????@\
concatenate_10/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :?
concatenate_10/concatConcatV2$conv2d_transpose_10/BiasAdd:output:0+batch_normalization_11/FusedBatchNormV3:y:0#concatenate_10/concat/axis:output:0*
N*
T0*2
_output_shapes 
:?????????????
conv2d_54/Conv2D/ReadVariableOpReadVariableOp(conv2d_54_conv2d_readvariableop_resource*'
_output_shapes
:?@*
dtype0?
conv2d_54/Conv2DConv2Dconcatenate_10/concat:output:0'conv2d_54/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????@*
paddingSAME*
strides
?
 conv2d_54/BiasAdd/ReadVariableOpReadVariableOp)conv2d_54_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
conv2d_54/BiasAddBiasAddconv2d_54/Conv2D:output:0(conv2d_54/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????@n
conv2d_54/ReluReluconv2d_54/BiasAdd:output:0*
T0*1
_output_shapes
:???????????@?
conv2d_55/Conv2D/ReadVariableOpReadVariableOp(conv2d_55_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0?
conv2d_55/Conv2DConv2Dconv2d_54/Relu:activations:0'conv2d_55/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????@*
paddingSAME*
strides
?
 conv2d_55/BiasAdd/ReadVariableOpReadVariableOp)conv2d_55_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
conv2d_55/BiasAddBiasAddconv2d_55/Conv2D:output:0(conv2d_55/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????@n
conv2d_55/ReluReluconv2d_55/BiasAdd:output:0*
T0*1
_output_shapes
:???????????@e
conv2d_transpose_11/ShapeShapeconv2d_55/Relu:activations:0*
T0*
_output_shapes
:q
'conv2d_transpose_11/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: s
)conv2d_transpose_11/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:s
)conv2d_transpose_11/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
!conv2d_transpose_11/strided_sliceStridedSlice"conv2d_transpose_11/Shape:output:00conv2d_transpose_11/strided_slice/stack:output:02conv2d_transpose_11/strided_slice/stack_1:output:02conv2d_transpose_11/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
conv2d_transpose_11/stack/1Const*
_output_shapes
: *
dtype0*
value
B :?^
conv2d_transpose_11/stack/2Const*
_output_shapes
: *
dtype0*
value
B :?]
conv2d_transpose_11/stack/3Const*
_output_shapes
: *
dtype0*
value	B : ?
conv2d_transpose_11/stackPack*conv2d_transpose_11/strided_slice:output:0$conv2d_transpose_11/stack/1:output:0$conv2d_transpose_11/stack/2:output:0$conv2d_transpose_11/stack/3:output:0*
N*
T0*
_output_shapes
:s
)conv2d_transpose_11/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+conv2d_transpose_11/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+conv2d_transpose_11/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
#conv2d_transpose_11/strided_slice_1StridedSlice"conv2d_transpose_11/stack:output:02conv2d_transpose_11/strided_slice_1/stack:output:04conv2d_transpose_11/strided_slice_1/stack_1:output:04conv2d_transpose_11/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
3conv2d_transpose_11/conv2d_transpose/ReadVariableOpReadVariableOp<conv2d_transpose_11_conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype0?
$conv2d_transpose_11/conv2d_transposeConv2DBackpropInput"conv2d_transpose_11/stack:output:0;conv2d_transpose_11/conv2d_transpose/ReadVariableOp:value:0conv2d_55/Relu:activations:0*
T0*1
_output_shapes
:??????????? *
paddingSAME*
strides
?
*conv2d_transpose_11/BiasAdd/ReadVariableOpReadVariableOp3conv2d_transpose_11_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
conv2d_transpose_11/BiasAddBiasAdd-conv2d_transpose_11/conv2d_transpose:output:02conv2d_transpose_11/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? \
concatenate_11/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :?
concatenate_11/concatConcatV2$conv2d_transpose_11/BiasAdd:output:0+batch_normalization_10/FusedBatchNormV3:y:0#concatenate_11/concat/axis:output:0*
N*
T0*1
_output_shapes
:???????????@?
conv2d_56/Conv2D/ReadVariableOpReadVariableOp(conv2d_56_conv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype0?
conv2d_56/Conv2DConv2Dconcatenate_11/concat:output:0'conv2d_56/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? *
paddingSAME*
strides
?
 conv2d_56/BiasAdd/ReadVariableOpReadVariableOp)conv2d_56_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
conv2d_56/BiasAddBiasAddconv2d_56/Conv2D:output:0(conv2d_56/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? n
conv2d_56/ReluReluconv2d_56/BiasAdd:output:0*
T0*1
_output_shapes
:??????????? ?
conv2d_57/Conv2D/ReadVariableOpReadVariableOp(conv2d_57_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0?
conv2d_57/Conv2DConv2Dconv2d_56/Relu:activations:0'conv2d_57/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? *
paddingSAME*
strides
?
 conv2d_57/BiasAdd/ReadVariableOpReadVariableOp)conv2d_57_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
conv2d_57/BiasAddBiasAddconv2d_57/Conv2D:output:0(conv2d_57/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? n
conv2d_57/ReluReluconv2d_57/BiasAdd:output:0*
T0*1
_output_shapes
:??????????? ?
conv2d_58/Conv2D/ReadVariableOpReadVariableOp(conv2d_58_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0?
conv2d_58/Conv2DConv2Dconv2d_57/Relu:activations:0'conv2d_58/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? *
paddingSAME*
strides
?
 conv2d_58/BiasAdd/ReadVariableOpReadVariableOp)conv2d_58_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
conv2d_58/BiasAddBiasAddconv2d_58/Conv2D:output:0(conv2d_58/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? n
conv2d_58/ReluReluconv2d_58/BiasAdd:output:0*
T0*1
_output_shapes
:??????????? ?
conv2d_59/Conv2D/ReadVariableOpReadVariableOp(conv2d_59_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0?
conv2d_59/Conv2DConv2Dconv2d_58/Relu:activations:0'conv2d_59/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
?
 conv2d_59/BiasAdd/ReadVariableOpReadVariableOp)conv2d_59_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
conv2d_59/BiasAddBiasAddconv2d_59/Conv2D:output:0(conv2d_59/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????s
IdentityIdentityconv2d_59/BiasAdd:output:0^NoOp*
T0*1
_output_shapes
:????????????
NoOpNoOp7^batch_normalization_10/FusedBatchNormV3/ReadVariableOp9^batch_normalization_10/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_10/ReadVariableOp(^batch_normalization_10/ReadVariableOp_17^batch_normalization_11/FusedBatchNormV3/ReadVariableOp9^batch_normalization_11/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_11/ReadVariableOp(^batch_normalization_11/ReadVariableOp_17^batch_normalization_12/FusedBatchNormV3/ReadVariableOp9^batch_normalization_12/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_12/ReadVariableOp(^batch_normalization_12/ReadVariableOp_17^batch_normalization_13/FusedBatchNormV3/ReadVariableOp9^batch_normalization_13/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_13/ReadVariableOp(^batch_normalization_13/ReadVariableOp_17^batch_normalization_14/FusedBatchNormV3/ReadVariableOp9^batch_normalization_14/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_14/ReadVariableOp(^batch_normalization_14/ReadVariableOp_1!^conv2d_40/BiasAdd/ReadVariableOp ^conv2d_40/Conv2D/ReadVariableOp!^conv2d_41/BiasAdd/ReadVariableOp ^conv2d_41/Conv2D/ReadVariableOp!^conv2d_42/BiasAdd/ReadVariableOp ^conv2d_42/Conv2D/ReadVariableOp!^conv2d_43/BiasAdd/ReadVariableOp ^conv2d_43/Conv2D/ReadVariableOp!^conv2d_44/BiasAdd/ReadVariableOp ^conv2d_44/Conv2D/ReadVariableOp!^conv2d_45/BiasAdd/ReadVariableOp ^conv2d_45/Conv2D/ReadVariableOp!^conv2d_46/BiasAdd/ReadVariableOp ^conv2d_46/Conv2D/ReadVariableOp!^conv2d_47/BiasAdd/ReadVariableOp ^conv2d_47/Conv2D/ReadVariableOp!^conv2d_48/BiasAdd/ReadVariableOp ^conv2d_48/Conv2D/ReadVariableOp!^conv2d_49/BiasAdd/ReadVariableOp ^conv2d_49/Conv2D/ReadVariableOp!^conv2d_50/BiasAdd/ReadVariableOp ^conv2d_50/Conv2D/ReadVariableOp!^conv2d_51/BiasAdd/ReadVariableOp ^conv2d_51/Conv2D/ReadVariableOp!^conv2d_52/BiasAdd/ReadVariableOp ^conv2d_52/Conv2D/ReadVariableOp!^conv2d_53/BiasAdd/ReadVariableOp ^conv2d_53/Conv2D/ReadVariableOp!^conv2d_54/BiasAdd/ReadVariableOp ^conv2d_54/Conv2D/ReadVariableOp!^conv2d_55/BiasAdd/ReadVariableOp ^conv2d_55/Conv2D/ReadVariableOp!^conv2d_56/BiasAdd/ReadVariableOp ^conv2d_56/Conv2D/ReadVariableOp!^conv2d_57/BiasAdd/ReadVariableOp ^conv2d_57/Conv2D/ReadVariableOp!^conv2d_58/BiasAdd/ReadVariableOp ^conv2d_58/Conv2D/ReadVariableOp!^conv2d_59/BiasAdd/ReadVariableOp ^conv2d_59/Conv2D/ReadVariableOp+^conv2d_transpose_10/BiasAdd/ReadVariableOp4^conv2d_transpose_10/conv2d_transpose/ReadVariableOp+^conv2d_transpose_11/BiasAdd/ReadVariableOp4^conv2d_transpose_11/conv2d_transpose/ReadVariableOp*^conv2d_transpose_8/BiasAdd/ReadVariableOp3^conv2d_transpose_8/conv2d_transpose/ReadVariableOp*^conv2d_transpose_9/BiasAdd/ReadVariableOp3^conv2d_transpose_9/conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:???????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2p
6batch_normalization_10/FusedBatchNormV3/ReadVariableOp6batch_normalization_10/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_10/FusedBatchNormV3/ReadVariableOp_18batch_normalization_10/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_10/ReadVariableOp%batch_normalization_10/ReadVariableOp2R
'batch_normalization_10/ReadVariableOp_1'batch_normalization_10/ReadVariableOp_12p
6batch_normalization_11/FusedBatchNormV3/ReadVariableOp6batch_normalization_11/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_11/FusedBatchNormV3/ReadVariableOp_18batch_normalization_11/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_11/ReadVariableOp%batch_normalization_11/ReadVariableOp2R
'batch_normalization_11/ReadVariableOp_1'batch_normalization_11/ReadVariableOp_12p
6batch_normalization_12/FusedBatchNormV3/ReadVariableOp6batch_normalization_12/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_12/FusedBatchNormV3/ReadVariableOp_18batch_normalization_12/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_12/ReadVariableOp%batch_normalization_12/ReadVariableOp2R
'batch_normalization_12/ReadVariableOp_1'batch_normalization_12/ReadVariableOp_12p
6batch_normalization_13/FusedBatchNormV3/ReadVariableOp6batch_normalization_13/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_13/FusedBatchNormV3/ReadVariableOp_18batch_normalization_13/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_13/ReadVariableOp%batch_normalization_13/ReadVariableOp2R
'batch_normalization_13/ReadVariableOp_1'batch_normalization_13/ReadVariableOp_12p
6batch_normalization_14/FusedBatchNormV3/ReadVariableOp6batch_normalization_14/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_14/FusedBatchNormV3/ReadVariableOp_18batch_normalization_14/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_14/ReadVariableOp%batch_normalization_14/ReadVariableOp2R
'batch_normalization_14/ReadVariableOp_1'batch_normalization_14/ReadVariableOp_12D
 conv2d_40/BiasAdd/ReadVariableOp conv2d_40/BiasAdd/ReadVariableOp2B
conv2d_40/Conv2D/ReadVariableOpconv2d_40/Conv2D/ReadVariableOp2D
 conv2d_41/BiasAdd/ReadVariableOp conv2d_41/BiasAdd/ReadVariableOp2B
conv2d_41/Conv2D/ReadVariableOpconv2d_41/Conv2D/ReadVariableOp2D
 conv2d_42/BiasAdd/ReadVariableOp conv2d_42/BiasAdd/ReadVariableOp2B
conv2d_42/Conv2D/ReadVariableOpconv2d_42/Conv2D/ReadVariableOp2D
 conv2d_43/BiasAdd/ReadVariableOp conv2d_43/BiasAdd/ReadVariableOp2B
conv2d_43/Conv2D/ReadVariableOpconv2d_43/Conv2D/ReadVariableOp2D
 conv2d_44/BiasAdd/ReadVariableOp conv2d_44/BiasAdd/ReadVariableOp2B
conv2d_44/Conv2D/ReadVariableOpconv2d_44/Conv2D/ReadVariableOp2D
 conv2d_45/BiasAdd/ReadVariableOp conv2d_45/BiasAdd/ReadVariableOp2B
conv2d_45/Conv2D/ReadVariableOpconv2d_45/Conv2D/ReadVariableOp2D
 conv2d_46/BiasAdd/ReadVariableOp conv2d_46/BiasAdd/ReadVariableOp2B
conv2d_46/Conv2D/ReadVariableOpconv2d_46/Conv2D/ReadVariableOp2D
 conv2d_47/BiasAdd/ReadVariableOp conv2d_47/BiasAdd/ReadVariableOp2B
conv2d_47/Conv2D/ReadVariableOpconv2d_47/Conv2D/ReadVariableOp2D
 conv2d_48/BiasAdd/ReadVariableOp conv2d_48/BiasAdd/ReadVariableOp2B
conv2d_48/Conv2D/ReadVariableOpconv2d_48/Conv2D/ReadVariableOp2D
 conv2d_49/BiasAdd/ReadVariableOp conv2d_49/BiasAdd/ReadVariableOp2B
conv2d_49/Conv2D/ReadVariableOpconv2d_49/Conv2D/ReadVariableOp2D
 conv2d_50/BiasAdd/ReadVariableOp conv2d_50/BiasAdd/ReadVariableOp2B
conv2d_50/Conv2D/ReadVariableOpconv2d_50/Conv2D/ReadVariableOp2D
 conv2d_51/BiasAdd/ReadVariableOp conv2d_51/BiasAdd/ReadVariableOp2B
conv2d_51/Conv2D/ReadVariableOpconv2d_51/Conv2D/ReadVariableOp2D
 conv2d_52/BiasAdd/ReadVariableOp conv2d_52/BiasAdd/ReadVariableOp2B
conv2d_52/Conv2D/ReadVariableOpconv2d_52/Conv2D/ReadVariableOp2D
 conv2d_53/BiasAdd/ReadVariableOp conv2d_53/BiasAdd/ReadVariableOp2B
conv2d_53/Conv2D/ReadVariableOpconv2d_53/Conv2D/ReadVariableOp2D
 conv2d_54/BiasAdd/ReadVariableOp conv2d_54/BiasAdd/ReadVariableOp2B
conv2d_54/Conv2D/ReadVariableOpconv2d_54/Conv2D/ReadVariableOp2D
 conv2d_55/BiasAdd/ReadVariableOp conv2d_55/BiasAdd/ReadVariableOp2B
conv2d_55/Conv2D/ReadVariableOpconv2d_55/Conv2D/ReadVariableOp2D
 conv2d_56/BiasAdd/ReadVariableOp conv2d_56/BiasAdd/ReadVariableOp2B
conv2d_56/Conv2D/ReadVariableOpconv2d_56/Conv2D/ReadVariableOp2D
 conv2d_57/BiasAdd/ReadVariableOp conv2d_57/BiasAdd/ReadVariableOp2B
conv2d_57/Conv2D/ReadVariableOpconv2d_57/Conv2D/ReadVariableOp2D
 conv2d_58/BiasAdd/ReadVariableOp conv2d_58/BiasAdd/ReadVariableOp2B
conv2d_58/Conv2D/ReadVariableOpconv2d_58/Conv2D/ReadVariableOp2D
 conv2d_59/BiasAdd/ReadVariableOp conv2d_59/BiasAdd/ReadVariableOp2B
conv2d_59/Conv2D/ReadVariableOpconv2d_59/Conv2D/ReadVariableOp2X
*conv2d_transpose_10/BiasAdd/ReadVariableOp*conv2d_transpose_10/BiasAdd/ReadVariableOp2j
3conv2d_transpose_10/conv2d_transpose/ReadVariableOp3conv2d_transpose_10/conv2d_transpose/ReadVariableOp2X
*conv2d_transpose_11/BiasAdd/ReadVariableOp*conv2d_transpose_11/BiasAdd/ReadVariableOp2j
3conv2d_transpose_11/conv2d_transpose/ReadVariableOp3conv2d_transpose_11/conv2d_transpose/ReadVariableOp2V
)conv2d_transpose_8/BiasAdd/ReadVariableOp)conv2d_transpose_8/BiasAdd/ReadVariableOp2h
2conv2d_transpose_8/conv2d_transpose/ReadVariableOp2conv2d_transpose_8/conv2d_transpose/ReadVariableOp2V
)conv2d_transpose_9/BiasAdd/ReadVariableOp)conv2d_transpose_9/BiasAdd/ReadVariableOp2h
2conv2d_transpose_9/conv2d_transpose/ReadVariableOp2conv2d_transpose_9/conv2d_transpose/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
f
J__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_46215

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
Q__inference_batch_normalization_14_layer_call_and_return_conditional_losses_46550

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
is_training( ~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,?????????????????????????????
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
D__inference_conv2d_51_layer_call_and_return_conditional_losses_46690

inputs:
conv2d_readvariableop_resource:??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:??*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????<<?*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????<<?Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:?????????<<?j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:?????????<<?w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :?????????<<?: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:?????????<<?
 
_user_specified_nameinputs
??
? 
B__inference_model_2_layer_call_and_return_conditional_losses_44940
input_3)
conv2d_40_44764: 
conv2d_40_44766: )
conv2d_41_44769:  
conv2d_41_44771: *
batch_normalization_10_44774: *
batch_normalization_10_44776: *
batch_normalization_10_44778: *
batch_normalization_10_44780: )
conv2d_42_44784: @
conv2d_42_44786:@)
conv2d_43_44789:@@
conv2d_43_44791:@*
batch_normalization_11_44794:@*
batch_normalization_11_44796:@*
batch_normalization_11_44798:@*
batch_normalization_11_44800:@*
conv2d_44_44804:@?
conv2d_44_44806:	?+
conv2d_45_44809:??
conv2d_45_44811:	?+
batch_normalization_12_44814:	?+
batch_normalization_12_44816:	?+
batch_normalization_12_44818:	?+
batch_normalization_12_44820:	?+
conv2d_46_44824:??
conv2d_46_44826:	?+
conv2d_47_44829:??
conv2d_47_44831:	?+
batch_normalization_13_44834:	?+
batch_normalization_13_44836:	?+
batch_normalization_13_44838:	?+
batch_normalization_13_44840:	?+
conv2d_48_44845:??
conv2d_48_44847:	?+
conv2d_49_44850:??
conv2d_49_44852:	?+
batch_normalization_14_44855:	?+
batch_normalization_14_44857:	?+
batch_normalization_14_44859:	?+
batch_normalization_14_44861:	?4
conv2d_transpose_8_44865:??'
conv2d_transpose_8_44867:	?+
conv2d_50_44871:??
conv2d_50_44873:	?+
conv2d_51_44876:??
conv2d_51_44878:	?4
conv2d_transpose_9_44881:??'
conv2d_transpose_9_44883:	?+
conv2d_52_44887:??
conv2d_52_44889:	?+
conv2d_53_44892:??
conv2d_53_44894:	?4
conv2d_transpose_10_44897:@?'
conv2d_transpose_10_44899:@*
conv2d_54_44903:?@
conv2d_54_44905:@)
conv2d_55_44908:@@
conv2d_55_44910:@3
conv2d_transpose_11_44913: @'
conv2d_transpose_11_44915: )
conv2d_56_44919:@ 
conv2d_56_44921: )
conv2d_57_44924:  
conv2d_57_44926: )
conv2d_58_44929:  
conv2d_58_44931: )
conv2d_59_44934: 
conv2d_59_44936:
identity??.batch_normalization_10/StatefulPartitionedCall?.batch_normalization_11/StatefulPartitionedCall?.batch_normalization_12/StatefulPartitionedCall?.batch_normalization_13/StatefulPartitionedCall?.batch_normalization_14/StatefulPartitionedCall?!conv2d_40/StatefulPartitionedCall?!conv2d_41/StatefulPartitionedCall?!conv2d_42/StatefulPartitionedCall?!conv2d_43/StatefulPartitionedCall?!conv2d_44/StatefulPartitionedCall?!conv2d_45/StatefulPartitionedCall?!conv2d_46/StatefulPartitionedCall?!conv2d_47/StatefulPartitionedCall?!conv2d_48/StatefulPartitionedCall?!conv2d_49/StatefulPartitionedCall?!conv2d_50/StatefulPartitionedCall?!conv2d_51/StatefulPartitionedCall?!conv2d_52/StatefulPartitionedCall?!conv2d_53/StatefulPartitionedCall?!conv2d_54/StatefulPartitionedCall?!conv2d_55/StatefulPartitionedCall?!conv2d_56/StatefulPartitionedCall?!conv2d_57/StatefulPartitionedCall?!conv2d_58/StatefulPartitionedCall?!conv2d_59/StatefulPartitionedCall?+conv2d_transpose_10/StatefulPartitionedCall?+conv2d_transpose_11/StatefulPartitionedCall?*conv2d_transpose_8/StatefulPartitionedCall?*conv2d_transpose_9/StatefulPartitionedCall?!dropout_4/StatefulPartitionedCall?!dropout_5/StatefulPartitionedCall?
!conv2d_40/StatefulPartitionedCallStatefulPartitionedCallinput_3conv2d_40_44764conv2d_40_44766*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:??????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_40_layer_call_and_return_conditional_losses_43119?
!conv2d_41/StatefulPartitionedCallStatefulPartitionedCall*conv2d_40/StatefulPartitionedCall:output:0conv2d_41_44769conv2d_41_44771*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:??????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_41_layer_call_and_return_conditional_losses_43136?
.batch_normalization_10/StatefulPartitionedCallStatefulPartitionedCall*conv2d_41/StatefulPartitionedCall:output:0batch_normalization_10_44774batch_normalization_10_44776batch_normalization_10_44778batch_normalization_10_44780*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:??????????? *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Z
fURS
Q__inference_batch_normalization_10_layer_call_and_return_conditional_losses_42579?
max_pooling2d_8/PartitionedCallPartitionedCall7batch_normalization_10/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:??????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_42630?
!conv2d_42/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_8/PartitionedCall:output:0conv2d_42_44784conv2d_42_44786*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_42_layer_call_and_return_conditional_losses_43163?
!conv2d_43/StatefulPartitionedCallStatefulPartitionedCall*conv2d_42/StatefulPartitionedCall:output:0conv2d_43_44789conv2d_43_44791*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_43_layer_call_and_return_conditional_losses_43180?
.batch_normalization_11/StatefulPartitionedCallStatefulPartitionedCall*conv2d_43/StatefulPartitionedCall:output:0batch_normalization_11_44794batch_normalization_11_44796batch_normalization_11_44798batch_normalization_11_44800*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Z
fURS
Q__inference_batch_normalization_11_layer_call_and_return_conditional_losses_42655?
max_pooling2d_9/PartitionedCallPartitionedCall7batch_normalization_11/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????xx@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_42706?
!conv2d_44/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_9/PartitionedCall:output:0conv2d_44_44804conv2d_44_44806*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????xx?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_44_layer_call_and_return_conditional_losses_43207?
!conv2d_45/StatefulPartitionedCallStatefulPartitionedCall*conv2d_44/StatefulPartitionedCall:output:0conv2d_45_44809conv2d_45_44811*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????xx?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_45_layer_call_and_return_conditional_losses_43224?
.batch_normalization_12/StatefulPartitionedCallStatefulPartitionedCall*conv2d_45/StatefulPartitionedCall:output:0batch_normalization_12_44814batch_normalization_12_44816batch_normalization_12_44818batch_normalization_12_44820*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????xx?*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Z
fURS
Q__inference_batch_normalization_12_layer_call_and_return_conditional_losses_42731?
 max_pooling2d_10/PartitionedCallPartitionedCall7batch_normalization_12/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????<<?* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_max_pooling2d_10_layer_call_and_return_conditional_losses_42782?
!conv2d_46/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_10/PartitionedCall:output:0conv2d_46_44824conv2d_46_44826*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????<<?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_46_layer_call_and_return_conditional_losses_43251?
!conv2d_47/StatefulPartitionedCallStatefulPartitionedCall*conv2d_46/StatefulPartitionedCall:output:0conv2d_47_44829conv2d_47_44831*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????<<?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_47_layer_call_and_return_conditional_losses_43268?
.batch_normalization_13/StatefulPartitionedCallStatefulPartitionedCall*conv2d_47/StatefulPartitionedCall:output:0batch_normalization_13_44834batch_normalization_13_44836batch_normalization_13_44838batch_normalization_13_44840*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????<<?*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Z
fURS
Q__inference_batch_normalization_13_layer_call_and_return_conditional_losses_42807?
!dropout_4/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_13/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????<<?* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dropout_4_layer_call_and_return_conditional_losses_43897?
 max_pooling2d_11/PartitionedCallPartitionedCall*dropout_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_max_pooling2d_11_layer_call_and_return_conditional_losses_42858?
!conv2d_48/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_11/PartitionedCall:output:0conv2d_48_44845conv2d_48_44847*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_48_layer_call_and_return_conditional_losses_43302?
!conv2d_49/StatefulPartitionedCallStatefulPartitionedCall*conv2d_48/StatefulPartitionedCall:output:0conv2d_49_44850conv2d_49_44852*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_49_layer_call_and_return_conditional_losses_43319?
.batch_normalization_14/StatefulPartitionedCallStatefulPartitionedCall*conv2d_49/StatefulPartitionedCall:output:0batch_normalization_14_44855batch_normalization_14_44857batch_normalization_14_44859batch_normalization_14_44861*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Z
fURS
Q__inference_batch_normalization_14_layer_call_and_return_conditional_losses_42883?
!dropout_5/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_14/StatefulPartitionedCall:output:0"^dropout_4/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dropout_5_layer_call_and_return_conditional_losses_43854?
*conv2d_transpose_8/StatefulPartitionedCallStatefulPartitionedCall*dropout_5/StatefulPartitionedCall:output:0conv2d_transpose_8_44865conv2d_transpose_8_44867*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????<<?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_conv2d_transpose_8_layer_call_and_return_conditional_losses_42962?
concatenate_8/PartitionedCallPartitionedCall3conv2d_transpose_8/StatefulPartitionedCall:output:0*dropout_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????<<?* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_concatenate_8_layer_call_and_return_conditional_losses_43353?
!conv2d_50/StatefulPartitionedCallStatefulPartitionedCall&concatenate_8/PartitionedCall:output:0conv2d_50_44871conv2d_50_44873*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????<<?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_50_layer_call_and_return_conditional_losses_43366?
!conv2d_51/StatefulPartitionedCallStatefulPartitionedCall*conv2d_50/StatefulPartitionedCall:output:0conv2d_51_44876conv2d_51_44878*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????<<?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_51_layer_call_and_return_conditional_losses_43383?
*conv2d_transpose_9/StatefulPartitionedCallStatefulPartitionedCall*conv2d_51/StatefulPartitionedCall:output:0conv2d_transpose_9_44881conv2d_transpose_9_44883*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????xx?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_conv2d_transpose_9_layer_call_and_return_conditional_losses_43006?
concatenate_9/PartitionedCallPartitionedCall3conv2d_transpose_9/StatefulPartitionedCall:output:07batch_normalization_12/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????xx?* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_concatenate_9_layer_call_and_return_conditional_losses_43401?
!conv2d_52/StatefulPartitionedCallStatefulPartitionedCall&concatenate_9/PartitionedCall:output:0conv2d_52_44887conv2d_52_44889*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????xx?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_52_layer_call_and_return_conditional_losses_43414?
!conv2d_53/StatefulPartitionedCallStatefulPartitionedCall*conv2d_52/StatefulPartitionedCall:output:0conv2d_53_44892conv2d_53_44894*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????xx?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_53_layer_call_and_return_conditional_losses_43431?
+conv2d_transpose_10/StatefulPartitionedCallStatefulPartitionedCall*conv2d_53/StatefulPartitionedCall:output:0conv2d_transpose_10_44897conv2d_transpose_10_44899*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_conv2d_transpose_10_layer_call_and_return_conditional_losses_43050?
concatenate_10/PartitionedCallPartitionedCall4conv2d_transpose_10/StatefulPartitionedCall:output:07batch_normalization_11/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_concatenate_10_layer_call_and_return_conditional_losses_43449?
!conv2d_54/StatefulPartitionedCallStatefulPartitionedCall'concatenate_10/PartitionedCall:output:0conv2d_54_44903conv2d_54_44905*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_54_layer_call_and_return_conditional_losses_43462?
!conv2d_55/StatefulPartitionedCallStatefulPartitionedCall*conv2d_54/StatefulPartitionedCall:output:0conv2d_55_44908conv2d_55_44910*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_55_layer_call_and_return_conditional_losses_43479?
+conv2d_transpose_11/StatefulPartitionedCallStatefulPartitionedCall*conv2d_55/StatefulPartitionedCall:output:0conv2d_transpose_11_44913conv2d_transpose_11_44915*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:??????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_conv2d_transpose_11_layer_call_and_return_conditional_losses_43094?
concatenate_11/PartitionedCallPartitionedCall4conv2d_transpose_11/StatefulPartitionedCall:output:07batch_normalization_10/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_concatenate_11_layer_call_and_return_conditional_losses_43497?
!conv2d_56/StatefulPartitionedCallStatefulPartitionedCall'concatenate_11/PartitionedCall:output:0conv2d_56_44919conv2d_56_44921*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:??????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_56_layer_call_and_return_conditional_losses_43510?
!conv2d_57/StatefulPartitionedCallStatefulPartitionedCall*conv2d_56/StatefulPartitionedCall:output:0conv2d_57_44924conv2d_57_44926*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:??????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_57_layer_call_and_return_conditional_losses_43527?
!conv2d_58/StatefulPartitionedCallStatefulPartitionedCall*conv2d_57/StatefulPartitionedCall:output:0conv2d_58_44929conv2d_58_44931*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:??????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_58_layer_call_and_return_conditional_losses_43544?
!conv2d_59/StatefulPartitionedCallStatefulPartitionedCall*conv2d_58/StatefulPartitionedCall:output:0conv2d_59_44934conv2d_59_44936*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_59_layer_call_and_return_conditional_losses_43560?
IdentityIdentity*conv2d_59/StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:????????????

NoOpNoOp/^batch_normalization_10/StatefulPartitionedCall/^batch_normalization_11/StatefulPartitionedCall/^batch_normalization_12/StatefulPartitionedCall/^batch_normalization_13/StatefulPartitionedCall/^batch_normalization_14/StatefulPartitionedCall"^conv2d_40/StatefulPartitionedCall"^conv2d_41/StatefulPartitionedCall"^conv2d_42/StatefulPartitionedCall"^conv2d_43/StatefulPartitionedCall"^conv2d_44/StatefulPartitionedCall"^conv2d_45/StatefulPartitionedCall"^conv2d_46/StatefulPartitionedCall"^conv2d_47/StatefulPartitionedCall"^conv2d_48/StatefulPartitionedCall"^conv2d_49/StatefulPartitionedCall"^conv2d_50/StatefulPartitionedCall"^conv2d_51/StatefulPartitionedCall"^conv2d_52/StatefulPartitionedCall"^conv2d_53/StatefulPartitionedCall"^conv2d_54/StatefulPartitionedCall"^conv2d_55/StatefulPartitionedCall"^conv2d_56/StatefulPartitionedCall"^conv2d_57/StatefulPartitionedCall"^conv2d_58/StatefulPartitionedCall"^conv2d_59/StatefulPartitionedCall,^conv2d_transpose_10/StatefulPartitionedCall,^conv2d_transpose_11/StatefulPartitionedCall+^conv2d_transpose_8/StatefulPartitionedCall+^conv2d_transpose_9/StatefulPartitionedCall"^dropout_4/StatefulPartitionedCall"^dropout_5/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:???????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_10/StatefulPartitionedCall.batch_normalization_10/StatefulPartitionedCall2`
.batch_normalization_11/StatefulPartitionedCall.batch_normalization_11/StatefulPartitionedCall2`
.batch_normalization_12/StatefulPartitionedCall.batch_normalization_12/StatefulPartitionedCall2`
.batch_normalization_13/StatefulPartitionedCall.batch_normalization_13/StatefulPartitionedCall2`
.batch_normalization_14/StatefulPartitionedCall.batch_normalization_14/StatefulPartitionedCall2F
!conv2d_40/StatefulPartitionedCall!conv2d_40/StatefulPartitionedCall2F
!conv2d_41/StatefulPartitionedCall!conv2d_41/StatefulPartitionedCall2F
!conv2d_42/StatefulPartitionedCall!conv2d_42/StatefulPartitionedCall2F
!conv2d_43/StatefulPartitionedCall!conv2d_43/StatefulPartitionedCall2F
!conv2d_44/StatefulPartitionedCall!conv2d_44/StatefulPartitionedCall2F
!conv2d_45/StatefulPartitionedCall!conv2d_45/StatefulPartitionedCall2F
!conv2d_46/StatefulPartitionedCall!conv2d_46/StatefulPartitionedCall2F
!conv2d_47/StatefulPartitionedCall!conv2d_47/StatefulPartitionedCall2F
!conv2d_48/StatefulPartitionedCall!conv2d_48/StatefulPartitionedCall2F
!conv2d_49/StatefulPartitionedCall!conv2d_49/StatefulPartitionedCall2F
!conv2d_50/StatefulPartitionedCall!conv2d_50/StatefulPartitionedCall2F
!conv2d_51/StatefulPartitionedCall!conv2d_51/StatefulPartitionedCall2F
!conv2d_52/StatefulPartitionedCall!conv2d_52/StatefulPartitionedCall2F
!conv2d_53/StatefulPartitionedCall!conv2d_53/StatefulPartitionedCall2F
!conv2d_54/StatefulPartitionedCall!conv2d_54/StatefulPartitionedCall2F
!conv2d_55/StatefulPartitionedCall!conv2d_55/StatefulPartitionedCall2F
!conv2d_56/StatefulPartitionedCall!conv2d_56/StatefulPartitionedCall2F
!conv2d_57/StatefulPartitionedCall!conv2d_57/StatefulPartitionedCall2F
!conv2d_58/StatefulPartitionedCall!conv2d_58/StatefulPartitionedCall2F
!conv2d_59/StatefulPartitionedCall!conv2d_59/StatefulPartitionedCall2Z
+conv2d_transpose_10/StatefulPartitionedCall+conv2d_transpose_10/StatefulPartitionedCall2Z
+conv2d_transpose_11/StatefulPartitionedCall+conv2d_transpose_11/StatefulPartitionedCall2X
*conv2d_transpose_8/StatefulPartitionedCall*conv2d_transpose_8/StatefulPartitionedCall2X
*conv2d_transpose_9/StatefulPartitionedCall*conv2d_transpose_9/StatefulPartitionedCall2F
!dropout_4/StatefulPartitionedCall!dropout_4/StatefulPartitionedCall2F
!dropout_5/StatefulPartitionedCall!dropout_5/StatefulPartitionedCall:Z V
1
_output_shapes
:???????????
!
_user_specified_name	input_3
?
?
D__inference_conv2d_52_layer_call_and_return_conditional_losses_46765

inputs:
conv2d_readvariableop_resource:??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:??*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????xx?*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????xx?Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:?????????xx?j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:?????????xx?w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :?????????xx?: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:?????????xx?
 
_user_specified_nameinputs
?
b
)__inference_dropout_4_layer_call_fn_46439

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????<<?* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dropout_4_layer_call_and_return_conditional_losses_43897x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:?????????<<?`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????<<?22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:?????????<<?
 
_user_specified_nameinputs
?
?
D__inference_conv2d_47_layer_call_and_return_conditional_losses_43268

inputs:
conv2d_readvariableop_resource:??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:??*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????<<?*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????<<?Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:?????????<<?j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:?????????<<?w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :?????????<<?: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:?????????<<?
 
_user_specified_nameinputs
ȼ
?B
 __inference__wrapped_model_42557
input_3J
0model_2_conv2d_40_conv2d_readvariableop_resource: ?
1model_2_conv2d_40_biasadd_readvariableop_resource: J
0model_2_conv2d_41_conv2d_readvariableop_resource:  ?
1model_2_conv2d_41_biasadd_readvariableop_resource: D
6model_2_batch_normalization_10_readvariableop_resource: F
8model_2_batch_normalization_10_readvariableop_1_resource: U
Gmodel_2_batch_normalization_10_fusedbatchnormv3_readvariableop_resource: W
Imodel_2_batch_normalization_10_fusedbatchnormv3_readvariableop_1_resource: J
0model_2_conv2d_42_conv2d_readvariableop_resource: @?
1model_2_conv2d_42_biasadd_readvariableop_resource:@J
0model_2_conv2d_43_conv2d_readvariableop_resource:@@?
1model_2_conv2d_43_biasadd_readvariableop_resource:@D
6model_2_batch_normalization_11_readvariableop_resource:@F
8model_2_batch_normalization_11_readvariableop_1_resource:@U
Gmodel_2_batch_normalization_11_fusedbatchnormv3_readvariableop_resource:@W
Imodel_2_batch_normalization_11_fusedbatchnormv3_readvariableop_1_resource:@K
0model_2_conv2d_44_conv2d_readvariableop_resource:@?@
1model_2_conv2d_44_biasadd_readvariableop_resource:	?L
0model_2_conv2d_45_conv2d_readvariableop_resource:??@
1model_2_conv2d_45_biasadd_readvariableop_resource:	?E
6model_2_batch_normalization_12_readvariableop_resource:	?G
8model_2_batch_normalization_12_readvariableop_1_resource:	?V
Gmodel_2_batch_normalization_12_fusedbatchnormv3_readvariableop_resource:	?X
Imodel_2_batch_normalization_12_fusedbatchnormv3_readvariableop_1_resource:	?L
0model_2_conv2d_46_conv2d_readvariableop_resource:??@
1model_2_conv2d_46_biasadd_readvariableop_resource:	?L
0model_2_conv2d_47_conv2d_readvariableop_resource:??@
1model_2_conv2d_47_biasadd_readvariableop_resource:	?E
6model_2_batch_normalization_13_readvariableop_resource:	?G
8model_2_batch_normalization_13_readvariableop_1_resource:	?V
Gmodel_2_batch_normalization_13_fusedbatchnormv3_readvariableop_resource:	?X
Imodel_2_batch_normalization_13_fusedbatchnormv3_readvariableop_1_resource:	?L
0model_2_conv2d_48_conv2d_readvariableop_resource:??@
1model_2_conv2d_48_biasadd_readvariableop_resource:	?L
0model_2_conv2d_49_conv2d_readvariableop_resource:??@
1model_2_conv2d_49_biasadd_readvariableop_resource:	?E
6model_2_batch_normalization_14_readvariableop_resource:	?G
8model_2_batch_normalization_14_readvariableop_1_resource:	?V
Gmodel_2_batch_normalization_14_fusedbatchnormv3_readvariableop_resource:	?X
Imodel_2_batch_normalization_14_fusedbatchnormv3_readvariableop_1_resource:	?_
Cmodel_2_conv2d_transpose_8_conv2d_transpose_readvariableop_resource:??I
:model_2_conv2d_transpose_8_biasadd_readvariableop_resource:	?L
0model_2_conv2d_50_conv2d_readvariableop_resource:??@
1model_2_conv2d_50_biasadd_readvariableop_resource:	?L
0model_2_conv2d_51_conv2d_readvariableop_resource:??@
1model_2_conv2d_51_biasadd_readvariableop_resource:	?_
Cmodel_2_conv2d_transpose_9_conv2d_transpose_readvariableop_resource:??I
:model_2_conv2d_transpose_9_biasadd_readvariableop_resource:	?L
0model_2_conv2d_52_conv2d_readvariableop_resource:??@
1model_2_conv2d_52_biasadd_readvariableop_resource:	?L
0model_2_conv2d_53_conv2d_readvariableop_resource:??@
1model_2_conv2d_53_biasadd_readvariableop_resource:	?_
Dmodel_2_conv2d_transpose_10_conv2d_transpose_readvariableop_resource:@?I
;model_2_conv2d_transpose_10_biasadd_readvariableop_resource:@K
0model_2_conv2d_54_conv2d_readvariableop_resource:?@?
1model_2_conv2d_54_biasadd_readvariableop_resource:@J
0model_2_conv2d_55_conv2d_readvariableop_resource:@@?
1model_2_conv2d_55_biasadd_readvariableop_resource:@^
Dmodel_2_conv2d_transpose_11_conv2d_transpose_readvariableop_resource: @I
;model_2_conv2d_transpose_11_biasadd_readvariableop_resource: J
0model_2_conv2d_56_conv2d_readvariableop_resource:@ ?
1model_2_conv2d_56_biasadd_readvariableop_resource: J
0model_2_conv2d_57_conv2d_readvariableop_resource:  ?
1model_2_conv2d_57_biasadd_readvariableop_resource: J
0model_2_conv2d_58_conv2d_readvariableop_resource:  ?
1model_2_conv2d_58_biasadd_readvariableop_resource: J
0model_2_conv2d_59_conv2d_readvariableop_resource: ?
1model_2_conv2d_59_biasadd_readvariableop_resource:
identity??>model_2/batch_normalization_10/FusedBatchNormV3/ReadVariableOp?@model_2/batch_normalization_10/FusedBatchNormV3/ReadVariableOp_1?-model_2/batch_normalization_10/ReadVariableOp?/model_2/batch_normalization_10/ReadVariableOp_1?>model_2/batch_normalization_11/FusedBatchNormV3/ReadVariableOp?@model_2/batch_normalization_11/FusedBatchNormV3/ReadVariableOp_1?-model_2/batch_normalization_11/ReadVariableOp?/model_2/batch_normalization_11/ReadVariableOp_1?>model_2/batch_normalization_12/FusedBatchNormV3/ReadVariableOp?@model_2/batch_normalization_12/FusedBatchNormV3/ReadVariableOp_1?-model_2/batch_normalization_12/ReadVariableOp?/model_2/batch_normalization_12/ReadVariableOp_1?>model_2/batch_normalization_13/FusedBatchNormV3/ReadVariableOp?@model_2/batch_normalization_13/FusedBatchNormV3/ReadVariableOp_1?-model_2/batch_normalization_13/ReadVariableOp?/model_2/batch_normalization_13/ReadVariableOp_1?>model_2/batch_normalization_14/FusedBatchNormV3/ReadVariableOp?@model_2/batch_normalization_14/FusedBatchNormV3/ReadVariableOp_1?-model_2/batch_normalization_14/ReadVariableOp?/model_2/batch_normalization_14/ReadVariableOp_1?(model_2/conv2d_40/BiasAdd/ReadVariableOp?'model_2/conv2d_40/Conv2D/ReadVariableOp?(model_2/conv2d_41/BiasAdd/ReadVariableOp?'model_2/conv2d_41/Conv2D/ReadVariableOp?(model_2/conv2d_42/BiasAdd/ReadVariableOp?'model_2/conv2d_42/Conv2D/ReadVariableOp?(model_2/conv2d_43/BiasAdd/ReadVariableOp?'model_2/conv2d_43/Conv2D/ReadVariableOp?(model_2/conv2d_44/BiasAdd/ReadVariableOp?'model_2/conv2d_44/Conv2D/ReadVariableOp?(model_2/conv2d_45/BiasAdd/ReadVariableOp?'model_2/conv2d_45/Conv2D/ReadVariableOp?(model_2/conv2d_46/BiasAdd/ReadVariableOp?'model_2/conv2d_46/Conv2D/ReadVariableOp?(model_2/conv2d_47/BiasAdd/ReadVariableOp?'model_2/conv2d_47/Conv2D/ReadVariableOp?(model_2/conv2d_48/BiasAdd/ReadVariableOp?'model_2/conv2d_48/Conv2D/ReadVariableOp?(model_2/conv2d_49/BiasAdd/ReadVariableOp?'model_2/conv2d_49/Conv2D/ReadVariableOp?(model_2/conv2d_50/BiasAdd/ReadVariableOp?'model_2/conv2d_50/Conv2D/ReadVariableOp?(model_2/conv2d_51/BiasAdd/ReadVariableOp?'model_2/conv2d_51/Conv2D/ReadVariableOp?(model_2/conv2d_52/BiasAdd/ReadVariableOp?'model_2/conv2d_52/Conv2D/ReadVariableOp?(model_2/conv2d_53/BiasAdd/ReadVariableOp?'model_2/conv2d_53/Conv2D/ReadVariableOp?(model_2/conv2d_54/BiasAdd/ReadVariableOp?'model_2/conv2d_54/Conv2D/ReadVariableOp?(model_2/conv2d_55/BiasAdd/ReadVariableOp?'model_2/conv2d_55/Conv2D/ReadVariableOp?(model_2/conv2d_56/BiasAdd/ReadVariableOp?'model_2/conv2d_56/Conv2D/ReadVariableOp?(model_2/conv2d_57/BiasAdd/ReadVariableOp?'model_2/conv2d_57/Conv2D/ReadVariableOp?(model_2/conv2d_58/BiasAdd/ReadVariableOp?'model_2/conv2d_58/Conv2D/ReadVariableOp?(model_2/conv2d_59/BiasAdd/ReadVariableOp?'model_2/conv2d_59/Conv2D/ReadVariableOp?2model_2/conv2d_transpose_10/BiasAdd/ReadVariableOp?;model_2/conv2d_transpose_10/conv2d_transpose/ReadVariableOp?2model_2/conv2d_transpose_11/BiasAdd/ReadVariableOp?;model_2/conv2d_transpose_11/conv2d_transpose/ReadVariableOp?1model_2/conv2d_transpose_8/BiasAdd/ReadVariableOp?:model_2/conv2d_transpose_8/conv2d_transpose/ReadVariableOp?1model_2/conv2d_transpose_9/BiasAdd/ReadVariableOp?:model_2/conv2d_transpose_9/conv2d_transpose/ReadVariableOp?
'model_2/conv2d_40/Conv2D/ReadVariableOpReadVariableOp0model_2_conv2d_40_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0?
model_2/conv2d_40/Conv2DConv2Dinput_3/model_2/conv2d_40/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? *
paddingSAME*
strides
?
(model_2/conv2d_40/BiasAdd/ReadVariableOpReadVariableOp1model_2_conv2d_40_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
model_2/conv2d_40/BiasAddBiasAdd!model_2/conv2d_40/Conv2D:output:00model_2/conv2d_40/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? ~
model_2/conv2d_40/ReluRelu"model_2/conv2d_40/BiasAdd:output:0*
T0*1
_output_shapes
:??????????? ?
'model_2/conv2d_41/Conv2D/ReadVariableOpReadVariableOp0model_2_conv2d_41_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0?
model_2/conv2d_41/Conv2DConv2D$model_2/conv2d_40/Relu:activations:0/model_2/conv2d_41/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? *
paddingSAME*
strides
?
(model_2/conv2d_41/BiasAdd/ReadVariableOpReadVariableOp1model_2_conv2d_41_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
model_2/conv2d_41/BiasAddBiasAdd!model_2/conv2d_41/Conv2D:output:00model_2/conv2d_41/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? ~
model_2/conv2d_41/ReluRelu"model_2/conv2d_41/BiasAdd:output:0*
T0*1
_output_shapes
:??????????? ?
-model_2/batch_normalization_10/ReadVariableOpReadVariableOp6model_2_batch_normalization_10_readvariableop_resource*
_output_shapes
: *
dtype0?
/model_2/batch_normalization_10/ReadVariableOp_1ReadVariableOp8model_2_batch_normalization_10_readvariableop_1_resource*
_output_shapes
: *
dtype0?
>model_2/batch_normalization_10/FusedBatchNormV3/ReadVariableOpReadVariableOpGmodel_2_batch_normalization_10_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0?
@model_2/batch_normalization_10/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpImodel_2_batch_normalization_10_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0?
/model_2/batch_normalization_10/FusedBatchNormV3FusedBatchNormV3$model_2/conv2d_41/Relu:activations:05model_2/batch_normalization_10/ReadVariableOp:value:07model_2/batch_normalization_10/ReadVariableOp_1:value:0Fmodel_2/batch_normalization_10/FusedBatchNormV3/ReadVariableOp:value:0Hmodel_2/batch_normalization_10/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*M
_output_shapes;
9:??????????? : : : : :*
epsilon%o?:*
is_training( ?
model_2/max_pooling2d_8/MaxPoolMaxPool3model_2/batch_normalization_10/FusedBatchNormV3:y:0*1
_output_shapes
:??????????? *
ksize
*
paddingVALID*
strides
?
'model_2/conv2d_42/Conv2D/ReadVariableOpReadVariableOp0model_2_conv2d_42_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0?
model_2/conv2d_42/Conv2DConv2D(model_2/max_pooling2d_8/MaxPool:output:0/model_2/conv2d_42/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????@*
paddingSAME*
strides
?
(model_2/conv2d_42/BiasAdd/ReadVariableOpReadVariableOp1model_2_conv2d_42_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
model_2/conv2d_42/BiasAddBiasAdd!model_2/conv2d_42/Conv2D:output:00model_2/conv2d_42/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????@~
model_2/conv2d_42/ReluRelu"model_2/conv2d_42/BiasAdd:output:0*
T0*1
_output_shapes
:???????????@?
'model_2/conv2d_43/Conv2D/ReadVariableOpReadVariableOp0model_2_conv2d_43_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0?
model_2/conv2d_43/Conv2DConv2D$model_2/conv2d_42/Relu:activations:0/model_2/conv2d_43/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????@*
paddingSAME*
strides
?
(model_2/conv2d_43/BiasAdd/ReadVariableOpReadVariableOp1model_2_conv2d_43_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
model_2/conv2d_43/BiasAddBiasAdd!model_2/conv2d_43/Conv2D:output:00model_2/conv2d_43/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????@~
model_2/conv2d_43/ReluRelu"model_2/conv2d_43/BiasAdd:output:0*
T0*1
_output_shapes
:???????????@?
-model_2/batch_normalization_11/ReadVariableOpReadVariableOp6model_2_batch_normalization_11_readvariableop_resource*
_output_shapes
:@*
dtype0?
/model_2/batch_normalization_11/ReadVariableOp_1ReadVariableOp8model_2_batch_normalization_11_readvariableop_1_resource*
_output_shapes
:@*
dtype0?
>model_2/batch_normalization_11/FusedBatchNormV3/ReadVariableOpReadVariableOpGmodel_2_batch_normalization_11_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0?
@model_2/batch_normalization_11/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpImodel_2_batch_normalization_11_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0?
/model_2/batch_normalization_11/FusedBatchNormV3FusedBatchNormV3$model_2/conv2d_43/Relu:activations:05model_2/batch_normalization_11/ReadVariableOp:value:07model_2/batch_normalization_11/ReadVariableOp_1:value:0Fmodel_2/batch_normalization_11/FusedBatchNormV3/ReadVariableOp:value:0Hmodel_2/batch_normalization_11/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*M
_output_shapes;
9:???????????@:@:@:@:@:*
epsilon%o?:*
is_training( ?
model_2/max_pooling2d_9/MaxPoolMaxPool3model_2/batch_normalization_11/FusedBatchNormV3:y:0*/
_output_shapes
:?????????xx@*
ksize
*
paddingVALID*
strides
?
'model_2/conv2d_44/Conv2D/ReadVariableOpReadVariableOp0model_2_conv2d_44_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype0?
model_2/conv2d_44/Conv2DConv2D(model_2/max_pooling2d_9/MaxPool:output:0/model_2/conv2d_44/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????xx?*
paddingSAME*
strides
?
(model_2/conv2d_44/BiasAdd/ReadVariableOpReadVariableOp1model_2_conv2d_44_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
model_2/conv2d_44/BiasAddBiasAdd!model_2/conv2d_44/Conv2D:output:00model_2/conv2d_44/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????xx?}
model_2/conv2d_44/ReluRelu"model_2/conv2d_44/BiasAdd:output:0*
T0*0
_output_shapes
:?????????xx??
'model_2/conv2d_45/Conv2D/ReadVariableOpReadVariableOp0model_2_conv2d_45_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype0?
model_2/conv2d_45/Conv2DConv2D$model_2/conv2d_44/Relu:activations:0/model_2/conv2d_45/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????xx?*
paddingSAME*
strides
?
(model_2/conv2d_45/BiasAdd/ReadVariableOpReadVariableOp1model_2_conv2d_45_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
model_2/conv2d_45/BiasAddBiasAdd!model_2/conv2d_45/Conv2D:output:00model_2/conv2d_45/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????xx?}
model_2/conv2d_45/ReluRelu"model_2/conv2d_45/BiasAdd:output:0*
T0*0
_output_shapes
:?????????xx??
-model_2/batch_normalization_12/ReadVariableOpReadVariableOp6model_2_batch_normalization_12_readvariableop_resource*
_output_shapes	
:?*
dtype0?
/model_2/batch_normalization_12/ReadVariableOp_1ReadVariableOp8model_2_batch_normalization_12_readvariableop_1_resource*
_output_shapes	
:?*
dtype0?
>model_2/batch_normalization_12/FusedBatchNormV3/ReadVariableOpReadVariableOpGmodel_2_batch_normalization_12_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype0?
@model_2/batch_normalization_12/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpImodel_2_batch_normalization_12_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype0?
/model_2/batch_normalization_12/FusedBatchNormV3FusedBatchNormV3$model_2/conv2d_45/Relu:activations:05model_2/batch_normalization_12/ReadVariableOp:value:07model_2/batch_normalization_12/ReadVariableOp_1:value:0Fmodel_2/batch_normalization_12/FusedBatchNormV3/ReadVariableOp:value:0Hmodel_2/batch_normalization_12/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:?????????xx?:?:?:?:?:*
epsilon%o?:*
is_training( ?
 model_2/max_pooling2d_10/MaxPoolMaxPool3model_2/batch_normalization_12/FusedBatchNormV3:y:0*0
_output_shapes
:?????????<<?*
ksize
*
paddingVALID*
strides
?
'model_2/conv2d_46/Conv2D/ReadVariableOpReadVariableOp0model_2_conv2d_46_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype0?
model_2/conv2d_46/Conv2DConv2D)model_2/max_pooling2d_10/MaxPool:output:0/model_2/conv2d_46/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????<<?*
paddingSAME*
strides
?
(model_2/conv2d_46/BiasAdd/ReadVariableOpReadVariableOp1model_2_conv2d_46_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
model_2/conv2d_46/BiasAddBiasAdd!model_2/conv2d_46/Conv2D:output:00model_2/conv2d_46/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????<<?}
model_2/conv2d_46/ReluRelu"model_2/conv2d_46/BiasAdd:output:0*
T0*0
_output_shapes
:?????????<<??
'model_2/conv2d_47/Conv2D/ReadVariableOpReadVariableOp0model_2_conv2d_47_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype0?
model_2/conv2d_47/Conv2DConv2D$model_2/conv2d_46/Relu:activations:0/model_2/conv2d_47/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????<<?*
paddingSAME*
strides
?
(model_2/conv2d_47/BiasAdd/ReadVariableOpReadVariableOp1model_2_conv2d_47_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
model_2/conv2d_47/BiasAddBiasAdd!model_2/conv2d_47/Conv2D:output:00model_2/conv2d_47/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????<<?}
model_2/conv2d_47/ReluRelu"model_2/conv2d_47/BiasAdd:output:0*
T0*0
_output_shapes
:?????????<<??
-model_2/batch_normalization_13/ReadVariableOpReadVariableOp6model_2_batch_normalization_13_readvariableop_resource*
_output_shapes	
:?*
dtype0?
/model_2/batch_normalization_13/ReadVariableOp_1ReadVariableOp8model_2_batch_normalization_13_readvariableop_1_resource*
_output_shapes	
:?*
dtype0?
>model_2/batch_normalization_13/FusedBatchNormV3/ReadVariableOpReadVariableOpGmodel_2_batch_normalization_13_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype0?
@model_2/batch_normalization_13/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpImodel_2_batch_normalization_13_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype0?
/model_2/batch_normalization_13/FusedBatchNormV3FusedBatchNormV3$model_2/conv2d_47/Relu:activations:05model_2/batch_normalization_13/ReadVariableOp:value:07model_2/batch_normalization_13/ReadVariableOp_1:value:0Fmodel_2/batch_normalization_13/FusedBatchNormV3/ReadVariableOp:value:0Hmodel_2/batch_normalization_13/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:?????????<<?:?:?:?:?:*
epsilon%o?:*
is_training( ?
model_2/dropout_4/IdentityIdentity3model_2/batch_normalization_13/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:?????????<<??
 model_2/max_pooling2d_11/MaxPoolMaxPool#model_2/dropout_4/Identity:output:0*0
_output_shapes
:??????????*
ksize
*
paddingVALID*
strides
?
'model_2/conv2d_48/Conv2D/ReadVariableOpReadVariableOp0model_2_conv2d_48_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype0?
model_2/conv2d_48/Conv2DConv2D)model_2/max_pooling2d_11/MaxPool:output:0/model_2/conv2d_48/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
?
(model_2/conv2d_48/BiasAdd/ReadVariableOpReadVariableOp1model_2_conv2d_48_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
model_2/conv2d_48/BiasAddBiasAdd!model_2/conv2d_48/Conv2D:output:00model_2/conv2d_48/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????}
model_2/conv2d_48/ReluRelu"model_2/conv2d_48/BiasAdd:output:0*
T0*0
_output_shapes
:???????????
'model_2/conv2d_49/Conv2D/ReadVariableOpReadVariableOp0model_2_conv2d_49_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype0?
model_2/conv2d_49/Conv2DConv2D$model_2/conv2d_48/Relu:activations:0/model_2/conv2d_49/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
?
(model_2/conv2d_49/BiasAdd/ReadVariableOpReadVariableOp1model_2_conv2d_49_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
model_2/conv2d_49/BiasAddBiasAdd!model_2/conv2d_49/Conv2D:output:00model_2/conv2d_49/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????}
model_2/conv2d_49/ReluRelu"model_2/conv2d_49/BiasAdd:output:0*
T0*0
_output_shapes
:???????????
-model_2/batch_normalization_14/ReadVariableOpReadVariableOp6model_2_batch_normalization_14_readvariableop_resource*
_output_shapes	
:?*
dtype0?
/model_2/batch_normalization_14/ReadVariableOp_1ReadVariableOp8model_2_batch_normalization_14_readvariableop_1_resource*
_output_shapes	
:?*
dtype0?
>model_2/batch_normalization_14/FusedBatchNormV3/ReadVariableOpReadVariableOpGmodel_2_batch_normalization_14_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype0?
@model_2/batch_normalization_14/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpImodel_2_batch_normalization_14_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype0?
/model_2/batch_normalization_14/FusedBatchNormV3FusedBatchNormV3$model_2/conv2d_49/Relu:activations:05model_2/batch_normalization_14/ReadVariableOp:value:07model_2/batch_normalization_14/ReadVariableOp_1:value:0Fmodel_2/batch_normalization_14/FusedBatchNormV3/ReadVariableOp:value:0Hmodel_2/batch_normalization_14/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:??????????:?:?:?:?:*
epsilon%o?:*
is_training( ?
model_2/dropout_5/IdentityIdentity3model_2/batch_normalization_14/FusedBatchNormV3:y:0*
T0*0
_output_shapes
:??????????s
 model_2/conv2d_transpose_8/ShapeShape#model_2/dropout_5/Identity:output:0*
T0*
_output_shapes
:x
.model_2/conv2d_transpose_8/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: z
0model_2/conv2d_transpose_8/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:z
0model_2/conv2d_transpose_8/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
(model_2/conv2d_transpose_8/strided_sliceStridedSlice)model_2/conv2d_transpose_8/Shape:output:07model_2/conv2d_transpose_8/strided_slice/stack:output:09model_2/conv2d_transpose_8/strided_slice/stack_1:output:09model_2/conv2d_transpose_8/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskd
"model_2/conv2d_transpose_8/stack/1Const*
_output_shapes
: *
dtype0*
value	B :<d
"model_2/conv2d_transpose_8/stack/2Const*
_output_shapes
: *
dtype0*
value	B :<e
"model_2/conv2d_transpose_8/stack/3Const*
_output_shapes
: *
dtype0*
value
B :??
 model_2/conv2d_transpose_8/stackPack1model_2/conv2d_transpose_8/strided_slice:output:0+model_2/conv2d_transpose_8/stack/1:output:0+model_2/conv2d_transpose_8/stack/2:output:0+model_2/conv2d_transpose_8/stack/3:output:0*
N*
T0*
_output_shapes
:z
0model_2/conv2d_transpose_8/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2model_2/conv2d_transpose_8/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2model_2/conv2d_transpose_8/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
*model_2/conv2d_transpose_8/strided_slice_1StridedSlice)model_2/conv2d_transpose_8/stack:output:09model_2/conv2d_transpose_8/strided_slice_1/stack:output:0;model_2/conv2d_transpose_8/strided_slice_1/stack_1:output:0;model_2/conv2d_transpose_8/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
:model_2/conv2d_transpose_8/conv2d_transpose/ReadVariableOpReadVariableOpCmodel_2_conv2d_transpose_8_conv2d_transpose_readvariableop_resource*(
_output_shapes
:??*
dtype0?
+model_2/conv2d_transpose_8/conv2d_transposeConv2DBackpropInput)model_2/conv2d_transpose_8/stack:output:0Bmodel_2/conv2d_transpose_8/conv2d_transpose/ReadVariableOp:value:0#model_2/dropout_5/Identity:output:0*
T0*0
_output_shapes
:?????????<<?*
paddingSAME*
strides
?
1model_2/conv2d_transpose_8/BiasAdd/ReadVariableOpReadVariableOp:model_2_conv2d_transpose_8_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
"model_2/conv2d_transpose_8/BiasAddBiasAdd4model_2/conv2d_transpose_8/conv2d_transpose:output:09model_2/conv2d_transpose_8/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????<<?c
!model_2/concatenate_8/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :?
model_2/concatenate_8/concatConcatV2+model_2/conv2d_transpose_8/BiasAdd:output:0#model_2/dropout_4/Identity:output:0*model_2/concatenate_8/concat/axis:output:0*
N*
T0*0
_output_shapes
:?????????<<??
'model_2/conv2d_50/Conv2D/ReadVariableOpReadVariableOp0model_2_conv2d_50_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype0?
model_2/conv2d_50/Conv2DConv2D%model_2/concatenate_8/concat:output:0/model_2/conv2d_50/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????<<?*
paddingSAME*
strides
?
(model_2/conv2d_50/BiasAdd/ReadVariableOpReadVariableOp1model_2_conv2d_50_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
model_2/conv2d_50/BiasAddBiasAdd!model_2/conv2d_50/Conv2D:output:00model_2/conv2d_50/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????<<?}
model_2/conv2d_50/ReluRelu"model_2/conv2d_50/BiasAdd:output:0*
T0*0
_output_shapes
:?????????<<??
'model_2/conv2d_51/Conv2D/ReadVariableOpReadVariableOp0model_2_conv2d_51_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype0?
model_2/conv2d_51/Conv2DConv2D$model_2/conv2d_50/Relu:activations:0/model_2/conv2d_51/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????<<?*
paddingSAME*
strides
?
(model_2/conv2d_51/BiasAdd/ReadVariableOpReadVariableOp1model_2_conv2d_51_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
model_2/conv2d_51/BiasAddBiasAdd!model_2/conv2d_51/Conv2D:output:00model_2/conv2d_51/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????<<?}
model_2/conv2d_51/ReluRelu"model_2/conv2d_51/BiasAdd:output:0*
T0*0
_output_shapes
:?????????<<?t
 model_2/conv2d_transpose_9/ShapeShape$model_2/conv2d_51/Relu:activations:0*
T0*
_output_shapes
:x
.model_2/conv2d_transpose_9/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: z
0model_2/conv2d_transpose_9/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:z
0model_2/conv2d_transpose_9/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
(model_2/conv2d_transpose_9/strided_sliceStridedSlice)model_2/conv2d_transpose_9/Shape:output:07model_2/conv2d_transpose_9/strided_slice/stack:output:09model_2/conv2d_transpose_9/strided_slice/stack_1:output:09model_2/conv2d_transpose_9/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskd
"model_2/conv2d_transpose_9/stack/1Const*
_output_shapes
: *
dtype0*
value	B :xd
"model_2/conv2d_transpose_9/stack/2Const*
_output_shapes
: *
dtype0*
value	B :xe
"model_2/conv2d_transpose_9/stack/3Const*
_output_shapes
: *
dtype0*
value
B :??
 model_2/conv2d_transpose_9/stackPack1model_2/conv2d_transpose_9/strided_slice:output:0+model_2/conv2d_transpose_9/stack/1:output:0+model_2/conv2d_transpose_9/stack/2:output:0+model_2/conv2d_transpose_9/stack/3:output:0*
N*
T0*
_output_shapes
:z
0model_2/conv2d_transpose_9/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2model_2/conv2d_transpose_9/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2model_2/conv2d_transpose_9/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
*model_2/conv2d_transpose_9/strided_slice_1StridedSlice)model_2/conv2d_transpose_9/stack:output:09model_2/conv2d_transpose_9/strided_slice_1/stack:output:0;model_2/conv2d_transpose_9/strided_slice_1/stack_1:output:0;model_2/conv2d_transpose_9/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
:model_2/conv2d_transpose_9/conv2d_transpose/ReadVariableOpReadVariableOpCmodel_2_conv2d_transpose_9_conv2d_transpose_readvariableop_resource*(
_output_shapes
:??*
dtype0?
+model_2/conv2d_transpose_9/conv2d_transposeConv2DBackpropInput)model_2/conv2d_transpose_9/stack:output:0Bmodel_2/conv2d_transpose_9/conv2d_transpose/ReadVariableOp:value:0$model_2/conv2d_51/Relu:activations:0*
T0*0
_output_shapes
:?????????xx?*
paddingSAME*
strides
?
1model_2/conv2d_transpose_9/BiasAdd/ReadVariableOpReadVariableOp:model_2_conv2d_transpose_9_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
"model_2/conv2d_transpose_9/BiasAddBiasAdd4model_2/conv2d_transpose_9/conv2d_transpose:output:09model_2/conv2d_transpose_9/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????xx?c
!model_2/concatenate_9/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :?
model_2/concatenate_9/concatConcatV2+model_2/conv2d_transpose_9/BiasAdd:output:03model_2/batch_normalization_12/FusedBatchNormV3:y:0*model_2/concatenate_9/concat/axis:output:0*
N*
T0*0
_output_shapes
:?????????xx??
'model_2/conv2d_52/Conv2D/ReadVariableOpReadVariableOp0model_2_conv2d_52_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype0?
model_2/conv2d_52/Conv2DConv2D%model_2/concatenate_9/concat:output:0/model_2/conv2d_52/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????xx?*
paddingSAME*
strides
?
(model_2/conv2d_52/BiasAdd/ReadVariableOpReadVariableOp1model_2_conv2d_52_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
model_2/conv2d_52/BiasAddBiasAdd!model_2/conv2d_52/Conv2D:output:00model_2/conv2d_52/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????xx?}
model_2/conv2d_52/ReluRelu"model_2/conv2d_52/BiasAdd:output:0*
T0*0
_output_shapes
:?????????xx??
'model_2/conv2d_53/Conv2D/ReadVariableOpReadVariableOp0model_2_conv2d_53_conv2d_readvariableop_resource*(
_output_shapes
:??*
dtype0?
model_2/conv2d_53/Conv2DConv2D$model_2/conv2d_52/Relu:activations:0/model_2/conv2d_53/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????xx?*
paddingSAME*
strides
?
(model_2/conv2d_53/BiasAdd/ReadVariableOpReadVariableOp1model_2_conv2d_53_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
model_2/conv2d_53/BiasAddBiasAdd!model_2/conv2d_53/Conv2D:output:00model_2/conv2d_53/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????xx?}
model_2/conv2d_53/ReluRelu"model_2/conv2d_53/BiasAdd:output:0*
T0*0
_output_shapes
:?????????xx?u
!model_2/conv2d_transpose_10/ShapeShape$model_2/conv2d_53/Relu:activations:0*
T0*
_output_shapes
:y
/model_2/conv2d_transpose_10/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: {
1model_2/conv2d_transpose_10/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1model_2/conv2d_transpose_10/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
)model_2/conv2d_transpose_10/strided_sliceStridedSlice*model_2/conv2d_transpose_10/Shape:output:08model_2/conv2d_transpose_10/strided_slice/stack:output:0:model_2/conv2d_transpose_10/strided_slice/stack_1:output:0:model_2/conv2d_transpose_10/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
#model_2/conv2d_transpose_10/stack/1Const*
_output_shapes
: *
dtype0*
value
B :?f
#model_2/conv2d_transpose_10/stack/2Const*
_output_shapes
: *
dtype0*
value
B :?e
#model_2/conv2d_transpose_10/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@?
!model_2/conv2d_transpose_10/stackPack2model_2/conv2d_transpose_10/strided_slice:output:0,model_2/conv2d_transpose_10/stack/1:output:0,model_2/conv2d_transpose_10/stack/2:output:0,model_2/conv2d_transpose_10/stack/3:output:0*
N*
T0*
_output_shapes
:{
1model_2/conv2d_transpose_10/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: }
3model_2/conv2d_transpose_10/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3model_2/conv2d_transpose_10/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
+model_2/conv2d_transpose_10/strided_slice_1StridedSlice*model_2/conv2d_transpose_10/stack:output:0:model_2/conv2d_transpose_10/strided_slice_1/stack:output:0<model_2/conv2d_transpose_10/strided_slice_1/stack_1:output:0<model_2/conv2d_transpose_10/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
;model_2/conv2d_transpose_10/conv2d_transpose/ReadVariableOpReadVariableOpDmodel_2_conv2d_transpose_10_conv2d_transpose_readvariableop_resource*'
_output_shapes
:@?*
dtype0?
,model_2/conv2d_transpose_10/conv2d_transposeConv2DBackpropInput*model_2/conv2d_transpose_10/stack:output:0Cmodel_2/conv2d_transpose_10/conv2d_transpose/ReadVariableOp:value:0$model_2/conv2d_53/Relu:activations:0*
T0*1
_output_shapes
:???????????@*
paddingSAME*
strides
?
2model_2/conv2d_transpose_10/BiasAdd/ReadVariableOpReadVariableOp;model_2_conv2d_transpose_10_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
#model_2/conv2d_transpose_10/BiasAddBiasAdd5model_2/conv2d_transpose_10/conv2d_transpose:output:0:model_2/conv2d_transpose_10/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????@d
"model_2/concatenate_10/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :?
model_2/concatenate_10/concatConcatV2,model_2/conv2d_transpose_10/BiasAdd:output:03model_2/batch_normalization_11/FusedBatchNormV3:y:0+model_2/concatenate_10/concat/axis:output:0*
N*
T0*2
_output_shapes 
:?????????????
'model_2/conv2d_54/Conv2D/ReadVariableOpReadVariableOp0model_2_conv2d_54_conv2d_readvariableop_resource*'
_output_shapes
:?@*
dtype0?
model_2/conv2d_54/Conv2DConv2D&model_2/concatenate_10/concat:output:0/model_2/conv2d_54/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????@*
paddingSAME*
strides
?
(model_2/conv2d_54/BiasAdd/ReadVariableOpReadVariableOp1model_2_conv2d_54_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
model_2/conv2d_54/BiasAddBiasAdd!model_2/conv2d_54/Conv2D:output:00model_2/conv2d_54/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????@~
model_2/conv2d_54/ReluRelu"model_2/conv2d_54/BiasAdd:output:0*
T0*1
_output_shapes
:???????????@?
'model_2/conv2d_55/Conv2D/ReadVariableOpReadVariableOp0model_2_conv2d_55_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0?
model_2/conv2d_55/Conv2DConv2D$model_2/conv2d_54/Relu:activations:0/model_2/conv2d_55/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????@*
paddingSAME*
strides
?
(model_2/conv2d_55/BiasAdd/ReadVariableOpReadVariableOp1model_2_conv2d_55_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
model_2/conv2d_55/BiasAddBiasAdd!model_2/conv2d_55/Conv2D:output:00model_2/conv2d_55/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????@~
model_2/conv2d_55/ReluRelu"model_2/conv2d_55/BiasAdd:output:0*
T0*1
_output_shapes
:???????????@u
!model_2/conv2d_transpose_11/ShapeShape$model_2/conv2d_55/Relu:activations:0*
T0*
_output_shapes
:y
/model_2/conv2d_transpose_11/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: {
1model_2/conv2d_transpose_11/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1model_2/conv2d_transpose_11/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
)model_2/conv2d_transpose_11/strided_sliceStridedSlice*model_2/conv2d_transpose_11/Shape:output:08model_2/conv2d_transpose_11/strided_slice/stack:output:0:model_2/conv2d_transpose_11/strided_slice/stack_1:output:0:model_2/conv2d_transpose_11/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
#model_2/conv2d_transpose_11/stack/1Const*
_output_shapes
: *
dtype0*
value
B :?f
#model_2/conv2d_transpose_11/stack/2Const*
_output_shapes
: *
dtype0*
value
B :?e
#model_2/conv2d_transpose_11/stack/3Const*
_output_shapes
: *
dtype0*
value	B : ?
!model_2/conv2d_transpose_11/stackPack2model_2/conv2d_transpose_11/strided_slice:output:0,model_2/conv2d_transpose_11/stack/1:output:0,model_2/conv2d_transpose_11/stack/2:output:0,model_2/conv2d_transpose_11/stack/3:output:0*
N*
T0*
_output_shapes
:{
1model_2/conv2d_transpose_11/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: }
3model_2/conv2d_transpose_11/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3model_2/conv2d_transpose_11/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
+model_2/conv2d_transpose_11/strided_slice_1StridedSlice*model_2/conv2d_transpose_11/stack:output:0:model_2/conv2d_transpose_11/strided_slice_1/stack:output:0<model_2/conv2d_transpose_11/strided_slice_1/stack_1:output:0<model_2/conv2d_transpose_11/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
;model_2/conv2d_transpose_11/conv2d_transpose/ReadVariableOpReadVariableOpDmodel_2_conv2d_transpose_11_conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype0?
,model_2/conv2d_transpose_11/conv2d_transposeConv2DBackpropInput*model_2/conv2d_transpose_11/stack:output:0Cmodel_2/conv2d_transpose_11/conv2d_transpose/ReadVariableOp:value:0$model_2/conv2d_55/Relu:activations:0*
T0*1
_output_shapes
:??????????? *
paddingSAME*
strides
?
2model_2/conv2d_transpose_11/BiasAdd/ReadVariableOpReadVariableOp;model_2_conv2d_transpose_11_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
#model_2/conv2d_transpose_11/BiasAddBiasAdd5model_2/conv2d_transpose_11/conv2d_transpose:output:0:model_2/conv2d_transpose_11/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? d
"model_2/concatenate_11/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :?
model_2/concatenate_11/concatConcatV2,model_2/conv2d_transpose_11/BiasAdd:output:03model_2/batch_normalization_10/FusedBatchNormV3:y:0+model_2/concatenate_11/concat/axis:output:0*
N*
T0*1
_output_shapes
:???????????@?
'model_2/conv2d_56/Conv2D/ReadVariableOpReadVariableOp0model_2_conv2d_56_conv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype0?
model_2/conv2d_56/Conv2DConv2D&model_2/concatenate_11/concat:output:0/model_2/conv2d_56/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? *
paddingSAME*
strides
?
(model_2/conv2d_56/BiasAdd/ReadVariableOpReadVariableOp1model_2_conv2d_56_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
model_2/conv2d_56/BiasAddBiasAdd!model_2/conv2d_56/Conv2D:output:00model_2/conv2d_56/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? ~
model_2/conv2d_56/ReluRelu"model_2/conv2d_56/BiasAdd:output:0*
T0*1
_output_shapes
:??????????? ?
'model_2/conv2d_57/Conv2D/ReadVariableOpReadVariableOp0model_2_conv2d_57_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0?
model_2/conv2d_57/Conv2DConv2D$model_2/conv2d_56/Relu:activations:0/model_2/conv2d_57/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? *
paddingSAME*
strides
?
(model_2/conv2d_57/BiasAdd/ReadVariableOpReadVariableOp1model_2_conv2d_57_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
model_2/conv2d_57/BiasAddBiasAdd!model_2/conv2d_57/Conv2D:output:00model_2/conv2d_57/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? ~
model_2/conv2d_57/ReluRelu"model_2/conv2d_57/BiasAdd:output:0*
T0*1
_output_shapes
:??????????? ?
'model_2/conv2d_58/Conv2D/ReadVariableOpReadVariableOp0model_2_conv2d_58_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0?
model_2/conv2d_58/Conv2DConv2D$model_2/conv2d_57/Relu:activations:0/model_2/conv2d_58/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? *
paddingSAME*
strides
?
(model_2/conv2d_58/BiasAdd/ReadVariableOpReadVariableOp1model_2_conv2d_58_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
model_2/conv2d_58/BiasAddBiasAdd!model_2/conv2d_58/Conv2D:output:00model_2/conv2d_58/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? ~
model_2/conv2d_58/ReluRelu"model_2/conv2d_58/BiasAdd:output:0*
T0*1
_output_shapes
:??????????? ?
'model_2/conv2d_59/Conv2D/ReadVariableOpReadVariableOp0model_2_conv2d_59_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0?
model_2/conv2d_59/Conv2DConv2D$model_2/conv2d_58/Relu:activations:0/model_2/conv2d_59/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
?
(model_2/conv2d_59/BiasAdd/ReadVariableOpReadVariableOp1model_2_conv2d_59_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
model_2/conv2d_59/BiasAddBiasAdd!model_2/conv2d_59/Conv2D:output:00model_2/conv2d_59/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????{
IdentityIdentity"model_2/conv2d_59/BiasAdd:output:0^NoOp*
T0*1
_output_shapes
:????????????
NoOpNoOp?^model_2/batch_normalization_10/FusedBatchNormV3/ReadVariableOpA^model_2/batch_normalization_10/FusedBatchNormV3/ReadVariableOp_1.^model_2/batch_normalization_10/ReadVariableOp0^model_2/batch_normalization_10/ReadVariableOp_1?^model_2/batch_normalization_11/FusedBatchNormV3/ReadVariableOpA^model_2/batch_normalization_11/FusedBatchNormV3/ReadVariableOp_1.^model_2/batch_normalization_11/ReadVariableOp0^model_2/batch_normalization_11/ReadVariableOp_1?^model_2/batch_normalization_12/FusedBatchNormV3/ReadVariableOpA^model_2/batch_normalization_12/FusedBatchNormV3/ReadVariableOp_1.^model_2/batch_normalization_12/ReadVariableOp0^model_2/batch_normalization_12/ReadVariableOp_1?^model_2/batch_normalization_13/FusedBatchNormV3/ReadVariableOpA^model_2/batch_normalization_13/FusedBatchNormV3/ReadVariableOp_1.^model_2/batch_normalization_13/ReadVariableOp0^model_2/batch_normalization_13/ReadVariableOp_1?^model_2/batch_normalization_14/FusedBatchNormV3/ReadVariableOpA^model_2/batch_normalization_14/FusedBatchNormV3/ReadVariableOp_1.^model_2/batch_normalization_14/ReadVariableOp0^model_2/batch_normalization_14/ReadVariableOp_1)^model_2/conv2d_40/BiasAdd/ReadVariableOp(^model_2/conv2d_40/Conv2D/ReadVariableOp)^model_2/conv2d_41/BiasAdd/ReadVariableOp(^model_2/conv2d_41/Conv2D/ReadVariableOp)^model_2/conv2d_42/BiasAdd/ReadVariableOp(^model_2/conv2d_42/Conv2D/ReadVariableOp)^model_2/conv2d_43/BiasAdd/ReadVariableOp(^model_2/conv2d_43/Conv2D/ReadVariableOp)^model_2/conv2d_44/BiasAdd/ReadVariableOp(^model_2/conv2d_44/Conv2D/ReadVariableOp)^model_2/conv2d_45/BiasAdd/ReadVariableOp(^model_2/conv2d_45/Conv2D/ReadVariableOp)^model_2/conv2d_46/BiasAdd/ReadVariableOp(^model_2/conv2d_46/Conv2D/ReadVariableOp)^model_2/conv2d_47/BiasAdd/ReadVariableOp(^model_2/conv2d_47/Conv2D/ReadVariableOp)^model_2/conv2d_48/BiasAdd/ReadVariableOp(^model_2/conv2d_48/Conv2D/ReadVariableOp)^model_2/conv2d_49/BiasAdd/ReadVariableOp(^model_2/conv2d_49/Conv2D/ReadVariableOp)^model_2/conv2d_50/BiasAdd/ReadVariableOp(^model_2/conv2d_50/Conv2D/ReadVariableOp)^model_2/conv2d_51/BiasAdd/ReadVariableOp(^model_2/conv2d_51/Conv2D/ReadVariableOp)^model_2/conv2d_52/BiasAdd/ReadVariableOp(^model_2/conv2d_52/Conv2D/ReadVariableOp)^model_2/conv2d_53/BiasAdd/ReadVariableOp(^model_2/conv2d_53/Conv2D/ReadVariableOp)^model_2/conv2d_54/BiasAdd/ReadVariableOp(^model_2/conv2d_54/Conv2D/ReadVariableOp)^model_2/conv2d_55/BiasAdd/ReadVariableOp(^model_2/conv2d_55/Conv2D/ReadVariableOp)^model_2/conv2d_56/BiasAdd/ReadVariableOp(^model_2/conv2d_56/Conv2D/ReadVariableOp)^model_2/conv2d_57/BiasAdd/ReadVariableOp(^model_2/conv2d_57/Conv2D/ReadVariableOp)^model_2/conv2d_58/BiasAdd/ReadVariableOp(^model_2/conv2d_58/Conv2D/ReadVariableOp)^model_2/conv2d_59/BiasAdd/ReadVariableOp(^model_2/conv2d_59/Conv2D/ReadVariableOp3^model_2/conv2d_transpose_10/BiasAdd/ReadVariableOp<^model_2/conv2d_transpose_10/conv2d_transpose/ReadVariableOp3^model_2/conv2d_transpose_11/BiasAdd/ReadVariableOp<^model_2/conv2d_transpose_11/conv2d_transpose/ReadVariableOp2^model_2/conv2d_transpose_8/BiasAdd/ReadVariableOp;^model_2/conv2d_transpose_8/conv2d_transpose/ReadVariableOp2^model_2/conv2d_transpose_9/BiasAdd/ReadVariableOp;^model_2/conv2d_transpose_9/conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:???????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2?
>model_2/batch_normalization_10/FusedBatchNormV3/ReadVariableOp>model_2/batch_normalization_10/FusedBatchNormV3/ReadVariableOp2?
@model_2/batch_normalization_10/FusedBatchNormV3/ReadVariableOp_1@model_2/batch_normalization_10/FusedBatchNormV3/ReadVariableOp_12^
-model_2/batch_normalization_10/ReadVariableOp-model_2/batch_normalization_10/ReadVariableOp2b
/model_2/batch_normalization_10/ReadVariableOp_1/model_2/batch_normalization_10/ReadVariableOp_12?
>model_2/batch_normalization_11/FusedBatchNormV3/ReadVariableOp>model_2/batch_normalization_11/FusedBatchNormV3/ReadVariableOp2?
@model_2/batch_normalization_11/FusedBatchNormV3/ReadVariableOp_1@model_2/batch_normalization_11/FusedBatchNormV3/ReadVariableOp_12^
-model_2/batch_normalization_11/ReadVariableOp-model_2/batch_normalization_11/ReadVariableOp2b
/model_2/batch_normalization_11/ReadVariableOp_1/model_2/batch_normalization_11/ReadVariableOp_12?
>model_2/batch_normalization_12/FusedBatchNormV3/ReadVariableOp>model_2/batch_normalization_12/FusedBatchNormV3/ReadVariableOp2?
@model_2/batch_normalization_12/FusedBatchNormV3/ReadVariableOp_1@model_2/batch_normalization_12/FusedBatchNormV3/ReadVariableOp_12^
-model_2/batch_normalization_12/ReadVariableOp-model_2/batch_normalization_12/ReadVariableOp2b
/model_2/batch_normalization_12/ReadVariableOp_1/model_2/batch_normalization_12/ReadVariableOp_12?
>model_2/batch_normalization_13/FusedBatchNormV3/ReadVariableOp>model_2/batch_normalization_13/FusedBatchNormV3/ReadVariableOp2?
@model_2/batch_normalization_13/FusedBatchNormV3/ReadVariableOp_1@model_2/batch_normalization_13/FusedBatchNormV3/ReadVariableOp_12^
-model_2/batch_normalization_13/ReadVariableOp-model_2/batch_normalization_13/ReadVariableOp2b
/model_2/batch_normalization_13/ReadVariableOp_1/model_2/batch_normalization_13/ReadVariableOp_12?
>model_2/batch_normalization_14/FusedBatchNormV3/ReadVariableOp>model_2/batch_normalization_14/FusedBatchNormV3/ReadVariableOp2?
@model_2/batch_normalization_14/FusedBatchNormV3/ReadVariableOp_1@model_2/batch_normalization_14/FusedBatchNormV3/ReadVariableOp_12^
-model_2/batch_normalization_14/ReadVariableOp-model_2/batch_normalization_14/ReadVariableOp2b
/model_2/batch_normalization_14/ReadVariableOp_1/model_2/batch_normalization_14/ReadVariableOp_12T
(model_2/conv2d_40/BiasAdd/ReadVariableOp(model_2/conv2d_40/BiasAdd/ReadVariableOp2R
'model_2/conv2d_40/Conv2D/ReadVariableOp'model_2/conv2d_40/Conv2D/ReadVariableOp2T
(model_2/conv2d_41/BiasAdd/ReadVariableOp(model_2/conv2d_41/BiasAdd/ReadVariableOp2R
'model_2/conv2d_41/Conv2D/ReadVariableOp'model_2/conv2d_41/Conv2D/ReadVariableOp2T
(model_2/conv2d_42/BiasAdd/ReadVariableOp(model_2/conv2d_42/BiasAdd/ReadVariableOp2R
'model_2/conv2d_42/Conv2D/ReadVariableOp'model_2/conv2d_42/Conv2D/ReadVariableOp2T
(model_2/conv2d_43/BiasAdd/ReadVariableOp(model_2/conv2d_43/BiasAdd/ReadVariableOp2R
'model_2/conv2d_43/Conv2D/ReadVariableOp'model_2/conv2d_43/Conv2D/ReadVariableOp2T
(model_2/conv2d_44/BiasAdd/ReadVariableOp(model_2/conv2d_44/BiasAdd/ReadVariableOp2R
'model_2/conv2d_44/Conv2D/ReadVariableOp'model_2/conv2d_44/Conv2D/ReadVariableOp2T
(model_2/conv2d_45/BiasAdd/ReadVariableOp(model_2/conv2d_45/BiasAdd/ReadVariableOp2R
'model_2/conv2d_45/Conv2D/ReadVariableOp'model_2/conv2d_45/Conv2D/ReadVariableOp2T
(model_2/conv2d_46/BiasAdd/ReadVariableOp(model_2/conv2d_46/BiasAdd/ReadVariableOp2R
'model_2/conv2d_46/Conv2D/ReadVariableOp'model_2/conv2d_46/Conv2D/ReadVariableOp2T
(model_2/conv2d_47/BiasAdd/ReadVariableOp(model_2/conv2d_47/BiasAdd/ReadVariableOp2R
'model_2/conv2d_47/Conv2D/ReadVariableOp'model_2/conv2d_47/Conv2D/ReadVariableOp2T
(model_2/conv2d_48/BiasAdd/ReadVariableOp(model_2/conv2d_48/BiasAdd/ReadVariableOp2R
'model_2/conv2d_48/Conv2D/ReadVariableOp'model_2/conv2d_48/Conv2D/ReadVariableOp2T
(model_2/conv2d_49/BiasAdd/ReadVariableOp(model_2/conv2d_49/BiasAdd/ReadVariableOp2R
'model_2/conv2d_49/Conv2D/ReadVariableOp'model_2/conv2d_49/Conv2D/ReadVariableOp2T
(model_2/conv2d_50/BiasAdd/ReadVariableOp(model_2/conv2d_50/BiasAdd/ReadVariableOp2R
'model_2/conv2d_50/Conv2D/ReadVariableOp'model_2/conv2d_50/Conv2D/ReadVariableOp2T
(model_2/conv2d_51/BiasAdd/ReadVariableOp(model_2/conv2d_51/BiasAdd/ReadVariableOp2R
'model_2/conv2d_51/Conv2D/ReadVariableOp'model_2/conv2d_51/Conv2D/ReadVariableOp2T
(model_2/conv2d_52/BiasAdd/ReadVariableOp(model_2/conv2d_52/BiasAdd/ReadVariableOp2R
'model_2/conv2d_52/Conv2D/ReadVariableOp'model_2/conv2d_52/Conv2D/ReadVariableOp2T
(model_2/conv2d_53/BiasAdd/ReadVariableOp(model_2/conv2d_53/BiasAdd/ReadVariableOp2R
'model_2/conv2d_53/Conv2D/ReadVariableOp'model_2/conv2d_53/Conv2D/ReadVariableOp2T
(model_2/conv2d_54/BiasAdd/ReadVariableOp(model_2/conv2d_54/BiasAdd/ReadVariableOp2R
'model_2/conv2d_54/Conv2D/ReadVariableOp'model_2/conv2d_54/Conv2D/ReadVariableOp2T
(model_2/conv2d_55/BiasAdd/ReadVariableOp(model_2/conv2d_55/BiasAdd/ReadVariableOp2R
'model_2/conv2d_55/Conv2D/ReadVariableOp'model_2/conv2d_55/Conv2D/ReadVariableOp2T
(model_2/conv2d_56/BiasAdd/ReadVariableOp(model_2/conv2d_56/BiasAdd/ReadVariableOp2R
'model_2/conv2d_56/Conv2D/ReadVariableOp'model_2/conv2d_56/Conv2D/ReadVariableOp2T
(model_2/conv2d_57/BiasAdd/ReadVariableOp(model_2/conv2d_57/BiasAdd/ReadVariableOp2R
'model_2/conv2d_57/Conv2D/ReadVariableOp'model_2/conv2d_57/Conv2D/ReadVariableOp2T
(model_2/conv2d_58/BiasAdd/ReadVariableOp(model_2/conv2d_58/BiasAdd/ReadVariableOp2R
'model_2/conv2d_58/Conv2D/ReadVariableOp'model_2/conv2d_58/Conv2D/ReadVariableOp2T
(model_2/conv2d_59/BiasAdd/ReadVariableOp(model_2/conv2d_59/BiasAdd/ReadVariableOp2R
'model_2/conv2d_59/Conv2D/ReadVariableOp'model_2/conv2d_59/Conv2D/ReadVariableOp2h
2model_2/conv2d_transpose_10/BiasAdd/ReadVariableOp2model_2/conv2d_transpose_10/BiasAdd/ReadVariableOp2z
;model_2/conv2d_transpose_10/conv2d_transpose/ReadVariableOp;model_2/conv2d_transpose_10/conv2d_transpose/ReadVariableOp2h
2model_2/conv2d_transpose_11/BiasAdd/ReadVariableOp2model_2/conv2d_transpose_11/BiasAdd/ReadVariableOp2z
;model_2/conv2d_transpose_11/conv2d_transpose/ReadVariableOp;model_2/conv2d_transpose_11/conv2d_transpose/ReadVariableOp2f
1model_2/conv2d_transpose_8/BiasAdd/ReadVariableOp1model_2/conv2d_transpose_8/BiasAdd/ReadVariableOp2x
:model_2/conv2d_transpose_8/conv2d_transpose/ReadVariableOp:model_2/conv2d_transpose_8/conv2d_transpose/ReadVariableOp2f
1model_2/conv2d_transpose_9/BiasAdd/ReadVariableOp1model_2/conv2d_transpose_9/BiasAdd/ReadVariableOp2x
:model_2/conv2d_transpose_9/conv2d_transpose/ReadVariableOp:model_2/conv2d_transpose_9/conv2d_transpose/ReadVariableOp:Z V
1
_output_shapes
:???????????
!
_user_specified_name	input_3
?
?
Q__inference_batch_normalization_10_layer_call_and_return_conditional_losses_42579

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+??????????????????????????? : : : : :*
epsilon%o?:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+??????????????????????????? ?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+??????????????????????????? : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
L
0__inference_max_pooling2d_11_layer_call_fn_46461

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_max_pooling2d_11_layer_call_and_return_conditional_losses_42858?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
??
܃
!__inference__traced_restore_48205
file_prefix;
!assignvariableop_conv2d_40_kernel: /
!assignvariableop_1_conv2d_40_bias: =
#assignvariableop_2_conv2d_41_kernel:  /
!assignvariableop_3_conv2d_41_bias: =
/assignvariableop_4_batch_normalization_10_gamma: <
.assignvariableop_5_batch_normalization_10_beta: C
5assignvariableop_6_batch_normalization_10_moving_mean: G
9assignvariableop_7_batch_normalization_10_moving_variance: =
#assignvariableop_8_conv2d_42_kernel: @/
!assignvariableop_9_conv2d_42_bias:@>
$assignvariableop_10_conv2d_43_kernel:@@0
"assignvariableop_11_conv2d_43_bias:@>
0assignvariableop_12_batch_normalization_11_gamma:@=
/assignvariableop_13_batch_normalization_11_beta:@D
6assignvariableop_14_batch_normalization_11_moving_mean:@H
:assignvariableop_15_batch_normalization_11_moving_variance:@?
$assignvariableop_16_conv2d_44_kernel:@?1
"assignvariableop_17_conv2d_44_bias:	?@
$assignvariableop_18_conv2d_45_kernel:??1
"assignvariableop_19_conv2d_45_bias:	??
0assignvariableop_20_batch_normalization_12_gamma:	?>
/assignvariableop_21_batch_normalization_12_beta:	?E
6assignvariableop_22_batch_normalization_12_moving_mean:	?I
:assignvariableop_23_batch_normalization_12_moving_variance:	?@
$assignvariableop_24_conv2d_46_kernel:??1
"assignvariableop_25_conv2d_46_bias:	?@
$assignvariableop_26_conv2d_47_kernel:??1
"assignvariableop_27_conv2d_47_bias:	??
0assignvariableop_28_batch_normalization_13_gamma:	?>
/assignvariableop_29_batch_normalization_13_beta:	?E
6assignvariableop_30_batch_normalization_13_moving_mean:	?I
:assignvariableop_31_batch_normalization_13_moving_variance:	?@
$assignvariableop_32_conv2d_48_kernel:??1
"assignvariableop_33_conv2d_48_bias:	?@
$assignvariableop_34_conv2d_49_kernel:??1
"assignvariableop_35_conv2d_49_bias:	??
0assignvariableop_36_batch_normalization_14_gamma:	?>
/assignvariableop_37_batch_normalization_14_beta:	?E
6assignvariableop_38_batch_normalization_14_moving_mean:	?I
:assignvariableop_39_batch_normalization_14_moving_variance:	?I
-assignvariableop_40_conv2d_transpose_8_kernel:??:
+assignvariableop_41_conv2d_transpose_8_bias:	?@
$assignvariableop_42_conv2d_50_kernel:??1
"assignvariableop_43_conv2d_50_bias:	?@
$assignvariableop_44_conv2d_51_kernel:??1
"assignvariableop_45_conv2d_51_bias:	?I
-assignvariableop_46_conv2d_transpose_9_kernel:??:
+assignvariableop_47_conv2d_transpose_9_bias:	?@
$assignvariableop_48_conv2d_52_kernel:??1
"assignvariableop_49_conv2d_52_bias:	?@
$assignvariableop_50_conv2d_53_kernel:??1
"assignvariableop_51_conv2d_53_bias:	?I
.assignvariableop_52_conv2d_transpose_10_kernel:@?:
,assignvariableop_53_conv2d_transpose_10_bias:@?
$assignvariableop_54_conv2d_54_kernel:?@0
"assignvariableop_55_conv2d_54_bias:@>
$assignvariableop_56_conv2d_55_kernel:@@0
"assignvariableop_57_conv2d_55_bias:@H
.assignvariableop_58_conv2d_transpose_11_kernel: @:
,assignvariableop_59_conv2d_transpose_11_bias: >
$assignvariableop_60_conv2d_56_kernel:@ 0
"assignvariableop_61_conv2d_56_bias: >
$assignvariableop_62_conv2d_57_kernel:  0
"assignvariableop_63_conv2d_57_bias: >
$assignvariableop_64_conv2d_58_kernel:  0
"assignvariableop_65_conv2d_58_bias: >
$assignvariableop_66_conv2d_59_kernel: 0
"assignvariableop_67_conv2d_59_bias:'
assignvariableop_68_adam_iter:	 )
assignvariableop_69_adam_beta_1: )
assignvariableop_70_adam_beta_2: (
assignvariableop_71_adam_decay: 0
&assignvariableop_72_adam_learning_rate: #
assignvariableop_73_total: #
assignvariableop_74_count: %
assignvariableop_75_total_1: %
assignvariableop_76_count_1: E
+assignvariableop_77_adam_conv2d_40_kernel_m: 7
)assignvariableop_78_adam_conv2d_40_bias_m: E
+assignvariableop_79_adam_conv2d_41_kernel_m:  7
)assignvariableop_80_adam_conv2d_41_bias_m: E
7assignvariableop_81_adam_batch_normalization_10_gamma_m: D
6assignvariableop_82_adam_batch_normalization_10_beta_m: E
+assignvariableop_83_adam_conv2d_42_kernel_m: @7
)assignvariableop_84_adam_conv2d_42_bias_m:@E
+assignvariableop_85_adam_conv2d_43_kernel_m:@@7
)assignvariableop_86_adam_conv2d_43_bias_m:@E
7assignvariableop_87_adam_batch_normalization_11_gamma_m:@D
6assignvariableop_88_adam_batch_normalization_11_beta_m:@F
+assignvariableop_89_adam_conv2d_44_kernel_m:@?8
)assignvariableop_90_adam_conv2d_44_bias_m:	?G
+assignvariableop_91_adam_conv2d_45_kernel_m:??8
)assignvariableop_92_adam_conv2d_45_bias_m:	?F
7assignvariableop_93_adam_batch_normalization_12_gamma_m:	?E
6assignvariableop_94_adam_batch_normalization_12_beta_m:	?G
+assignvariableop_95_adam_conv2d_46_kernel_m:??8
)assignvariableop_96_adam_conv2d_46_bias_m:	?G
+assignvariableop_97_adam_conv2d_47_kernel_m:??8
)assignvariableop_98_adam_conv2d_47_bias_m:	?F
7assignvariableop_99_adam_batch_normalization_13_gamma_m:	?F
7assignvariableop_100_adam_batch_normalization_13_beta_m:	?H
,assignvariableop_101_adam_conv2d_48_kernel_m:??9
*assignvariableop_102_adam_conv2d_48_bias_m:	?H
,assignvariableop_103_adam_conv2d_49_kernel_m:??9
*assignvariableop_104_adam_conv2d_49_bias_m:	?G
8assignvariableop_105_adam_batch_normalization_14_gamma_m:	?F
7assignvariableop_106_adam_batch_normalization_14_beta_m:	?Q
5assignvariableop_107_adam_conv2d_transpose_8_kernel_m:??B
3assignvariableop_108_adam_conv2d_transpose_8_bias_m:	?H
,assignvariableop_109_adam_conv2d_50_kernel_m:??9
*assignvariableop_110_adam_conv2d_50_bias_m:	?H
,assignvariableop_111_adam_conv2d_51_kernel_m:??9
*assignvariableop_112_adam_conv2d_51_bias_m:	?Q
5assignvariableop_113_adam_conv2d_transpose_9_kernel_m:??B
3assignvariableop_114_adam_conv2d_transpose_9_bias_m:	?H
,assignvariableop_115_adam_conv2d_52_kernel_m:??9
*assignvariableop_116_adam_conv2d_52_bias_m:	?H
,assignvariableop_117_adam_conv2d_53_kernel_m:??9
*assignvariableop_118_adam_conv2d_53_bias_m:	?Q
6assignvariableop_119_adam_conv2d_transpose_10_kernel_m:@?B
4assignvariableop_120_adam_conv2d_transpose_10_bias_m:@G
,assignvariableop_121_adam_conv2d_54_kernel_m:?@8
*assignvariableop_122_adam_conv2d_54_bias_m:@F
,assignvariableop_123_adam_conv2d_55_kernel_m:@@8
*assignvariableop_124_adam_conv2d_55_bias_m:@P
6assignvariableop_125_adam_conv2d_transpose_11_kernel_m: @B
4assignvariableop_126_adam_conv2d_transpose_11_bias_m: F
,assignvariableop_127_adam_conv2d_56_kernel_m:@ 8
*assignvariableop_128_adam_conv2d_56_bias_m: F
,assignvariableop_129_adam_conv2d_57_kernel_m:  8
*assignvariableop_130_adam_conv2d_57_bias_m: F
,assignvariableop_131_adam_conv2d_58_kernel_m:  8
*assignvariableop_132_adam_conv2d_58_bias_m: F
,assignvariableop_133_adam_conv2d_59_kernel_m: 8
*assignvariableop_134_adam_conv2d_59_bias_m:F
,assignvariableop_135_adam_conv2d_40_kernel_v: 8
*assignvariableop_136_adam_conv2d_40_bias_v: F
,assignvariableop_137_adam_conv2d_41_kernel_v:  8
*assignvariableop_138_adam_conv2d_41_bias_v: F
8assignvariableop_139_adam_batch_normalization_10_gamma_v: E
7assignvariableop_140_adam_batch_normalization_10_beta_v: F
,assignvariableop_141_adam_conv2d_42_kernel_v: @8
*assignvariableop_142_adam_conv2d_42_bias_v:@F
,assignvariableop_143_adam_conv2d_43_kernel_v:@@8
*assignvariableop_144_adam_conv2d_43_bias_v:@F
8assignvariableop_145_adam_batch_normalization_11_gamma_v:@E
7assignvariableop_146_adam_batch_normalization_11_beta_v:@G
,assignvariableop_147_adam_conv2d_44_kernel_v:@?9
*assignvariableop_148_adam_conv2d_44_bias_v:	?H
,assignvariableop_149_adam_conv2d_45_kernel_v:??9
*assignvariableop_150_adam_conv2d_45_bias_v:	?G
8assignvariableop_151_adam_batch_normalization_12_gamma_v:	?F
7assignvariableop_152_adam_batch_normalization_12_beta_v:	?H
,assignvariableop_153_adam_conv2d_46_kernel_v:??9
*assignvariableop_154_adam_conv2d_46_bias_v:	?H
,assignvariableop_155_adam_conv2d_47_kernel_v:??9
*assignvariableop_156_adam_conv2d_47_bias_v:	?G
8assignvariableop_157_adam_batch_normalization_13_gamma_v:	?F
7assignvariableop_158_adam_batch_normalization_13_beta_v:	?H
,assignvariableop_159_adam_conv2d_48_kernel_v:??9
*assignvariableop_160_adam_conv2d_48_bias_v:	?H
,assignvariableop_161_adam_conv2d_49_kernel_v:??9
*assignvariableop_162_adam_conv2d_49_bias_v:	?G
8assignvariableop_163_adam_batch_normalization_14_gamma_v:	?F
7assignvariableop_164_adam_batch_normalization_14_beta_v:	?Q
5assignvariableop_165_adam_conv2d_transpose_8_kernel_v:??B
3assignvariableop_166_adam_conv2d_transpose_8_bias_v:	?H
,assignvariableop_167_adam_conv2d_50_kernel_v:??9
*assignvariableop_168_adam_conv2d_50_bias_v:	?H
,assignvariableop_169_adam_conv2d_51_kernel_v:??9
*assignvariableop_170_adam_conv2d_51_bias_v:	?Q
5assignvariableop_171_adam_conv2d_transpose_9_kernel_v:??B
3assignvariableop_172_adam_conv2d_transpose_9_bias_v:	?H
,assignvariableop_173_adam_conv2d_52_kernel_v:??9
*assignvariableop_174_adam_conv2d_52_bias_v:	?H
,assignvariableop_175_adam_conv2d_53_kernel_v:??9
*assignvariableop_176_adam_conv2d_53_bias_v:	?Q
6assignvariableop_177_adam_conv2d_transpose_10_kernel_v:@?B
4assignvariableop_178_adam_conv2d_transpose_10_bias_v:@G
,assignvariableop_179_adam_conv2d_54_kernel_v:?@8
*assignvariableop_180_adam_conv2d_54_bias_v:@F
,assignvariableop_181_adam_conv2d_55_kernel_v:@@8
*assignvariableop_182_adam_conv2d_55_bias_v:@P
6assignvariableop_183_adam_conv2d_transpose_11_kernel_v: @B
4assignvariableop_184_adam_conv2d_transpose_11_bias_v: F
,assignvariableop_185_adam_conv2d_56_kernel_v:@ 8
*assignvariableop_186_adam_conv2d_56_bias_v: F
,assignvariableop_187_adam_conv2d_57_kernel_v:  8
*assignvariableop_188_adam_conv2d_57_bias_v: F
,assignvariableop_189_adam_conv2d_58_kernel_v:  8
*assignvariableop_190_adam_conv2d_58_bias_v: F
,assignvariableop_191_adam_conv2d_59_kernel_v: 8
*assignvariableop_192_adam_conv2d_59_bias_v:
identity_194??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_100?AssignVariableOp_101?AssignVariableOp_102?AssignVariableOp_103?AssignVariableOp_104?AssignVariableOp_105?AssignVariableOp_106?AssignVariableOp_107?AssignVariableOp_108?AssignVariableOp_109?AssignVariableOp_11?AssignVariableOp_110?AssignVariableOp_111?AssignVariableOp_112?AssignVariableOp_113?AssignVariableOp_114?AssignVariableOp_115?AssignVariableOp_116?AssignVariableOp_117?AssignVariableOp_118?AssignVariableOp_119?AssignVariableOp_12?AssignVariableOp_120?AssignVariableOp_121?AssignVariableOp_122?AssignVariableOp_123?AssignVariableOp_124?AssignVariableOp_125?AssignVariableOp_126?AssignVariableOp_127?AssignVariableOp_128?AssignVariableOp_129?AssignVariableOp_13?AssignVariableOp_130?AssignVariableOp_131?AssignVariableOp_132?AssignVariableOp_133?AssignVariableOp_134?AssignVariableOp_135?AssignVariableOp_136?AssignVariableOp_137?AssignVariableOp_138?AssignVariableOp_139?AssignVariableOp_14?AssignVariableOp_140?AssignVariableOp_141?AssignVariableOp_142?AssignVariableOp_143?AssignVariableOp_144?AssignVariableOp_145?AssignVariableOp_146?AssignVariableOp_147?AssignVariableOp_148?AssignVariableOp_149?AssignVariableOp_15?AssignVariableOp_150?AssignVariableOp_151?AssignVariableOp_152?AssignVariableOp_153?AssignVariableOp_154?AssignVariableOp_155?AssignVariableOp_156?AssignVariableOp_157?AssignVariableOp_158?AssignVariableOp_159?AssignVariableOp_16?AssignVariableOp_160?AssignVariableOp_161?AssignVariableOp_162?AssignVariableOp_163?AssignVariableOp_164?AssignVariableOp_165?AssignVariableOp_166?AssignVariableOp_167?AssignVariableOp_168?AssignVariableOp_169?AssignVariableOp_17?AssignVariableOp_170?AssignVariableOp_171?AssignVariableOp_172?AssignVariableOp_173?AssignVariableOp_174?AssignVariableOp_175?AssignVariableOp_176?AssignVariableOp_177?AssignVariableOp_178?AssignVariableOp_179?AssignVariableOp_18?AssignVariableOp_180?AssignVariableOp_181?AssignVariableOp_182?AssignVariableOp_183?AssignVariableOp_184?AssignVariableOp_185?AssignVariableOp_186?AssignVariableOp_187?AssignVariableOp_188?AssignVariableOp_189?AssignVariableOp_19?AssignVariableOp_190?AssignVariableOp_191?AssignVariableOp_192?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_33?AssignVariableOp_34?AssignVariableOp_35?AssignVariableOp_36?AssignVariableOp_37?AssignVariableOp_38?AssignVariableOp_39?AssignVariableOp_4?AssignVariableOp_40?AssignVariableOp_41?AssignVariableOp_42?AssignVariableOp_43?AssignVariableOp_44?AssignVariableOp_45?AssignVariableOp_46?AssignVariableOp_47?AssignVariableOp_48?AssignVariableOp_49?AssignVariableOp_5?AssignVariableOp_50?AssignVariableOp_51?AssignVariableOp_52?AssignVariableOp_53?AssignVariableOp_54?AssignVariableOp_55?AssignVariableOp_56?AssignVariableOp_57?AssignVariableOp_58?AssignVariableOp_59?AssignVariableOp_6?AssignVariableOp_60?AssignVariableOp_61?AssignVariableOp_62?AssignVariableOp_63?AssignVariableOp_64?AssignVariableOp_65?AssignVariableOp_66?AssignVariableOp_67?AssignVariableOp_68?AssignVariableOp_69?AssignVariableOp_7?AssignVariableOp_70?AssignVariableOp_71?AssignVariableOp_72?AssignVariableOp_73?AssignVariableOp_74?AssignVariableOp_75?AssignVariableOp_76?AssignVariableOp_77?AssignVariableOp_78?AssignVariableOp_79?AssignVariableOp_8?AssignVariableOp_80?AssignVariableOp_81?AssignVariableOp_82?AssignVariableOp_83?AssignVariableOp_84?AssignVariableOp_85?AssignVariableOp_86?AssignVariableOp_87?AssignVariableOp_88?AssignVariableOp_89?AssignVariableOp_9?AssignVariableOp_90?AssignVariableOp_91?AssignVariableOp_92?AssignVariableOp_93?AssignVariableOp_94?AssignVariableOp_95?AssignVariableOp_96?AssignVariableOp_97?AssignVariableOp_98?AssignVariableOp_99?n
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes	
:?*
dtype0*?m
value?mB?m?B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-2/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-2/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-2/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-8/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-8/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-8/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-11/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-11/beta/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-11/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-11/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-13/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-13/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-14/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-14/beta/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-14/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-14/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-15/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-15/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-16/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-16/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-17/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-17/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-18/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-18/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-19/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-19/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-20/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-20/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-21/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-21/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-22/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-22/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-23/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-23/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-24/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-24/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-25/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-25/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-26/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-26/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-27/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-27/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-28/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-28/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-2/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-8/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-11/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-11/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-13/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-13/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-14/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-14/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-15/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-15/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-16/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-16/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-17/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-17/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-18/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-18/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-19/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-19/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-20/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-20/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-21/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-21/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-22/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-22/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-23/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-23/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-24/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-24/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-25/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-25/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-26/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-26/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-27/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-27/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-28/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-28/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-2/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-8/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-11/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-11/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-13/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-13/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-14/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-14/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-15/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-15/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-16/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-16/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-17/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-17/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-18/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-18/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-19/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-19/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-20/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-20/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-21/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-21/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-22/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-22/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-23/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-23/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-24/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-24/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-25/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-25/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-26/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-26/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-27/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-27/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-28/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-28/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes	
:?*
dtype0*?
value?B??B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*?
dtypes?
?2?	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOpAssignVariableOp!assignvariableop_conv2d_40_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_conv2d_40_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_2AssignVariableOp#assignvariableop_2_conv2d_41_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_3AssignVariableOp!assignvariableop_3_conv2d_41_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_4AssignVariableOp/assignvariableop_4_batch_normalization_10_gammaIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_5AssignVariableOp.assignvariableop_5_batch_normalization_10_betaIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_6AssignVariableOp5assignvariableop_6_batch_normalization_10_moving_meanIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_7AssignVariableOp9assignvariableop_7_batch_normalization_10_moving_varianceIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp#assignvariableop_8_conv2d_42_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp!assignvariableop_9_conv2d_42_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp$assignvariableop_10_conv2d_43_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp"assignvariableop_11_conv2d_43_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp0assignvariableop_12_batch_normalization_11_gammaIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp/assignvariableop_13_batch_normalization_11_betaIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp6assignvariableop_14_batch_normalization_11_moving_meanIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp:assignvariableop_15_batch_normalization_11_moving_varianceIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_16AssignVariableOp$assignvariableop_16_conv2d_44_kernelIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_17AssignVariableOp"assignvariableop_17_conv2d_44_biasIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_18AssignVariableOp$assignvariableop_18_conv2d_45_kernelIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp"assignvariableop_19_conv2d_45_biasIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp0assignvariableop_20_batch_normalization_12_gammaIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOp/assignvariableop_21_batch_normalization_12_betaIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp6assignvariableop_22_batch_normalization_12_moving_meanIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp:assignvariableop_23_batch_normalization_12_moving_varianceIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOp$assignvariableop_24_conv2d_46_kernelIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp"assignvariableop_25_conv2d_46_biasIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp$assignvariableop_26_conv2d_47_kernelIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOp"assignvariableop_27_conv2d_47_biasIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp0assignvariableop_28_batch_normalization_13_gammaIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp/assignvariableop_29_batch_normalization_13_betaIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp6assignvariableop_30_batch_normalization_13_moving_meanIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp:assignvariableop_31_batch_normalization_13_moving_varianceIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOp$assignvariableop_32_conv2d_48_kernelIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp"assignvariableop_33_conv2d_48_biasIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp$assignvariableop_34_conv2d_49_kernelIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOp"assignvariableop_35_conv2d_49_biasIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp0assignvariableop_36_batch_normalization_14_gammaIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp/assignvariableop_37_batch_normalization_14_betaIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOp6assignvariableop_38_batch_normalization_14_moving_meanIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp:assignvariableop_39_batch_normalization_14_moving_varianceIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_40AssignVariableOp-assignvariableop_40_conv2d_transpose_8_kernelIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_41AssignVariableOp+assignvariableop_41_conv2d_transpose_8_biasIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_42AssignVariableOp$assignvariableop_42_conv2d_50_kernelIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_43AssignVariableOp"assignvariableop_43_conv2d_50_biasIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_44AssignVariableOp$assignvariableop_44_conv2d_51_kernelIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_45AssignVariableOp"assignvariableop_45_conv2d_51_biasIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_46AssignVariableOp-assignvariableop_46_conv2d_transpose_9_kernelIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_47AssignVariableOp+assignvariableop_47_conv2d_transpose_9_biasIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_48AssignVariableOp$assignvariableop_48_conv2d_52_kernelIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_49AssignVariableOp"assignvariableop_49_conv2d_52_biasIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_50AssignVariableOp$assignvariableop_50_conv2d_53_kernelIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_51AssignVariableOp"assignvariableop_51_conv2d_53_biasIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_52AssignVariableOp.assignvariableop_52_conv2d_transpose_10_kernelIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_53AssignVariableOp,assignvariableop_53_conv2d_transpose_10_biasIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_54AssignVariableOp$assignvariableop_54_conv2d_54_kernelIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_55AssignVariableOp"assignvariableop_55_conv2d_54_biasIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_56AssignVariableOp$assignvariableop_56_conv2d_55_kernelIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_57AssignVariableOp"assignvariableop_57_conv2d_55_biasIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_58AssignVariableOp.assignvariableop_58_conv2d_transpose_11_kernelIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_59AssignVariableOp,assignvariableop_59_conv2d_transpose_11_biasIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_60AssignVariableOp$assignvariableop_60_conv2d_56_kernelIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_61AssignVariableOp"assignvariableop_61_conv2d_56_biasIdentity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_62AssignVariableOp$assignvariableop_62_conv2d_57_kernelIdentity_62:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_63AssignVariableOp"assignvariableop_63_conv2d_57_biasIdentity_63:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_64AssignVariableOp$assignvariableop_64_conv2d_58_kernelIdentity_64:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_65AssignVariableOp"assignvariableop_65_conv2d_58_biasIdentity_65:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_66AssignVariableOp$assignvariableop_66_conv2d_59_kernelIdentity_66:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_67AssignVariableOp"assignvariableop_67_conv2d_59_biasIdentity_67:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0	*
_output_shapes
:?
AssignVariableOp_68AssignVariableOpassignvariableop_68_adam_iterIdentity_68:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_69AssignVariableOpassignvariableop_69_adam_beta_1Identity_69:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_70IdentityRestoreV2:tensors:70"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_70AssignVariableOpassignvariableop_70_adam_beta_2Identity_70:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_71IdentityRestoreV2:tensors:71"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_71AssignVariableOpassignvariableop_71_adam_decayIdentity_71:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_72IdentityRestoreV2:tensors:72"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_72AssignVariableOp&assignvariableop_72_adam_learning_rateIdentity_72:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_73IdentityRestoreV2:tensors:73"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_73AssignVariableOpassignvariableop_73_totalIdentity_73:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_74IdentityRestoreV2:tensors:74"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_74AssignVariableOpassignvariableop_74_countIdentity_74:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_75IdentityRestoreV2:tensors:75"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_75AssignVariableOpassignvariableop_75_total_1Identity_75:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_76IdentityRestoreV2:tensors:76"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_76AssignVariableOpassignvariableop_76_count_1Identity_76:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_77IdentityRestoreV2:tensors:77"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_77AssignVariableOp+assignvariableop_77_adam_conv2d_40_kernel_mIdentity_77:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_78IdentityRestoreV2:tensors:78"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_78AssignVariableOp)assignvariableop_78_adam_conv2d_40_bias_mIdentity_78:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_79IdentityRestoreV2:tensors:79"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_79AssignVariableOp+assignvariableop_79_adam_conv2d_41_kernel_mIdentity_79:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_80IdentityRestoreV2:tensors:80"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_80AssignVariableOp)assignvariableop_80_adam_conv2d_41_bias_mIdentity_80:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_81IdentityRestoreV2:tensors:81"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_81AssignVariableOp7assignvariableop_81_adam_batch_normalization_10_gamma_mIdentity_81:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_82IdentityRestoreV2:tensors:82"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_82AssignVariableOp6assignvariableop_82_adam_batch_normalization_10_beta_mIdentity_82:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_83IdentityRestoreV2:tensors:83"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_83AssignVariableOp+assignvariableop_83_adam_conv2d_42_kernel_mIdentity_83:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_84IdentityRestoreV2:tensors:84"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_84AssignVariableOp)assignvariableop_84_adam_conv2d_42_bias_mIdentity_84:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_85IdentityRestoreV2:tensors:85"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_85AssignVariableOp+assignvariableop_85_adam_conv2d_43_kernel_mIdentity_85:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_86IdentityRestoreV2:tensors:86"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_86AssignVariableOp)assignvariableop_86_adam_conv2d_43_bias_mIdentity_86:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_87IdentityRestoreV2:tensors:87"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_87AssignVariableOp7assignvariableop_87_adam_batch_normalization_11_gamma_mIdentity_87:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_88IdentityRestoreV2:tensors:88"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_88AssignVariableOp6assignvariableop_88_adam_batch_normalization_11_beta_mIdentity_88:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_89IdentityRestoreV2:tensors:89"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_89AssignVariableOp+assignvariableop_89_adam_conv2d_44_kernel_mIdentity_89:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_90IdentityRestoreV2:tensors:90"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_90AssignVariableOp)assignvariableop_90_adam_conv2d_44_bias_mIdentity_90:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_91IdentityRestoreV2:tensors:91"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_91AssignVariableOp+assignvariableop_91_adam_conv2d_45_kernel_mIdentity_91:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_92IdentityRestoreV2:tensors:92"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_92AssignVariableOp)assignvariableop_92_adam_conv2d_45_bias_mIdentity_92:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_93IdentityRestoreV2:tensors:93"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_93AssignVariableOp7assignvariableop_93_adam_batch_normalization_12_gamma_mIdentity_93:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_94IdentityRestoreV2:tensors:94"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_94AssignVariableOp6assignvariableop_94_adam_batch_normalization_12_beta_mIdentity_94:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_95IdentityRestoreV2:tensors:95"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_95AssignVariableOp+assignvariableop_95_adam_conv2d_46_kernel_mIdentity_95:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_96IdentityRestoreV2:tensors:96"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_96AssignVariableOp)assignvariableop_96_adam_conv2d_46_bias_mIdentity_96:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_97IdentityRestoreV2:tensors:97"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_97AssignVariableOp+assignvariableop_97_adam_conv2d_47_kernel_mIdentity_97:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_98IdentityRestoreV2:tensors:98"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_98AssignVariableOp)assignvariableop_98_adam_conv2d_47_bias_mIdentity_98:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_99IdentityRestoreV2:tensors:99"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_99AssignVariableOp7assignvariableop_99_adam_batch_normalization_13_gamma_mIdentity_99:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_100IdentityRestoreV2:tensors:100"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_100AssignVariableOp7assignvariableop_100_adam_batch_normalization_13_beta_mIdentity_100:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_101IdentityRestoreV2:tensors:101"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_101AssignVariableOp,assignvariableop_101_adam_conv2d_48_kernel_mIdentity_101:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_102IdentityRestoreV2:tensors:102"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_102AssignVariableOp*assignvariableop_102_adam_conv2d_48_bias_mIdentity_102:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_103IdentityRestoreV2:tensors:103"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_103AssignVariableOp,assignvariableop_103_adam_conv2d_49_kernel_mIdentity_103:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_104IdentityRestoreV2:tensors:104"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_104AssignVariableOp*assignvariableop_104_adam_conv2d_49_bias_mIdentity_104:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_105IdentityRestoreV2:tensors:105"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_105AssignVariableOp8assignvariableop_105_adam_batch_normalization_14_gamma_mIdentity_105:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_106IdentityRestoreV2:tensors:106"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_106AssignVariableOp7assignvariableop_106_adam_batch_normalization_14_beta_mIdentity_106:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_107IdentityRestoreV2:tensors:107"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_107AssignVariableOp5assignvariableop_107_adam_conv2d_transpose_8_kernel_mIdentity_107:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_108IdentityRestoreV2:tensors:108"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_108AssignVariableOp3assignvariableop_108_adam_conv2d_transpose_8_bias_mIdentity_108:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_109IdentityRestoreV2:tensors:109"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_109AssignVariableOp,assignvariableop_109_adam_conv2d_50_kernel_mIdentity_109:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_110IdentityRestoreV2:tensors:110"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_110AssignVariableOp*assignvariableop_110_adam_conv2d_50_bias_mIdentity_110:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_111IdentityRestoreV2:tensors:111"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_111AssignVariableOp,assignvariableop_111_adam_conv2d_51_kernel_mIdentity_111:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_112IdentityRestoreV2:tensors:112"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_112AssignVariableOp*assignvariableop_112_adam_conv2d_51_bias_mIdentity_112:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_113IdentityRestoreV2:tensors:113"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_113AssignVariableOp5assignvariableop_113_adam_conv2d_transpose_9_kernel_mIdentity_113:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_114IdentityRestoreV2:tensors:114"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_114AssignVariableOp3assignvariableop_114_adam_conv2d_transpose_9_bias_mIdentity_114:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_115IdentityRestoreV2:tensors:115"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_115AssignVariableOp,assignvariableop_115_adam_conv2d_52_kernel_mIdentity_115:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_116IdentityRestoreV2:tensors:116"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_116AssignVariableOp*assignvariableop_116_adam_conv2d_52_bias_mIdentity_116:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_117IdentityRestoreV2:tensors:117"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_117AssignVariableOp,assignvariableop_117_adam_conv2d_53_kernel_mIdentity_117:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_118IdentityRestoreV2:tensors:118"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_118AssignVariableOp*assignvariableop_118_adam_conv2d_53_bias_mIdentity_118:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_119IdentityRestoreV2:tensors:119"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_119AssignVariableOp6assignvariableop_119_adam_conv2d_transpose_10_kernel_mIdentity_119:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_120IdentityRestoreV2:tensors:120"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_120AssignVariableOp4assignvariableop_120_adam_conv2d_transpose_10_bias_mIdentity_120:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_121IdentityRestoreV2:tensors:121"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_121AssignVariableOp,assignvariableop_121_adam_conv2d_54_kernel_mIdentity_121:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_122IdentityRestoreV2:tensors:122"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_122AssignVariableOp*assignvariableop_122_adam_conv2d_54_bias_mIdentity_122:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_123IdentityRestoreV2:tensors:123"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_123AssignVariableOp,assignvariableop_123_adam_conv2d_55_kernel_mIdentity_123:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_124IdentityRestoreV2:tensors:124"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_124AssignVariableOp*assignvariableop_124_adam_conv2d_55_bias_mIdentity_124:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_125IdentityRestoreV2:tensors:125"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_125AssignVariableOp6assignvariableop_125_adam_conv2d_transpose_11_kernel_mIdentity_125:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_126IdentityRestoreV2:tensors:126"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_126AssignVariableOp4assignvariableop_126_adam_conv2d_transpose_11_bias_mIdentity_126:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_127IdentityRestoreV2:tensors:127"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_127AssignVariableOp,assignvariableop_127_adam_conv2d_56_kernel_mIdentity_127:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_128IdentityRestoreV2:tensors:128"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_128AssignVariableOp*assignvariableop_128_adam_conv2d_56_bias_mIdentity_128:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_129IdentityRestoreV2:tensors:129"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_129AssignVariableOp,assignvariableop_129_adam_conv2d_57_kernel_mIdentity_129:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_130IdentityRestoreV2:tensors:130"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_130AssignVariableOp*assignvariableop_130_adam_conv2d_57_bias_mIdentity_130:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_131IdentityRestoreV2:tensors:131"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_131AssignVariableOp,assignvariableop_131_adam_conv2d_58_kernel_mIdentity_131:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_132IdentityRestoreV2:tensors:132"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_132AssignVariableOp*assignvariableop_132_adam_conv2d_58_bias_mIdentity_132:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_133IdentityRestoreV2:tensors:133"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_133AssignVariableOp,assignvariableop_133_adam_conv2d_59_kernel_mIdentity_133:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_134IdentityRestoreV2:tensors:134"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_134AssignVariableOp*assignvariableop_134_adam_conv2d_59_bias_mIdentity_134:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_135IdentityRestoreV2:tensors:135"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_135AssignVariableOp,assignvariableop_135_adam_conv2d_40_kernel_vIdentity_135:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_136IdentityRestoreV2:tensors:136"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_136AssignVariableOp*assignvariableop_136_adam_conv2d_40_bias_vIdentity_136:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_137IdentityRestoreV2:tensors:137"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_137AssignVariableOp,assignvariableop_137_adam_conv2d_41_kernel_vIdentity_137:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_138IdentityRestoreV2:tensors:138"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_138AssignVariableOp*assignvariableop_138_adam_conv2d_41_bias_vIdentity_138:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_139IdentityRestoreV2:tensors:139"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_139AssignVariableOp8assignvariableop_139_adam_batch_normalization_10_gamma_vIdentity_139:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_140IdentityRestoreV2:tensors:140"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_140AssignVariableOp7assignvariableop_140_adam_batch_normalization_10_beta_vIdentity_140:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_141IdentityRestoreV2:tensors:141"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_141AssignVariableOp,assignvariableop_141_adam_conv2d_42_kernel_vIdentity_141:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_142IdentityRestoreV2:tensors:142"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_142AssignVariableOp*assignvariableop_142_adam_conv2d_42_bias_vIdentity_142:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_143IdentityRestoreV2:tensors:143"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_143AssignVariableOp,assignvariableop_143_adam_conv2d_43_kernel_vIdentity_143:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_144IdentityRestoreV2:tensors:144"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_144AssignVariableOp*assignvariableop_144_adam_conv2d_43_bias_vIdentity_144:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_145IdentityRestoreV2:tensors:145"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_145AssignVariableOp8assignvariableop_145_adam_batch_normalization_11_gamma_vIdentity_145:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_146IdentityRestoreV2:tensors:146"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_146AssignVariableOp7assignvariableop_146_adam_batch_normalization_11_beta_vIdentity_146:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_147IdentityRestoreV2:tensors:147"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_147AssignVariableOp,assignvariableop_147_adam_conv2d_44_kernel_vIdentity_147:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_148IdentityRestoreV2:tensors:148"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_148AssignVariableOp*assignvariableop_148_adam_conv2d_44_bias_vIdentity_148:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_149IdentityRestoreV2:tensors:149"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_149AssignVariableOp,assignvariableop_149_adam_conv2d_45_kernel_vIdentity_149:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_150IdentityRestoreV2:tensors:150"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_150AssignVariableOp*assignvariableop_150_adam_conv2d_45_bias_vIdentity_150:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_151IdentityRestoreV2:tensors:151"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_151AssignVariableOp8assignvariableop_151_adam_batch_normalization_12_gamma_vIdentity_151:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_152IdentityRestoreV2:tensors:152"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_152AssignVariableOp7assignvariableop_152_adam_batch_normalization_12_beta_vIdentity_152:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_153IdentityRestoreV2:tensors:153"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_153AssignVariableOp,assignvariableop_153_adam_conv2d_46_kernel_vIdentity_153:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_154IdentityRestoreV2:tensors:154"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_154AssignVariableOp*assignvariableop_154_adam_conv2d_46_bias_vIdentity_154:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_155IdentityRestoreV2:tensors:155"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_155AssignVariableOp,assignvariableop_155_adam_conv2d_47_kernel_vIdentity_155:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_156IdentityRestoreV2:tensors:156"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_156AssignVariableOp*assignvariableop_156_adam_conv2d_47_bias_vIdentity_156:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_157IdentityRestoreV2:tensors:157"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_157AssignVariableOp8assignvariableop_157_adam_batch_normalization_13_gamma_vIdentity_157:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_158IdentityRestoreV2:tensors:158"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_158AssignVariableOp7assignvariableop_158_adam_batch_normalization_13_beta_vIdentity_158:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_159IdentityRestoreV2:tensors:159"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_159AssignVariableOp,assignvariableop_159_adam_conv2d_48_kernel_vIdentity_159:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_160IdentityRestoreV2:tensors:160"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_160AssignVariableOp*assignvariableop_160_adam_conv2d_48_bias_vIdentity_160:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_161IdentityRestoreV2:tensors:161"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_161AssignVariableOp,assignvariableop_161_adam_conv2d_49_kernel_vIdentity_161:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_162IdentityRestoreV2:tensors:162"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_162AssignVariableOp*assignvariableop_162_adam_conv2d_49_bias_vIdentity_162:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_163IdentityRestoreV2:tensors:163"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_163AssignVariableOp8assignvariableop_163_adam_batch_normalization_14_gamma_vIdentity_163:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_164IdentityRestoreV2:tensors:164"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_164AssignVariableOp7assignvariableop_164_adam_batch_normalization_14_beta_vIdentity_164:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_165IdentityRestoreV2:tensors:165"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_165AssignVariableOp5assignvariableop_165_adam_conv2d_transpose_8_kernel_vIdentity_165:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_166IdentityRestoreV2:tensors:166"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_166AssignVariableOp3assignvariableop_166_adam_conv2d_transpose_8_bias_vIdentity_166:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_167IdentityRestoreV2:tensors:167"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_167AssignVariableOp,assignvariableop_167_adam_conv2d_50_kernel_vIdentity_167:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_168IdentityRestoreV2:tensors:168"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_168AssignVariableOp*assignvariableop_168_adam_conv2d_50_bias_vIdentity_168:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_169IdentityRestoreV2:tensors:169"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_169AssignVariableOp,assignvariableop_169_adam_conv2d_51_kernel_vIdentity_169:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_170IdentityRestoreV2:tensors:170"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_170AssignVariableOp*assignvariableop_170_adam_conv2d_51_bias_vIdentity_170:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_171IdentityRestoreV2:tensors:171"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_171AssignVariableOp5assignvariableop_171_adam_conv2d_transpose_9_kernel_vIdentity_171:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_172IdentityRestoreV2:tensors:172"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_172AssignVariableOp3assignvariableop_172_adam_conv2d_transpose_9_bias_vIdentity_172:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_173IdentityRestoreV2:tensors:173"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_173AssignVariableOp,assignvariableop_173_adam_conv2d_52_kernel_vIdentity_173:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_174IdentityRestoreV2:tensors:174"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_174AssignVariableOp*assignvariableop_174_adam_conv2d_52_bias_vIdentity_174:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_175IdentityRestoreV2:tensors:175"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_175AssignVariableOp,assignvariableop_175_adam_conv2d_53_kernel_vIdentity_175:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_176IdentityRestoreV2:tensors:176"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_176AssignVariableOp*assignvariableop_176_adam_conv2d_53_bias_vIdentity_176:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_177IdentityRestoreV2:tensors:177"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_177AssignVariableOp6assignvariableop_177_adam_conv2d_transpose_10_kernel_vIdentity_177:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_178IdentityRestoreV2:tensors:178"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_178AssignVariableOp4assignvariableop_178_adam_conv2d_transpose_10_bias_vIdentity_178:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_179IdentityRestoreV2:tensors:179"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_179AssignVariableOp,assignvariableop_179_adam_conv2d_54_kernel_vIdentity_179:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_180IdentityRestoreV2:tensors:180"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_180AssignVariableOp*assignvariableop_180_adam_conv2d_54_bias_vIdentity_180:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_181IdentityRestoreV2:tensors:181"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_181AssignVariableOp,assignvariableop_181_adam_conv2d_55_kernel_vIdentity_181:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_182IdentityRestoreV2:tensors:182"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_182AssignVariableOp*assignvariableop_182_adam_conv2d_55_bias_vIdentity_182:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_183IdentityRestoreV2:tensors:183"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_183AssignVariableOp6assignvariableop_183_adam_conv2d_transpose_11_kernel_vIdentity_183:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_184IdentityRestoreV2:tensors:184"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_184AssignVariableOp4assignvariableop_184_adam_conv2d_transpose_11_bias_vIdentity_184:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_185IdentityRestoreV2:tensors:185"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_185AssignVariableOp,assignvariableop_185_adam_conv2d_56_kernel_vIdentity_185:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_186IdentityRestoreV2:tensors:186"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_186AssignVariableOp*assignvariableop_186_adam_conv2d_56_bias_vIdentity_186:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_187IdentityRestoreV2:tensors:187"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_187AssignVariableOp,assignvariableop_187_adam_conv2d_57_kernel_vIdentity_187:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_188IdentityRestoreV2:tensors:188"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_188AssignVariableOp*assignvariableop_188_adam_conv2d_57_bias_vIdentity_188:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_189IdentityRestoreV2:tensors:189"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_189AssignVariableOp,assignvariableop_189_adam_conv2d_58_kernel_vIdentity_189:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_190IdentityRestoreV2:tensors:190"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_190AssignVariableOp*assignvariableop_190_adam_conv2d_58_bias_vIdentity_190:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_191IdentityRestoreV2:tensors:191"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_191AssignVariableOp,assignvariableop_191_adam_conv2d_59_kernel_vIdentity_191:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_192IdentityRestoreV2:tensors:192"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_192AssignVariableOp*assignvariableop_192_adam_conv2d_59_bias_vIdentity_192:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ?"
Identity_193Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_100^AssignVariableOp_101^AssignVariableOp_102^AssignVariableOp_103^AssignVariableOp_104^AssignVariableOp_105^AssignVariableOp_106^AssignVariableOp_107^AssignVariableOp_108^AssignVariableOp_109^AssignVariableOp_11^AssignVariableOp_110^AssignVariableOp_111^AssignVariableOp_112^AssignVariableOp_113^AssignVariableOp_114^AssignVariableOp_115^AssignVariableOp_116^AssignVariableOp_117^AssignVariableOp_118^AssignVariableOp_119^AssignVariableOp_12^AssignVariableOp_120^AssignVariableOp_121^AssignVariableOp_122^AssignVariableOp_123^AssignVariableOp_124^AssignVariableOp_125^AssignVariableOp_126^AssignVariableOp_127^AssignVariableOp_128^AssignVariableOp_129^AssignVariableOp_13^AssignVariableOp_130^AssignVariableOp_131^AssignVariableOp_132^AssignVariableOp_133^AssignVariableOp_134^AssignVariableOp_135^AssignVariableOp_136^AssignVariableOp_137^AssignVariableOp_138^AssignVariableOp_139^AssignVariableOp_14^AssignVariableOp_140^AssignVariableOp_141^AssignVariableOp_142^AssignVariableOp_143^AssignVariableOp_144^AssignVariableOp_145^AssignVariableOp_146^AssignVariableOp_147^AssignVariableOp_148^AssignVariableOp_149^AssignVariableOp_15^AssignVariableOp_150^AssignVariableOp_151^AssignVariableOp_152^AssignVariableOp_153^AssignVariableOp_154^AssignVariableOp_155^AssignVariableOp_156^AssignVariableOp_157^AssignVariableOp_158^AssignVariableOp_159^AssignVariableOp_16^AssignVariableOp_160^AssignVariableOp_161^AssignVariableOp_162^AssignVariableOp_163^AssignVariableOp_164^AssignVariableOp_165^AssignVariableOp_166^AssignVariableOp_167^AssignVariableOp_168^AssignVariableOp_169^AssignVariableOp_17^AssignVariableOp_170^AssignVariableOp_171^AssignVariableOp_172^AssignVariableOp_173^AssignVariableOp_174^AssignVariableOp_175^AssignVariableOp_176^AssignVariableOp_177^AssignVariableOp_178^AssignVariableOp_179^AssignVariableOp_18^AssignVariableOp_180^AssignVariableOp_181^AssignVariableOp_182^AssignVariableOp_183^AssignVariableOp_184^AssignVariableOp_185^AssignVariableOp_186^AssignVariableOp_187^AssignVariableOp_188^AssignVariableOp_189^AssignVariableOp_19^AssignVariableOp_190^AssignVariableOp_191^AssignVariableOp_192^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_85^AssignVariableOp_86^AssignVariableOp_87^AssignVariableOp_88^AssignVariableOp_89^AssignVariableOp_9^AssignVariableOp_90^AssignVariableOp_91^AssignVariableOp_92^AssignVariableOp_93^AssignVariableOp_94^AssignVariableOp_95^AssignVariableOp_96^AssignVariableOp_97^AssignVariableOp_98^AssignVariableOp_99^NoOp"/device:CPU:0*
T0*
_output_shapes
: Y
Identity_194IdentityIdentity_193:output:0^NoOp_1*
T0*
_output_shapes
: ?"
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_100^AssignVariableOp_101^AssignVariableOp_102^AssignVariableOp_103^AssignVariableOp_104^AssignVariableOp_105^AssignVariableOp_106^AssignVariableOp_107^AssignVariableOp_108^AssignVariableOp_109^AssignVariableOp_11^AssignVariableOp_110^AssignVariableOp_111^AssignVariableOp_112^AssignVariableOp_113^AssignVariableOp_114^AssignVariableOp_115^AssignVariableOp_116^AssignVariableOp_117^AssignVariableOp_118^AssignVariableOp_119^AssignVariableOp_12^AssignVariableOp_120^AssignVariableOp_121^AssignVariableOp_122^AssignVariableOp_123^AssignVariableOp_124^AssignVariableOp_125^AssignVariableOp_126^AssignVariableOp_127^AssignVariableOp_128^AssignVariableOp_129^AssignVariableOp_13^AssignVariableOp_130^AssignVariableOp_131^AssignVariableOp_132^AssignVariableOp_133^AssignVariableOp_134^AssignVariableOp_135^AssignVariableOp_136^AssignVariableOp_137^AssignVariableOp_138^AssignVariableOp_139^AssignVariableOp_14^AssignVariableOp_140^AssignVariableOp_141^AssignVariableOp_142^AssignVariableOp_143^AssignVariableOp_144^AssignVariableOp_145^AssignVariableOp_146^AssignVariableOp_147^AssignVariableOp_148^AssignVariableOp_149^AssignVariableOp_15^AssignVariableOp_150^AssignVariableOp_151^AssignVariableOp_152^AssignVariableOp_153^AssignVariableOp_154^AssignVariableOp_155^AssignVariableOp_156^AssignVariableOp_157^AssignVariableOp_158^AssignVariableOp_159^AssignVariableOp_16^AssignVariableOp_160^AssignVariableOp_161^AssignVariableOp_162^AssignVariableOp_163^AssignVariableOp_164^AssignVariableOp_165^AssignVariableOp_166^AssignVariableOp_167^AssignVariableOp_168^AssignVariableOp_169^AssignVariableOp_17^AssignVariableOp_170^AssignVariableOp_171^AssignVariableOp_172^AssignVariableOp_173^AssignVariableOp_174^AssignVariableOp_175^AssignVariableOp_176^AssignVariableOp_177^AssignVariableOp_178^AssignVariableOp_179^AssignVariableOp_18^AssignVariableOp_180^AssignVariableOp_181^AssignVariableOp_182^AssignVariableOp_183^AssignVariableOp_184^AssignVariableOp_185^AssignVariableOp_186^AssignVariableOp_187^AssignVariableOp_188^AssignVariableOp_189^AssignVariableOp_19^AssignVariableOp_190^AssignVariableOp_191^AssignVariableOp_192^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_85^AssignVariableOp_86^AssignVariableOp_87^AssignVariableOp_88^AssignVariableOp_89^AssignVariableOp_9^AssignVariableOp_90^AssignVariableOp_91^AssignVariableOp_92^AssignVariableOp_93^AssignVariableOp_94^AssignVariableOp_95^AssignVariableOp_96^AssignVariableOp_97^AssignVariableOp_98^AssignVariableOp_99*"
_acd_function_control_output(*
_output_shapes
 "%
identity_194Identity_194:output:0*?
_input_shapes?
?: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102,
AssignVariableOp_100AssignVariableOp_1002,
AssignVariableOp_101AssignVariableOp_1012,
AssignVariableOp_102AssignVariableOp_1022,
AssignVariableOp_103AssignVariableOp_1032,
AssignVariableOp_104AssignVariableOp_1042,
AssignVariableOp_105AssignVariableOp_1052,
AssignVariableOp_106AssignVariableOp_1062,
AssignVariableOp_107AssignVariableOp_1072,
AssignVariableOp_108AssignVariableOp_1082,
AssignVariableOp_109AssignVariableOp_1092*
AssignVariableOp_11AssignVariableOp_112,
AssignVariableOp_110AssignVariableOp_1102,
AssignVariableOp_111AssignVariableOp_1112,
AssignVariableOp_112AssignVariableOp_1122,
AssignVariableOp_113AssignVariableOp_1132,
AssignVariableOp_114AssignVariableOp_1142,
AssignVariableOp_115AssignVariableOp_1152,
AssignVariableOp_116AssignVariableOp_1162,
AssignVariableOp_117AssignVariableOp_1172,
AssignVariableOp_118AssignVariableOp_1182,
AssignVariableOp_119AssignVariableOp_1192*
AssignVariableOp_12AssignVariableOp_122,
AssignVariableOp_120AssignVariableOp_1202,
AssignVariableOp_121AssignVariableOp_1212,
AssignVariableOp_122AssignVariableOp_1222,
AssignVariableOp_123AssignVariableOp_1232,
AssignVariableOp_124AssignVariableOp_1242,
AssignVariableOp_125AssignVariableOp_1252,
AssignVariableOp_126AssignVariableOp_1262,
AssignVariableOp_127AssignVariableOp_1272,
AssignVariableOp_128AssignVariableOp_1282,
AssignVariableOp_129AssignVariableOp_1292*
AssignVariableOp_13AssignVariableOp_132,
AssignVariableOp_130AssignVariableOp_1302,
AssignVariableOp_131AssignVariableOp_1312,
AssignVariableOp_132AssignVariableOp_1322,
AssignVariableOp_133AssignVariableOp_1332,
AssignVariableOp_134AssignVariableOp_1342,
AssignVariableOp_135AssignVariableOp_1352,
AssignVariableOp_136AssignVariableOp_1362,
AssignVariableOp_137AssignVariableOp_1372,
AssignVariableOp_138AssignVariableOp_1382,
AssignVariableOp_139AssignVariableOp_1392*
AssignVariableOp_14AssignVariableOp_142,
AssignVariableOp_140AssignVariableOp_1402,
AssignVariableOp_141AssignVariableOp_1412,
AssignVariableOp_142AssignVariableOp_1422,
AssignVariableOp_143AssignVariableOp_1432,
AssignVariableOp_144AssignVariableOp_1442,
AssignVariableOp_145AssignVariableOp_1452,
AssignVariableOp_146AssignVariableOp_1462,
AssignVariableOp_147AssignVariableOp_1472,
AssignVariableOp_148AssignVariableOp_1482,
AssignVariableOp_149AssignVariableOp_1492*
AssignVariableOp_15AssignVariableOp_152,
AssignVariableOp_150AssignVariableOp_1502,
AssignVariableOp_151AssignVariableOp_1512,
AssignVariableOp_152AssignVariableOp_1522,
AssignVariableOp_153AssignVariableOp_1532,
AssignVariableOp_154AssignVariableOp_1542,
AssignVariableOp_155AssignVariableOp_1552,
AssignVariableOp_156AssignVariableOp_1562,
AssignVariableOp_157AssignVariableOp_1572,
AssignVariableOp_158AssignVariableOp_1582,
AssignVariableOp_159AssignVariableOp_1592*
AssignVariableOp_16AssignVariableOp_162,
AssignVariableOp_160AssignVariableOp_1602,
AssignVariableOp_161AssignVariableOp_1612,
AssignVariableOp_162AssignVariableOp_1622,
AssignVariableOp_163AssignVariableOp_1632,
AssignVariableOp_164AssignVariableOp_1642,
AssignVariableOp_165AssignVariableOp_1652,
AssignVariableOp_166AssignVariableOp_1662,
AssignVariableOp_167AssignVariableOp_1672,
AssignVariableOp_168AssignVariableOp_1682,
AssignVariableOp_169AssignVariableOp_1692*
AssignVariableOp_17AssignVariableOp_172,
AssignVariableOp_170AssignVariableOp_1702,
AssignVariableOp_171AssignVariableOp_1712,
AssignVariableOp_172AssignVariableOp_1722,
AssignVariableOp_173AssignVariableOp_1732,
AssignVariableOp_174AssignVariableOp_1742,
AssignVariableOp_175AssignVariableOp_1752,
AssignVariableOp_176AssignVariableOp_1762,
AssignVariableOp_177AssignVariableOp_1772,
AssignVariableOp_178AssignVariableOp_1782,
AssignVariableOp_179AssignVariableOp_1792*
AssignVariableOp_18AssignVariableOp_182,
AssignVariableOp_180AssignVariableOp_1802,
AssignVariableOp_181AssignVariableOp_1812,
AssignVariableOp_182AssignVariableOp_1822,
AssignVariableOp_183AssignVariableOp_1832,
AssignVariableOp_184AssignVariableOp_1842,
AssignVariableOp_185AssignVariableOp_1852,
AssignVariableOp_186AssignVariableOp_1862,
AssignVariableOp_187AssignVariableOp_1872,
AssignVariableOp_188AssignVariableOp_1882,
AssignVariableOp_189AssignVariableOp_1892*
AssignVariableOp_19AssignVariableOp_192,
AssignVariableOp_190AssignVariableOp_1902,
AssignVariableOp_191AssignVariableOp_1912,
AssignVariableOp_192AssignVariableOp_1922(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582*
AssignVariableOp_59AssignVariableOp_592(
AssignVariableOp_6AssignVariableOp_62*
AssignVariableOp_60AssignVariableOp_602*
AssignVariableOp_61AssignVariableOp_612*
AssignVariableOp_62AssignVariableOp_622*
AssignVariableOp_63AssignVariableOp_632*
AssignVariableOp_64AssignVariableOp_642*
AssignVariableOp_65AssignVariableOp_652*
AssignVariableOp_66AssignVariableOp_662*
AssignVariableOp_67AssignVariableOp_672*
AssignVariableOp_68AssignVariableOp_682*
AssignVariableOp_69AssignVariableOp_692(
AssignVariableOp_7AssignVariableOp_72*
AssignVariableOp_70AssignVariableOp_702*
AssignVariableOp_71AssignVariableOp_712*
AssignVariableOp_72AssignVariableOp_722*
AssignVariableOp_73AssignVariableOp_732*
AssignVariableOp_74AssignVariableOp_742*
AssignVariableOp_75AssignVariableOp_752*
AssignVariableOp_76AssignVariableOp_762*
AssignVariableOp_77AssignVariableOp_772*
AssignVariableOp_78AssignVariableOp_782*
AssignVariableOp_79AssignVariableOp_792(
AssignVariableOp_8AssignVariableOp_82*
AssignVariableOp_80AssignVariableOp_802*
AssignVariableOp_81AssignVariableOp_812*
AssignVariableOp_82AssignVariableOp_822*
AssignVariableOp_83AssignVariableOp_832*
AssignVariableOp_84AssignVariableOp_842*
AssignVariableOp_85AssignVariableOp_852*
AssignVariableOp_86AssignVariableOp_862*
AssignVariableOp_87AssignVariableOp_872*
AssignVariableOp_88AssignVariableOp_882*
AssignVariableOp_89AssignVariableOp_892(
AssignVariableOp_9AssignVariableOp_92*
AssignVariableOp_90AssignVariableOp_902*
AssignVariableOp_91AssignVariableOp_912*
AssignVariableOp_92AssignVariableOp_922*
AssignVariableOp_93AssignVariableOp_932*
AssignVariableOp_94AssignVariableOp_942*
AssignVariableOp_95AssignVariableOp_952*
AssignVariableOp_96AssignVariableOp_962*
AssignVariableOp_97AssignVariableOp_972*
AssignVariableOp_98AssignVariableOp_982*
AssignVariableOp_99AssignVariableOp_99:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?
r
H__inference_concatenate_8_layer_call_and_return_conditional_losses_43353

inputs
inputs_1
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :~
concatConcatV2inputsinputs_1concat/axis:output:0*
N*
T0*0
_output_shapes
:?????????<<?`
IdentityIdentityconcat:output:0*
T0*0
_output_shapes
:?????????<<?"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:?????????<<?:?????????<<?:X T
0
_output_shapes
:?????????<<?
 
_user_specified_nameinputs:XT
0
_output_shapes
:?????????<<?
 
_user_specified_nameinputs
?
?
)__inference_conv2d_55_layer_call_fn_46869

inputs!
unknown:@@
	unknown_0:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_55_layer_call_and_return_conditional_losses_43479y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:???????????@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:???????????@: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:???????????@
 
_user_specified_nameinputs
?
?
'__inference_model_2_layer_call_fn_45228

inputs!
unknown: 
	unknown_0: #
	unknown_1:  
	unknown_2: 
	unknown_3: 
	unknown_4: 
	unknown_5: 
	unknown_6: #
	unknown_7: @
	unknown_8:@#
	unknown_9:@@

unknown_10:@

unknown_11:@

unknown_12:@

unknown_13:@

unknown_14:@%

unknown_15:@?

unknown_16:	?&

unknown_17:??

unknown_18:	?

unknown_19:	?

unknown_20:	?

unknown_21:	?

unknown_22:	?&

unknown_23:??

unknown_24:	?&

unknown_25:??

unknown_26:	?

unknown_27:	?

unknown_28:	?

unknown_29:	?

unknown_30:	?&

unknown_31:??

unknown_32:	?&

unknown_33:??

unknown_34:	?

unknown_35:	?

unknown_36:	?

unknown_37:	?

unknown_38:	?&

unknown_39:??

unknown_40:	?&

unknown_41:??

unknown_42:	?&

unknown_43:??

unknown_44:	?&

unknown_45:??

unknown_46:	?&

unknown_47:??

unknown_48:	?&

unknown_49:??

unknown_50:	?%

unknown_51:@?

unknown_52:@%

unknown_53:?@

unknown_54:@$

unknown_55:@@

unknown_56:@$

unknown_57: @

unknown_58: $

unknown_59:@ 

unknown_60: $

unknown_61:  

unknown_62: $

unknown_63:  

unknown_64: $

unknown_65: 

unknown_66:
identity??StatefulPartitionedCall?	
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44
unknown_45
unknown_46
unknown_47
unknown_48
unknown_49
unknown_50
unknown_51
unknown_52
unknown_53
unknown_54
unknown_55
unknown_56
unknown_57
unknown_58
unknown_59
unknown_60
unknown_61
unknown_62
unknown_63
unknown_64
unknown_65
unknown_66*P
TinI
G2E*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*f
_read_only_resource_inputsH
FD	
 !"#$%&'()*+,-./0123456789:;<=>?@ABCD*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_model_2_layer_call_and_return_conditional_losses_44302y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:???????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:???????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
)__inference_conv2d_40_layer_call_fn_46000

inputs!
unknown: 
	unknown_0: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:??????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_40_layer_call_and_return_conditional_losses_43119y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:??????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:???????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
Q__inference_batch_normalization_10_layer_call_and_return_conditional_losses_46075

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+??????????????????????????? : : : : :*
epsilon%o?:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+??????????????????????????? ?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+??????????????????????????? : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
?
D__inference_conv2d_41_layer_call_and_return_conditional_losses_43136

inputs8
conv2d_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:??????????? k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:??????????? w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:??????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:??????????? 
 
_user_specified_nameinputs
?
?
)__inference_conv2d_52_layer_call_fn_46754

inputs#
unknown:??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????xx?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_52_layer_call_and_return_conditional_losses_43414x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:?????????xx?`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :?????????xx?: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:?????????xx?
 
_user_specified_nameinputs
?
g
K__inference_max_pooling2d_10_layer_call_and_return_conditional_losses_42782

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
)__inference_conv2d_53_layer_call_fn_46774

inputs#
unknown:??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????xx?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_53_layer_call_and_return_conditional_losses_43431x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:?????????xx?`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :?????????xx?: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:?????????xx?
 
_user_specified_nameinputs
?
?
D__inference_conv2d_45_layer_call_and_return_conditional_losses_46255

inputs:
conv2d_readvariableop_resource:??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:??*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????xx?*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????xx?Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:?????????xx?j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:?????????xx?w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :?????????xx?: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:?????????xx?
 
_user_specified_nameinputs
?
?
D__inference_conv2d_58_layer_call_and_return_conditional_losses_43544

inputs8
conv2d_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:??????????? k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:??????????? w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:??????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:??????????? 
 
_user_specified_nameinputs
?
?
2__inference_conv2d_transpose_9_layer_call_fn_46699

inputs#
unknown:??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_conv2d_transpose_9_layer_call_and_return_conditional_losses_43006?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,????????????????????????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,????????????????????????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
D__inference_conv2d_49_layer_call_and_return_conditional_losses_46506

inputs:
conv2d_readvariableop_resource:??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:??*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:??????????j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:??????????w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
D__inference_conv2d_54_layer_call_and_return_conditional_losses_46860

inputs9
conv2d_readvariableop_resource:?@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:?@*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????@Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:???????????@k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:???????????@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*5
_input_shapes$
":????????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Z V
2
_output_shapes 
:????????????
 
_user_specified_nameinputs
?

?
D__inference_conv2d_59_layer_call_and_return_conditional_losses_47014

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????i
IdentityIdentityBiasAdd:output:0^NoOp*
T0*1
_output_shapes
:???????????w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:??????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:??????????? 
 
_user_specified_nameinputs
? 
?
N__inference_conv2d_transpose_11_layer_call_and_return_conditional_losses_46922

inputsB
(conv2d_transpose_readvariableop_resource: @-
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?conv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: I
stack/3Const*
_output_shapes
: *
dtype0*
value	B : y
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype0?
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+??????????????????????????? *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+??????????????????????????? y
IdentityIdentityBiasAdd:output:0^NoOp*
T0*A
_output_shapes/
-:+??????????????????????????? ?
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+???????????????????????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
?
'__inference_model_2_layer_call_fn_45087

inputs!
unknown: 
	unknown_0: #
	unknown_1:  
	unknown_2: 
	unknown_3: 
	unknown_4: 
	unknown_5: 
	unknown_6: #
	unknown_7: @
	unknown_8:@#
	unknown_9:@@

unknown_10:@

unknown_11:@

unknown_12:@

unknown_13:@

unknown_14:@%

unknown_15:@?

unknown_16:	?&

unknown_17:??

unknown_18:	?

unknown_19:	?

unknown_20:	?

unknown_21:	?

unknown_22:	?&

unknown_23:??

unknown_24:	?&

unknown_25:??

unknown_26:	?

unknown_27:	?

unknown_28:	?

unknown_29:	?

unknown_30:	?&

unknown_31:??

unknown_32:	?&

unknown_33:??

unknown_34:	?

unknown_35:	?

unknown_36:	?

unknown_37:	?

unknown_38:	?&

unknown_39:??

unknown_40:	?&

unknown_41:??

unknown_42:	?&

unknown_43:??

unknown_44:	?&

unknown_45:??

unknown_46:	?&

unknown_47:??

unknown_48:	?&

unknown_49:??

unknown_50:	?%

unknown_51:@?

unknown_52:@%

unknown_53:?@

unknown_54:@$

unknown_55:@@

unknown_56:@$

unknown_57: @

unknown_58: $

unknown_59:@ 

unknown_60: $

unknown_61:  

unknown_62: $

unknown_63:  

unknown_64: $

unknown_65: 

unknown_66:
identity??StatefulPartitionedCall?	
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44
unknown_45
unknown_46
unknown_47
unknown_48
unknown_49
unknown_50
unknown_51
unknown_52
unknown_53
unknown_54
unknown_55
unknown_56
unknown_57
unknown_58
unknown_59
unknown_60
unknown_61
unknown_62
unknown_63
unknown_64
unknown_65
unknown_66*P
TinI
G2E*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*f
_read_only_resource_inputsH
FD	
 !"#$%&'()*+,-./0123456789:;<=>?@ABCD*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_model_2_layer_call_and_return_conditional_losses_43567y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:???????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:???????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
#__inference_signature_wrapper_45991
input_3!
unknown: 
	unknown_0: #
	unknown_1:  
	unknown_2: 
	unknown_3: 
	unknown_4: 
	unknown_5: 
	unknown_6: #
	unknown_7: @
	unknown_8:@#
	unknown_9:@@

unknown_10:@

unknown_11:@

unknown_12:@

unknown_13:@

unknown_14:@%

unknown_15:@?

unknown_16:	?&

unknown_17:??

unknown_18:	?

unknown_19:	?

unknown_20:	?

unknown_21:	?

unknown_22:	?&

unknown_23:??

unknown_24:	?&

unknown_25:??

unknown_26:	?

unknown_27:	?

unknown_28:	?

unknown_29:	?

unknown_30:	?&

unknown_31:??

unknown_32:	?&

unknown_33:??

unknown_34:	?

unknown_35:	?

unknown_36:	?

unknown_37:	?

unknown_38:	?&

unknown_39:??

unknown_40:	?&

unknown_41:??

unknown_42:	?&

unknown_43:??

unknown_44:	?&

unknown_45:??

unknown_46:	?&

unknown_47:??

unknown_48:	?&

unknown_49:??

unknown_50:	?%

unknown_51:@?

unknown_52:@%

unknown_53:?@

unknown_54:@$

unknown_55:@@

unknown_56:@$

unknown_57: @

unknown_58: $

unknown_59:@ 

unknown_60: $

unknown_61:  

unknown_62: $

unknown_63:  

unknown_64: $

unknown_65: 

unknown_66:
identity??StatefulPartitionedCall?	
StatefulPartitionedCallStatefulPartitionedCallinput_3unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44
unknown_45
unknown_46
unknown_47
unknown_48
unknown_49
unknown_50
unknown_51
unknown_52
unknown_53
unknown_54
unknown_55
unknown_56
unknown_57
unknown_58
unknown_59
unknown_60
unknown_61
unknown_62
unknown_63
unknown_64
unknown_65
unknown_66*P
TinI
G2E*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*f
_read_only_resource_inputsH
FD	
 !"#$%&'()*+,-./0123456789:;<=>?@ABCD*0
config_proto 

CPU

GPU2*0J 8? *)
f$R"
 __inference__wrapped_model_42557y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:???????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:???????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:???????????
!
_user_specified_name	input_3
?
?
D__inference_conv2d_40_layer_call_and_return_conditional_losses_43119

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:??????????? k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:??????????? w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:???????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?	
?
6__inference_batch_normalization_11_layer_call_fn_46169

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Z
fURS
Q__inference_batch_normalization_11_layer_call_and_return_conditional_losses_42686?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
?
D__inference_conv2d_43_layer_call_and_return_conditional_losses_43180

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????@Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:???????????@k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:???????????@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:???????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:???????????@
 
_user_specified_nameinputs
?
K
/__inference_max_pooling2d_9_layer_call_fn_46210

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_42706?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?

c
D__inference_dropout_4_layer_call_and_return_conditional_losses_46456

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?m
dropout/MulMulinputsdropout/Const:output:0*
T0*0
_output_shapes
:?????????<<?C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*0
_output_shapes
:?????????<<?*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:?????????<<?x
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:?????????<<?r
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*0
_output_shapes
:?????????<<?b
IdentityIdentitydropout/Mul_1:z:0*
T0*0
_output_shapes
:?????????<<?"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????<<?:X T
0
_output_shapes
:?????????<<?
 
_user_specified_nameinputs
?
?
)__inference_conv2d_49_layer_call_fn_46495

inputs#
unknown:??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_49_layer_call_and_return_conditional_losses_43319x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
Q__inference_batch_normalization_12_layer_call_and_return_conditional_losses_42731

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
is_training( ~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,?????????????????????????????
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
Q__inference_batch_normalization_13_layer_call_and_return_conditional_losses_42807

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
is_training( ~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,?????????????????????????????
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
D__inference_conv2d_42_layer_call_and_return_conditional_losses_46123

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????@Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:???????????@k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:???????????@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:??????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:??????????? 
 
_user_specified_nameinputs
?
?
Q__inference_batch_normalization_14_layer_call_and_return_conditional_losses_42914

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,?????????????????????????????
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
Q__inference_batch_normalization_10_layer_call_and_return_conditional_losses_46093

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+??????????????????????????? : : : : :*
epsilon%o?:*
exponential_avg_factor%
?#<?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+??????????????????????????? ?
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+??????????????????????????? : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
g
K__inference_max_pooling2d_11_layer_call_and_return_conditional_losses_46466

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
? 
?
N__inference_conv2d_transpose_11_layer_call_and_return_conditional_losses_43094

inputsB
(conv2d_transpose_readvariableop_resource: @-
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?conv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: I
stack/3Const*
_output_shapes
: *
dtype0*
value	B : y
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype0?
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+??????????????????????????? *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+??????????????????????????? y
IdentityIdentityBiasAdd:output:0^NoOp*
T0*A
_output_shapes/
-:+??????????????????????????? ?
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+???????????????????????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
?
Q__inference_batch_normalization_11_layer_call_and_return_conditional_losses_42686

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????@?
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????@: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
?
)__inference_conv2d_48_layer_call_fn_46475

inputs#
unknown:??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_48_layer_call_and_return_conditional_losses_43302x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
)__inference_conv2d_46_layer_call_fn_46336

inputs#
unknown:??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????<<?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_46_layer_call_and_return_conditional_losses_43251x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:?????????<<?`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :?????????<<?: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:?????????<<?
 
_user_specified_nameinputs
?
b
D__inference_dropout_5_layer_call_and_return_conditional_losses_46583

inputs

identity_1W
IdentityIdentityinputs*
T0*0
_output_shapes
:??????????d

Identity_1IdentityIdentity:output:0*
T0*0
_output_shapes
:??????????"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
t
H__inference_concatenate_8_layer_call_and_return_conditional_losses_46650
inputs_0
inputs_1
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :?
concatConcatV2inputs_0inputs_1concat/axis:output:0*
N*
T0*0
_output_shapes
:?????????<<?`
IdentityIdentityconcat:output:0*
T0*0
_output_shapes
:?????????<<?"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:?????????<<?:?????????<<?:Z V
0
_output_shapes
:?????????<<?
"
_user_specified_name
inputs/0:ZV
0
_output_shapes
:?????????<<?
"
_user_specified_name
inputs/1
?
?
Q__inference_batch_normalization_11_layer_call_and_return_conditional_losses_42655

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o?:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????@?
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????@: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
?
)__inference_conv2d_45_layer_call_fn_46244

inputs#
unknown:??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????xx?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_45_layer_call_and_return_conditional_losses_43224x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:?????????xx?`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :?????????xx?: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:?????????xx?
 
_user_specified_nameinputs
?
t
H__inference_concatenate_9_layer_call_and_return_conditional_losses_46745
inputs_0
inputs_1
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :?
concatConcatV2inputs_0inputs_1concat/axis:output:0*
N*
T0*0
_output_shapes
:?????????xx?`
IdentityIdentityconcat:output:0*
T0*0
_output_shapes
:?????????xx?"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:?????????xx?:?????????xx?:Z V
0
_output_shapes
:?????????xx?
"
_user_specified_name
inputs/0:ZV
0
_output_shapes
:?????????xx?
"
_user_specified_name
inputs/1
?
?
)__inference_conv2d_44_layer_call_fn_46224

inputs"
unknown:@?
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????xx?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_44_layer_call_and_return_conditional_losses_43207x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:?????????xx?`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????xx@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????xx@
 
_user_specified_nameinputs
?
?
'__inference_model_2_layer_call_fn_43706
input_3!
unknown: 
	unknown_0: #
	unknown_1:  
	unknown_2: 
	unknown_3: 
	unknown_4: 
	unknown_5: 
	unknown_6: #
	unknown_7: @
	unknown_8:@#
	unknown_9:@@

unknown_10:@

unknown_11:@

unknown_12:@

unknown_13:@

unknown_14:@%

unknown_15:@?

unknown_16:	?&

unknown_17:??

unknown_18:	?

unknown_19:	?

unknown_20:	?

unknown_21:	?

unknown_22:	?&

unknown_23:??

unknown_24:	?&

unknown_25:??

unknown_26:	?

unknown_27:	?

unknown_28:	?

unknown_29:	?

unknown_30:	?&

unknown_31:??

unknown_32:	?&

unknown_33:??

unknown_34:	?

unknown_35:	?

unknown_36:	?

unknown_37:	?

unknown_38:	?&

unknown_39:??

unknown_40:	?&

unknown_41:??

unknown_42:	?&

unknown_43:??

unknown_44:	?&

unknown_45:??

unknown_46:	?&

unknown_47:??

unknown_48:	?&

unknown_49:??

unknown_50:	?%

unknown_51:@?

unknown_52:@%

unknown_53:?@

unknown_54:@$

unknown_55:@@

unknown_56:@$

unknown_57: @

unknown_58: $

unknown_59:@ 

unknown_60: $

unknown_61:  

unknown_62: $

unknown_63:  

unknown_64: $

unknown_65: 

unknown_66:
identity??StatefulPartitionedCall?	
StatefulPartitionedCallStatefulPartitionedCallinput_3unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44
unknown_45
unknown_46
unknown_47
unknown_48
unknown_49
unknown_50
unknown_51
unknown_52
unknown_53
unknown_54
unknown_55
unknown_56
unknown_57
unknown_58
unknown_59
unknown_60
unknown_61
unknown_62
unknown_63
unknown_64
unknown_65
unknown_66*P
TinI
G2E*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*f
_read_only_resource_inputsH
FD	
 !"#$%&'()*+,-./0123456789:;<=>?@ABCD*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_model_2_layer_call_and_return_conditional_losses_43567y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:???????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:???????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:???????????
!
_user_specified_name	input_3
?
r
H__inference_concatenate_9_layer_call_and_return_conditional_losses_43401

inputs
inputs_1
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :~
concatConcatV2inputsinputs_1concat/axis:output:0*
N*
T0*0
_output_shapes
:?????????xx?`
IdentityIdentityconcat:output:0*
T0*0
_output_shapes
:?????????xx?"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:?????????xx?:?????????xx?:X T
0
_output_shapes
:?????????xx?
 
_user_specified_nameinputs:XT
0
_output_shapes
:?????????xx?
 
_user_specified_nameinputs
? 
?
M__inference_conv2d_transpose_9_layer_call_and_return_conditional_losses_43006

inputsD
(conv2d_transpose_readvariableop_resource:??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?conv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: J
stack/3Const*
_output_shapes
: *
dtype0*
value
B :?y
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*(
_output_shapes
:??*
dtype0?
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*B
_output_shapes0
.:,????????????????????????????*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,????????????????????????????z
IdentityIdentityBiasAdd:output:0^NoOp*
T0*B
_output_shapes0
.:,?????????????????????????????
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,????????????????????????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
D__inference_conv2d_44_layer_call_and_return_conditional_losses_43207

inputs9
conv2d_readvariableop_resource:@?.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????xx?*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????xx?Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:?????????xx?j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:?????????xx?w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????xx@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????xx@
 
_user_specified_nameinputs
?
?
D__inference_conv2d_55_layer_call_and_return_conditional_losses_43479

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????@Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:???????????@k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:???????????@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:???????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:???????????@
 
_user_specified_nameinputs
?
f
J__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_46103

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?	
?
6__inference_batch_normalization_12_layer_call_fn_46281

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Z
fURS
Q__inference_batch_normalization_12_layer_call_and_return_conditional_losses_42762?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,????????????????????????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
D__inference_conv2d_43_layer_call_and_return_conditional_losses_46143

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????@Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:???????????@k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:???????????@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:???????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:???????????@
 
_user_specified_nameinputs
?
?
)__inference_conv2d_54_layer_call_fn_46849

inputs"
unknown:?@
	unknown_0:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_54_layer_call_and_return_conditional_losses_43462y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:???????????@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*5
_input_shapes$
":????????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
2
_output_shapes 
:????????????
 
_user_specified_nameinputs
?
b
D__inference_dropout_5_layer_call_and_return_conditional_losses_43339

inputs

identity_1W
IdentityIdentityinputs*
T0*0
_output_shapes
:??????????d

Identity_1IdentityIdentity:output:0*
T0*0
_output_shapes
:??????????"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
Q__inference_batch_normalization_13_layer_call_and_return_conditional_losses_46411

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
is_training( ~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,?????????????????????????????
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
D__inference_conv2d_50_layer_call_and_return_conditional_losses_46670

inputs:
conv2d_readvariableop_resource:??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:??*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????<<?*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????<<?Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:?????????<<?j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:?????????<<?w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :?????????<<?: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:?????????<<?
 
_user_specified_nameinputs
?
Z
.__inference_concatenate_11_layer_call_fn_46928
inputs_0
inputs_1
identity?
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_concatenate_11_layer_call_and_return_conditional_losses_43497j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:???????????@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*M
_input_shapes<
::??????????? :??????????? :[ W
1
_output_shapes
:??????????? 
"
_user_specified_name
inputs/0:[W
1
_output_shapes
:??????????? 
"
_user_specified_name
inputs/1
?
E
)__inference_dropout_5_layer_call_fn_46573

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dropout_5_layer_call_and_return_conditional_losses_43339i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
b
)__inference_dropout_5_layer_call_fn_46578

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dropout_5_layer_call_and_return_conditional_losses_43854x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
D__inference_conv2d_50_layer_call_and_return_conditional_losses_43366

inputs:
conv2d_readvariableop_resource:??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:??*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????<<?*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????<<?Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:?????????<<?j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:?????????<<?w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :?????????<<?: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:?????????<<?
 
_user_specified_nameinputs
?
u
I__inference_concatenate_11_layer_call_and_return_conditional_losses_46935
inputs_0
inputs_1
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :?
concatConcatV2inputs_0inputs_1concat/axis:output:0*
N*
T0*1
_output_shapes
:???????????@a
IdentityIdentityconcat:output:0*
T0*1
_output_shapes
:???????????@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*M
_input_shapes<
::??????????? :??????????? :[ W
1
_output_shapes
:??????????? 
"
_user_specified_name
inputs/0:[W
1
_output_shapes
:??????????? 
"
_user_specified_name
inputs/1
??
?
B__inference_model_2_layer_call_and_return_conditional_losses_43567

inputs)
conv2d_40_43120: 
conv2d_40_43122: )
conv2d_41_43137:  
conv2d_41_43139: *
batch_normalization_10_43142: *
batch_normalization_10_43144: *
batch_normalization_10_43146: *
batch_normalization_10_43148: )
conv2d_42_43164: @
conv2d_42_43166:@)
conv2d_43_43181:@@
conv2d_43_43183:@*
batch_normalization_11_43186:@*
batch_normalization_11_43188:@*
batch_normalization_11_43190:@*
batch_normalization_11_43192:@*
conv2d_44_43208:@?
conv2d_44_43210:	?+
conv2d_45_43225:??
conv2d_45_43227:	?+
batch_normalization_12_43230:	?+
batch_normalization_12_43232:	?+
batch_normalization_12_43234:	?+
batch_normalization_12_43236:	?+
conv2d_46_43252:??
conv2d_46_43254:	?+
conv2d_47_43269:??
conv2d_47_43271:	?+
batch_normalization_13_43274:	?+
batch_normalization_13_43276:	?+
batch_normalization_13_43278:	?+
batch_normalization_13_43280:	?+
conv2d_48_43303:??
conv2d_48_43305:	?+
conv2d_49_43320:??
conv2d_49_43322:	?+
batch_normalization_14_43325:	?+
batch_normalization_14_43327:	?+
batch_normalization_14_43329:	?+
batch_normalization_14_43331:	?4
conv2d_transpose_8_43341:??'
conv2d_transpose_8_43343:	?+
conv2d_50_43367:??
conv2d_50_43369:	?+
conv2d_51_43384:??
conv2d_51_43386:	?4
conv2d_transpose_9_43389:??'
conv2d_transpose_9_43391:	?+
conv2d_52_43415:??
conv2d_52_43417:	?+
conv2d_53_43432:??
conv2d_53_43434:	?4
conv2d_transpose_10_43437:@?'
conv2d_transpose_10_43439:@*
conv2d_54_43463:?@
conv2d_54_43465:@)
conv2d_55_43480:@@
conv2d_55_43482:@3
conv2d_transpose_11_43485: @'
conv2d_transpose_11_43487: )
conv2d_56_43511:@ 
conv2d_56_43513: )
conv2d_57_43528:  
conv2d_57_43530: )
conv2d_58_43545:  
conv2d_58_43547: )
conv2d_59_43561: 
conv2d_59_43563:
identity??.batch_normalization_10/StatefulPartitionedCall?.batch_normalization_11/StatefulPartitionedCall?.batch_normalization_12/StatefulPartitionedCall?.batch_normalization_13/StatefulPartitionedCall?.batch_normalization_14/StatefulPartitionedCall?!conv2d_40/StatefulPartitionedCall?!conv2d_41/StatefulPartitionedCall?!conv2d_42/StatefulPartitionedCall?!conv2d_43/StatefulPartitionedCall?!conv2d_44/StatefulPartitionedCall?!conv2d_45/StatefulPartitionedCall?!conv2d_46/StatefulPartitionedCall?!conv2d_47/StatefulPartitionedCall?!conv2d_48/StatefulPartitionedCall?!conv2d_49/StatefulPartitionedCall?!conv2d_50/StatefulPartitionedCall?!conv2d_51/StatefulPartitionedCall?!conv2d_52/StatefulPartitionedCall?!conv2d_53/StatefulPartitionedCall?!conv2d_54/StatefulPartitionedCall?!conv2d_55/StatefulPartitionedCall?!conv2d_56/StatefulPartitionedCall?!conv2d_57/StatefulPartitionedCall?!conv2d_58/StatefulPartitionedCall?!conv2d_59/StatefulPartitionedCall?+conv2d_transpose_10/StatefulPartitionedCall?+conv2d_transpose_11/StatefulPartitionedCall?*conv2d_transpose_8/StatefulPartitionedCall?*conv2d_transpose_9/StatefulPartitionedCall?
!conv2d_40/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_40_43120conv2d_40_43122*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:??????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_40_layer_call_and_return_conditional_losses_43119?
!conv2d_41/StatefulPartitionedCallStatefulPartitionedCall*conv2d_40/StatefulPartitionedCall:output:0conv2d_41_43137conv2d_41_43139*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:??????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_41_layer_call_and_return_conditional_losses_43136?
.batch_normalization_10/StatefulPartitionedCallStatefulPartitionedCall*conv2d_41/StatefulPartitionedCall:output:0batch_normalization_10_43142batch_normalization_10_43144batch_normalization_10_43146batch_normalization_10_43148*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:??????????? *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Z
fURS
Q__inference_batch_normalization_10_layer_call_and_return_conditional_losses_42579?
max_pooling2d_8/PartitionedCallPartitionedCall7batch_normalization_10/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:??????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_42630?
!conv2d_42/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_8/PartitionedCall:output:0conv2d_42_43164conv2d_42_43166*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_42_layer_call_and_return_conditional_losses_43163?
!conv2d_43/StatefulPartitionedCallStatefulPartitionedCall*conv2d_42/StatefulPartitionedCall:output:0conv2d_43_43181conv2d_43_43183*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_43_layer_call_and_return_conditional_losses_43180?
.batch_normalization_11/StatefulPartitionedCallStatefulPartitionedCall*conv2d_43/StatefulPartitionedCall:output:0batch_normalization_11_43186batch_normalization_11_43188batch_normalization_11_43190batch_normalization_11_43192*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Z
fURS
Q__inference_batch_normalization_11_layer_call_and_return_conditional_losses_42655?
max_pooling2d_9/PartitionedCallPartitionedCall7batch_normalization_11/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????xx@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_42706?
!conv2d_44/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_9/PartitionedCall:output:0conv2d_44_43208conv2d_44_43210*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????xx?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_44_layer_call_and_return_conditional_losses_43207?
!conv2d_45/StatefulPartitionedCallStatefulPartitionedCall*conv2d_44/StatefulPartitionedCall:output:0conv2d_45_43225conv2d_45_43227*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????xx?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_45_layer_call_and_return_conditional_losses_43224?
.batch_normalization_12/StatefulPartitionedCallStatefulPartitionedCall*conv2d_45/StatefulPartitionedCall:output:0batch_normalization_12_43230batch_normalization_12_43232batch_normalization_12_43234batch_normalization_12_43236*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????xx?*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Z
fURS
Q__inference_batch_normalization_12_layer_call_and_return_conditional_losses_42731?
 max_pooling2d_10/PartitionedCallPartitionedCall7batch_normalization_12/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????<<?* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_max_pooling2d_10_layer_call_and_return_conditional_losses_42782?
!conv2d_46/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_10/PartitionedCall:output:0conv2d_46_43252conv2d_46_43254*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????<<?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_46_layer_call_and_return_conditional_losses_43251?
!conv2d_47/StatefulPartitionedCallStatefulPartitionedCall*conv2d_46/StatefulPartitionedCall:output:0conv2d_47_43269conv2d_47_43271*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????<<?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_47_layer_call_and_return_conditional_losses_43268?
.batch_normalization_13/StatefulPartitionedCallStatefulPartitionedCall*conv2d_47/StatefulPartitionedCall:output:0batch_normalization_13_43274batch_normalization_13_43276batch_normalization_13_43278batch_normalization_13_43280*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????<<?*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Z
fURS
Q__inference_batch_normalization_13_layer_call_and_return_conditional_losses_42807?
dropout_4/PartitionedCallPartitionedCall7batch_normalization_13/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????<<?* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dropout_4_layer_call_and_return_conditional_losses_43288?
 max_pooling2d_11/PartitionedCallPartitionedCall"dropout_4/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_max_pooling2d_11_layer_call_and_return_conditional_losses_42858?
!conv2d_48/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_11/PartitionedCall:output:0conv2d_48_43303conv2d_48_43305*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_48_layer_call_and_return_conditional_losses_43302?
!conv2d_49/StatefulPartitionedCallStatefulPartitionedCall*conv2d_48/StatefulPartitionedCall:output:0conv2d_49_43320conv2d_49_43322*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_49_layer_call_and_return_conditional_losses_43319?
.batch_normalization_14/StatefulPartitionedCallStatefulPartitionedCall*conv2d_49/StatefulPartitionedCall:output:0batch_normalization_14_43325batch_normalization_14_43327batch_normalization_14_43329batch_normalization_14_43331*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Z
fURS
Q__inference_batch_normalization_14_layer_call_and_return_conditional_losses_42883?
dropout_5/PartitionedCallPartitionedCall7batch_normalization_14/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dropout_5_layer_call_and_return_conditional_losses_43339?
*conv2d_transpose_8/StatefulPartitionedCallStatefulPartitionedCall"dropout_5/PartitionedCall:output:0conv2d_transpose_8_43341conv2d_transpose_8_43343*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????<<?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_conv2d_transpose_8_layer_call_and_return_conditional_losses_42962?
concatenate_8/PartitionedCallPartitionedCall3conv2d_transpose_8/StatefulPartitionedCall:output:0"dropout_4/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????<<?* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_concatenate_8_layer_call_and_return_conditional_losses_43353?
!conv2d_50/StatefulPartitionedCallStatefulPartitionedCall&concatenate_8/PartitionedCall:output:0conv2d_50_43367conv2d_50_43369*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????<<?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_50_layer_call_and_return_conditional_losses_43366?
!conv2d_51/StatefulPartitionedCallStatefulPartitionedCall*conv2d_50/StatefulPartitionedCall:output:0conv2d_51_43384conv2d_51_43386*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????<<?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_51_layer_call_and_return_conditional_losses_43383?
*conv2d_transpose_9/StatefulPartitionedCallStatefulPartitionedCall*conv2d_51/StatefulPartitionedCall:output:0conv2d_transpose_9_43389conv2d_transpose_9_43391*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????xx?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_conv2d_transpose_9_layer_call_and_return_conditional_losses_43006?
concatenate_9/PartitionedCallPartitionedCall3conv2d_transpose_9/StatefulPartitionedCall:output:07batch_normalization_12/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????xx?* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_concatenate_9_layer_call_and_return_conditional_losses_43401?
!conv2d_52/StatefulPartitionedCallStatefulPartitionedCall&concatenate_9/PartitionedCall:output:0conv2d_52_43415conv2d_52_43417*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????xx?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_52_layer_call_and_return_conditional_losses_43414?
!conv2d_53/StatefulPartitionedCallStatefulPartitionedCall*conv2d_52/StatefulPartitionedCall:output:0conv2d_53_43432conv2d_53_43434*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????xx?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_53_layer_call_and_return_conditional_losses_43431?
+conv2d_transpose_10/StatefulPartitionedCallStatefulPartitionedCall*conv2d_53/StatefulPartitionedCall:output:0conv2d_transpose_10_43437conv2d_transpose_10_43439*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_conv2d_transpose_10_layer_call_and_return_conditional_losses_43050?
concatenate_10/PartitionedCallPartitionedCall4conv2d_transpose_10/StatefulPartitionedCall:output:07batch_normalization_11/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_concatenate_10_layer_call_and_return_conditional_losses_43449?
!conv2d_54/StatefulPartitionedCallStatefulPartitionedCall'concatenate_10/PartitionedCall:output:0conv2d_54_43463conv2d_54_43465*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_54_layer_call_and_return_conditional_losses_43462?
!conv2d_55/StatefulPartitionedCallStatefulPartitionedCall*conv2d_54/StatefulPartitionedCall:output:0conv2d_55_43480conv2d_55_43482*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_55_layer_call_and_return_conditional_losses_43479?
+conv2d_transpose_11/StatefulPartitionedCallStatefulPartitionedCall*conv2d_55/StatefulPartitionedCall:output:0conv2d_transpose_11_43485conv2d_transpose_11_43487*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:??????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_conv2d_transpose_11_layer_call_and_return_conditional_losses_43094?
concatenate_11/PartitionedCallPartitionedCall4conv2d_transpose_11/StatefulPartitionedCall:output:07batch_normalization_10/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_concatenate_11_layer_call_and_return_conditional_losses_43497?
!conv2d_56/StatefulPartitionedCallStatefulPartitionedCall'concatenate_11/PartitionedCall:output:0conv2d_56_43511conv2d_56_43513*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:??????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_56_layer_call_and_return_conditional_losses_43510?
!conv2d_57/StatefulPartitionedCallStatefulPartitionedCall*conv2d_56/StatefulPartitionedCall:output:0conv2d_57_43528conv2d_57_43530*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:??????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_57_layer_call_and_return_conditional_losses_43527?
!conv2d_58/StatefulPartitionedCallStatefulPartitionedCall*conv2d_57/StatefulPartitionedCall:output:0conv2d_58_43545conv2d_58_43547*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:??????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_58_layer_call_and_return_conditional_losses_43544?
!conv2d_59/StatefulPartitionedCallStatefulPartitionedCall*conv2d_58/StatefulPartitionedCall:output:0conv2d_59_43561conv2d_59_43563*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_59_layer_call_and_return_conditional_losses_43560?
IdentityIdentity*conv2d_59/StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:????????????	
NoOpNoOp/^batch_normalization_10/StatefulPartitionedCall/^batch_normalization_11/StatefulPartitionedCall/^batch_normalization_12/StatefulPartitionedCall/^batch_normalization_13/StatefulPartitionedCall/^batch_normalization_14/StatefulPartitionedCall"^conv2d_40/StatefulPartitionedCall"^conv2d_41/StatefulPartitionedCall"^conv2d_42/StatefulPartitionedCall"^conv2d_43/StatefulPartitionedCall"^conv2d_44/StatefulPartitionedCall"^conv2d_45/StatefulPartitionedCall"^conv2d_46/StatefulPartitionedCall"^conv2d_47/StatefulPartitionedCall"^conv2d_48/StatefulPartitionedCall"^conv2d_49/StatefulPartitionedCall"^conv2d_50/StatefulPartitionedCall"^conv2d_51/StatefulPartitionedCall"^conv2d_52/StatefulPartitionedCall"^conv2d_53/StatefulPartitionedCall"^conv2d_54/StatefulPartitionedCall"^conv2d_55/StatefulPartitionedCall"^conv2d_56/StatefulPartitionedCall"^conv2d_57/StatefulPartitionedCall"^conv2d_58/StatefulPartitionedCall"^conv2d_59/StatefulPartitionedCall,^conv2d_transpose_10/StatefulPartitionedCall,^conv2d_transpose_11/StatefulPartitionedCall+^conv2d_transpose_8/StatefulPartitionedCall+^conv2d_transpose_9/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:???????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_10/StatefulPartitionedCall.batch_normalization_10/StatefulPartitionedCall2`
.batch_normalization_11/StatefulPartitionedCall.batch_normalization_11/StatefulPartitionedCall2`
.batch_normalization_12/StatefulPartitionedCall.batch_normalization_12/StatefulPartitionedCall2`
.batch_normalization_13/StatefulPartitionedCall.batch_normalization_13/StatefulPartitionedCall2`
.batch_normalization_14/StatefulPartitionedCall.batch_normalization_14/StatefulPartitionedCall2F
!conv2d_40/StatefulPartitionedCall!conv2d_40/StatefulPartitionedCall2F
!conv2d_41/StatefulPartitionedCall!conv2d_41/StatefulPartitionedCall2F
!conv2d_42/StatefulPartitionedCall!conv2d_42/StatefulPartitionedCall2F
!conv2d_43/StatefulPartitionedCall!conv2d_43/StatefulPartitionedCall2F
!conv2d_44/StatefulPartitionedCall!conv2d_44/StatefulPartitionedCall2F
!conv2d_45/StatefulPartitionedCall!conv2d_45/StatefulPartitionedCall2F
!conv2d_46/StatefulPartitionedCall!conv2d_46/StatefulPartitionedCall2F
!conv2d_47/StatefulPartitionedCall!conv2d_47/StatefulPartitionedCall2F
!conv2d_48/StatefulPartitionedCall!conv2d_48/StatefulPartitionedCall2F
!conv2d_49/StatefulPartitionedCall!conv2d_49/StatefulPartitionedCall2F
!conv2d_50/StatefulPartitionedCall!conv2d_50/StatefulPartitionedCall2F
!conv2d_51/StatefulPartitionedCall!conv2d_51/StatefulPartitionedCall2F
!conv2d_52/StatefulPartitionedCall!conv2d_52/StatefulPartitionedCall2F
!conv2d_53/StatefulPartitionedCall!conv2d_53/StatefulPartitionedCall2F
!conv2d_54/StatefulPartitionedCall!conv2d_54/StatefulPartitionedCall2F
!conv2d_55/StatefulPartitionedCall!conv2d_55/StatefulPartitionedCall2F
!conv2d_56/StatefulPartitionedCall!conv2d_56/StatefulPartitionedCall2F
!conv2d_57/StatefulPartitionedCall!conv2d_57/StatefulPartitionedCall2F
!conv2d_58/StatefulPartitionedCall!conv2d_58/StatefulPartitionedCall2F
!conv2d_59/StatefulPartitionedCall!conv2d_59/StatefulPartitionedCall2Z
+conv2d_transpose_10/StatefulPartitionedCall+conv2d_transpose_10/StatefulPartitionedCall2Z
+conv2d_transpose_11/StatefulPartitionedCall+conv2d_transpose_11/StatefulPartitionedCall2X
*conv2d_transpose_8/StatefulPartitionedCall*conv2d_transpose_8/StatefulPartitionedCall2X
*conv2d_transpose_9/StatefulPartitionedCall*conv2d_transpose_9/StatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
D__inference_conv2d_53_layer_call_and_return_conditional_losses_46785

inputs:
conv2d_readvariableop_resource:??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:??*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????xx?*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????xx?Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:?????????xx?j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:?????????xx?w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :?????????xx?: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:?????????xx?
 
_user_specified_nameinputs
?
?
3__inference_conv2d_transpose_10_layer_call_fn_46794

inputs"
unknown:@?
	unknown_0:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_conv2d_transpose_10_layer_call_and_return_conditional_losses_43050?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,????????????????????????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
D__inference_conv2d_55_layer_call_and_return_conditional_losses_46880

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????@Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:???????????@k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:???????????@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:???????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:???????????@
 
_user_specified_nameinputs
?
?
)__inference_conv2d_56_layer_call_fn_46944

inputs!
unknown:@ 
	unknown_0: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:??????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_56_layer_call_and_return_conditional_losses_43510y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:??????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:???????????@: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:???????????@
 
_user_specified_nameinputs
?

c
D__inference_dropout_5_layer_call_and_return_conditional_losses_46595

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?m
dropout/MulMulinputsdropout/Const:output:0*
T0*0
_output_shapes
:??????????C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*0
_output_shapes
:??????????*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:??????????x
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:??????????r
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*0
_output_shapes
:??????????b
IdentityIdentitydropout/Mul_1:z:0*
T0*0
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
Q__inference_batch_normalization_14_layer_call_and_return_conditional_losses_42883

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
is_training( ~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,?????????????????????????????
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
)__inference_conv2d_59_layer_call_fn_47004

inputs!
unknown: 
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_59_layer_call_and_return_conditional_losses_43560y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:???????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:??????????? : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:??????????? 
 
_user_specified_nameinputs
?	
?
6__inference_batch_normalization_13_layer_call_fn_46380

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Z
fURS
Q__inference_batch_normalization_13_layer_call_and_return_conditional_losses_42807?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,????????????????????????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
D__inference_conv2d_58_layer_call_and_return_conditional_losses_46995

inputs8
conv2d_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:??????????? k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:??????????? w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:??????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:??????????? 
 
_user_specified_nameinputs
?
?
Q__inference_batch_normalization_14_layer_call_and_return_conditional_losses_46568

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,?????????????????????????????
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
D__inference_conv2d_40_layer_call_and_return_conditional_losses_46011

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:??????????? k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:??????????? w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:???????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?

c
D__inference_dropout_5_layer_call_and_return_conditional_losses_43854

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?m
dropout/MulMulinputsdropout/Const:output:0*
T0*0
_output_shapes
:??????????C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*0
_output_shapes
:??????????*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:??????????x
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:??????????r
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*0
_output_shapes
:??????????b
IdentityIdentitydropout/Mul_1:z:0*
T0*0
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
??
? 
B__inference_model_2_layer_call_and_return_conditional_losses_44302

inputs)
conv2d_40_44126: 
conv2d_40_44128: )
conv2d_41_44131:  
conv2d_41_44133: *
batch_normalization_10_44136: *
batch_normalization_10_44138: *
batch_normalization_10_44140: *
batch_normalization_10_44142: )
conv2d_42_44146: @
conv2d_42_44148:@)
conv2d_43_44151:@@
conv2d_43_44153:@*
batch_normalization_11_44156:@*
batch_normalization_11_44158:@*
batch_normalization_11_44160:@*
batch_normalization_11_44162:@*
conv2d_44_44166:@?
conv2d_44_44168:	?+
conv2d_45_44171:??
conv2d_45_44173:	?+
batch_normalization_12_44176:	?+
batch_normalization_12_44178:	?+
batch_normalization_12_44180:	?+
batch_normalization_12_44182:	?+
conv2d_46_44186:??
conv2d_46_44188:	?+
conv2d_47_44191:??
conv2d_47_44193:	?+
batch_normalization_13_44196:	?+
batch_normalization_13_44198:	?+
batch_normalization_13_44200:	?+
batch_normalization_13_44202:	?+
conv2d_48_44207:??
conv2d_48_44209:	?+
conv2d_49_44212:??
conv2d_49_44214:	?+
batch_normalization_14_44217:	?+
batch_normalization_14_44219:	?+
batch_normalization_14_44221:	?+
batch_normalization_14_44223:	?4
conv2d_transpose_8_44227:??'
conv2d_transpose_8_44229:	?+
conv2d_50_44233:??
conv2d_50_44235:	?+
conv2d_51_44238:??
conv2d_51_44240:	?4
conv2d_transpose_9_44243:??'
conv2d_transpose_9_44245:	?+
conv2d_52_44249:??
conv2d_52_44251:	?+
conv2d_53_44254:??
conv2d_53_44256:	?4
conv2d_transpose_10_44259:@?'
conv2d_transpose_10_44261:@*
conv2d_54_44265:?@
conv2d_54_44267:@)
conv2d_55_44270:@@
conv2d_55_44272:@3
conv2d_transpose_11_44275: @'
conv2d_transpose_11_44277: )
conv2d_56_44281:@ 
conv2d_56_44283: )
conv2d_57_44286:  
conv2d_57_44288: )
conv2d_58_44291:  
conv2d_58_44293: )
conv2d_59_44296: 
conv2d_59_44298:
identity??.batch_normalization_10/StatefulPartitionedCall?.batch_normalization_11/StatefulPartitionedCall?.batch_normalization_12/StatefulPartitionedCall?.batch_normalization_13/StatefulPartitionedCall?.batch_normalization_14/StatefulPartitionedCall?!conv2d_40/StatefulPartitionedCall?!conv2d_41/StatefulPartitionedCall?!conv2d_42/StatefulPartitionedCall?!conv2d_43/StatefulPartitionedCall?!conv2d_44/StatefulPartitionedCall?!conv2d_45/StatefulPartitionedCall?!conv2d_46/StatefulPartitionedCall?!conv2d_47/StatefulPartitionedCall?!conv2d_48/StatefulPartitionedCall?!conv2d_49/StatefulPartitionedCall?!conv2d_50/StatefulPartitionedCall?!conv2d_51/StatefulPartitionedCall?!conv2d_52/StatefulPartitionedCall?!conv2d_53/StatefulPartitionedCall?!conv2d_54/StatefulPartitionedCall?!conv2d_55/StatefulPartitionedCall?!conv2d_56/StatefulPartitionedCall?!conv2d_57/StatefulPartitionedCall?!conv2d_58/StatefulPartitionedCall?!conv2d_59/StatefulPartitionedCall?+conv2d_transpose_10/StatefulPartitionedCall?+conv2d_transpose_11/StatefulPartitionedCall?*conv2d_transpose_8/StatefulPartitionedCall?*conv2d_transpose_9/StatefulPartitionedCall?!dropout_4/StatefulPartitionedCall?!dropout_5/StatefulPartitionedCall?
!conv2d_40/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_40_44126conv2d_40_44128*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:??????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_40_layer_call_and_return_conditional_losses_43119?
!conv2d_41/StatefulPartitionedCallStatefulPartitionedCall*conv2d_40/StatefulPartitionedCall:output:0conv2d_41_44131conv2d_41_44133*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:??????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_41_layer_call_and_return_conditional_losses_43136?
.batch_normalization_10/StatefulPartitionedCallStatefulPartitionedCall*conv2d_41/StatefulPartitionedCall:output:0batch_normalization_10_44136batch_normalization_10_44138batch_normalization_10_44140batch_normalization_10_44142*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:??????????? *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Z
fURS
Q__inference_batch_normalization_10_layer_call_and_return_conditional_losses_42579?
max_pooling2d_8/PartitionedCallPartitionedCall7batch_normalization_10/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:??????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_42630?
!conv2d_42/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_8/PartitionedCall:output:0conv2d_42_44146conv2d_42_44148*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_42_layer_call_and_return_conditional_losses_43163?
!conv2d_43/StatefulPartitionedCallStatefulPartitionedCall*conv2d_42/StatefulPartitionedCall:output:0conv2d_43_44151conv2d_43_44153*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_43_layer_call_and_return_conditional_losses_43180?
.batch_normalization_11/StatefulPartitionedCallStatefulPartitionedCall*conv2d_43/StatefulPartitionedCall:output:0batch_normalization_11_44156batch_normalization_11_44158batch_normalization_11_44160batch_normalization_11_44162*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Z
fURS
Q__inference_batch_normalization_11_layer_call_and_return_conditional_losses_42655?
max_pooling2d_9/PartitionedCallPartitionedCall7batch_normalization_11/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????xx@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_42706?
!conv2d_44/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_9/PartitionedCall:output:0conv2d_44_44166conv2d_44_44168*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????xx?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_44_layer_call_and_return_conditional_losses_43207?
!conv2d_45/StatefulPartitionedCallStatefulPartitionedCall*conv2d_44/StatefulPartitionedCall:output:0conv2d_45_44171conv2d_45_44173*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????xx?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_45_layer_call_and_return_conditional_losses_43224?
.batch_normalization_12/StatefulPartitionedCallStatefulPartitionedCall*conv2d_45/StatefulPartitionedCall:output:0batch_normalization_12_44176batch_normalization_12_44178batch_normalization_12_44180batch_normalization_12_44182*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????xx?*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Z
fURS
Q__inference_batch_normalization_12_layer_call_and_return_conditional_losses_42731?
 max_pooling2d_10/PartitionedCallPartitionedCall7batch_normalization_12/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????<<?* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_max_pooling2d_10_layer_call_and_return_conditional_losses_42782?
!conv2d_46/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_10/PartitionedCall:output:0conv2d_46_44186conv2d_46_44188*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????<<?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_46_layer_call_and_return_conditional_losses_43251?
!conv2d_47/StatefulPartitionedCallStatefulPartitionedCall*conv2d_46/StatefulPartitionedCall:output:0conv2d_47_44191conv2d_47_44193*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????<<?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_47_layer_call_and_return_conditional_losses_43268?
.batch_normalization_13/StatefulPartitionedCallStatefulPartitionedCall*conv2d_47/StatefulPartitionedCall:output:0batch_normalization_13_44196batch_normalization_13_44198batch_normalization_13_44200batch_normalization_13_44202*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????<<?*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Z
fURS
Q__inference_batch_normalization_13_layer_call_and_return_conditional_losses_42807?
!dropout_4/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_13/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????<<?* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dropout_4_layer_call_and_return_conditional_losses_43897?
 max_pooling2d_11/PartitionedCallPartitionedCall*dropout_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_max_pooling2d_11_layer_call_and_return_conditional_losses_42858?
!conv2d_48/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_11/PartitionedCall:output:0conv2d_48_44207conv2d_48_44209*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_48_layer_call_and_return_conditional_losses_43302?
!conv2d_49/StatefulPartitionedCallStatefulPartitionedCall*conv2d_48/StatefulPartitionedCall:output:0conv2d_49_44212conv2d_49_44214*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_49_layer_call_and_return_conditional_losses_43319?
.batch_normalization_14/StatefulPartitionedCallStatefulPartitionedCall*conv2d_49/StatefulPartitionedCall:output:0batch_normalization_14_44217batch_normalization_14_44219batch_normalization_14_44221batch_normalization_14_44223*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Z
fURS
Q__inference_batch_normalization_14_layer_call_and_return_conditional_losses_42883?
!dropout_5/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_14/StatefulPartitionedCall:output:0"^dropout_4/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dropout_5_layer_call_and_return_conditional_losses_43854?
*conv2d_transpose_8/StatefulPartitionedCallStatefulPartitionedCall*dropout_5/StatefulPartitionedCall:output:0conv2d_transpose_8_44227conv2d_transpose_8_44229*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????<<?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_conv2d_transpose_8_layer_call_and_return_conditional_losses_42962?
concatenate_8/PartitionedCallPartitionedCall3conv2d_transpose_8/StatefulPartitionedCall:output:0*dropout_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????<<?* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_concatenate_8_layer_call_and_return_conditional_losses_43353?
!conv2d_50/StatefulPartitionedCallStatefulPartitionedCall&concatenate_8/PartitionedCall:output:0conv2d_50_44233conv2d_50_44235*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????<<?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_50_layer_call_and_return_conditional_losses_43366?
!conv2d_51/StatefulPartitionedCallStatefulPartitionedCall*conv2d_50/StatefulPartitionedCall:output:0conv2d_51_44238conv2d_51_44240*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????<<?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_51_layer_call_and_return_conditional_losses_43383?
*conv2d_transpose_9/StatefulPartitionedCallStatefulPartitionedCall*conv2d_51/StatefulPartitionedCall:output:0conv2d_transpose_9_44243conv2d_transpose_9_44245*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????xx?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_conv2d_transpose_9_layer_call_and_return_conditional_losses_43006?
concatenate_9/PartitionedCallPartitionedCall3conv2d_transpose_9/StatefulPartitionedCall:output:07batch_normalization_12/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????xx?* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_concatenate_9_layer_call_and_return_conditional_losses_43401?
!conv2d_52/StatefulPartitionedCallStatefulPartitionedCall&concatenate_9/PartitionedCall:output:0conv2d_52_44249conv2d_52_44251*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????xx?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_52_layer_call_and_return_conditional_losses_43414?
!conv2d_53/StatefulPartitionedCallStatefulPartitionedCall*conv2d_52/StatefulPartitionedCall:output:0conv2d_53_44254conv2d_53_44256*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????xx?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_53_layer_call_and_return_conditional_losses_43431?
+conv2d_transpose_10/StatefulPartitionedCallStatefulPartitionedCall*conv2d_53/StatefulPartitionedCall:output:0conv2d_transpose_10_44259conv2d_transpose_10_44261*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_conv2d_transpose_10_layer_call_and_return_conditional_losses_43050?
concatenate_10/PartitionedCallPartitionedCall4conv2d_transpose_10/StatefulPartitionedCall:output:07batch_normalization_11/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_concatenate_10_layer_call_and_return_conditional_losses_43449?
!conv2d_54/StatefulPartitionedCallStatefulPartitionedCall'concatenate_10/PartitionedCall:output:0conv2d_54_44265conv2d_54_44267*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_54_layer_call_and_return_conditional_losses_43462?
!conv2d_55/StatefulPartitionedCallStatefulPartitionedCall*conv2d_54/StatefulPartitionedCall:output:0conv2d_55_44270conv2d_55_44272*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_55_layer_call_and_return_conditional_losses_43479?
+conv2d_transpose_11/StatefulPartitionedCallStatefulPartitionedCall*conv2d_55/StatefulPartitionedCall:output:0conv2d_transpose_11_44275conv2d_transpose_11_44277*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:??????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_conv2d_transpose_11_layer_call_and_return_conditional_losses_43094?
concatenate_11/PartitionedCallPartitionedCall4conv2d_transpose_11/StatefulPartitionedCall:output:07batch_normalization_10/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_concatenate_11_layer_call_and_return_conditional_losses_43497?
!conv2d_56/StatefulPartitionedCallStatefulPartitionedCall'concatenate_11/PartitionedCall:output:0conv2d_56_44281conv2d_56_44283*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:??????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_56_layer_call_and_return_conditional_losses_43510?
!conv2d_57/StatefulPartitionedCallStatefulPartitionedCall*conv2d_56/StatefulPartitionedCall:output:0conv2d_57_44286conv2d_57_44288*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:??????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_57_layer_call_and_return_conditional_losses_43527?
!conv2d_58/StatefulPartitionedCallStatefulPartitionedCall*conv2d_57/StatefulPartitionedCall:output:0conv2d_58_44291conv2d_58_44293*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:??????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_58_layer_call_and_return_conditional_losses_43544?
!conv2d_59/StatefulPartitionedCallStatefulPartitionedCall*conv2d_58/StatefulPartitionedCall:output:0conv2d_59_44296conv2d_59_44298*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_59_layer_call_and_return_conditional_losses_43560?
IdentityIdentity*conv2d_59/StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:????????????

NoOpNoOp/^batch_normalization_10/StatefulPartitionedCall/^batch_normalization_11/StatefulPartitionedCall/^batch_normalization_12/StatefulPartitionedCall/^batch_normalization_13/StatefulPartitionedCall/^batch_normalization_14/StatefulPartitionedCall"^conv2d_40/StatefulPartitionedCall"^conv2d_41/StatefulPartitionedCall"^conv2d_42/StatefulPartitionedCall"^conv2d_43/StatefulPartitionedCall"^conv2d_44/StatefulPartitionedCall"^conv2d_45/StatefulPartitionedCall"^conv2d_46/StatefulPartitionedCall"^conv2d_47/StatefulPartitionedCall"^conv2d_48/StatefulPartitionedCall"^conv2d_49/StatefulPartitionedCall"^conv2d_50/StatefulPartitionedCall"^conv2d_51/StatefulPartitionedCall"^conv2d_52/StatefulPartitionedCall"^conv2d_53/StatefulPartitionedCall"^conv2d_54/StatefulPartitionedCall"^conv2d_55/StatefulPartitionedCall"^conv2d_56/StatefulPartitionedCall"^conv2d_57/StatefulPartitionedCall"^conv2d_58/StatefulPartitionedCall"^conv2d_59/StatefulPartitionedCall,^conv2d_transpose_10/StatefulPartitionedCall,^conv2d_transpose_11/StatefulPartitionedCall+^conv2d_transpose_8/StatefulPartitionedCall+^conv2d_transpose_9/StatefulPartitionedCall"^dropout_4/StatefulPartitionedCall"^dropout_5/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:???????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_10/StatefulPartitionedCall.batch_normalization_10/StatefulPartitionedCall2`
.batch_normalization_11/StatefulPartitionedCall.batch_normalization_11/StatefulPartitionedCall2`
.batch_normalization_12/StatefulPartitionedCall.batch_normalization_12/StatefulPartitionedCall2`
.batch_normalization_13/StatefulPartitionedCall.batch_normalization_13/StatefulPartitionedCall2`
.batch_normalization_14/StatefulPartitionedCall.batch_normalization_14/StatefulPartitionedCall2F
!conv2d_40/StatefulPartitionedCall!conv2d_40/StatefulPartitionedCall2F
!conv2d_41/StatefulPartitionedCall!conv2d_41/StatefulPartitionedCall2F
!conv2d_42/StatefulPartitionedCall!conv2d_42/StatefulPartitionedCall2F
!conv2d_43/StatefulPartitionedCall!conv2d_43/StatefulPartitionedCall2F
!conv2d_44/StatefulPartitionedCall!conv2d_44/StatefulPartitionedCall2F
!conv2d_45/StatefulPartitionedCall!conv2d_45/StatefulPartitionedCall2F
!conv2d_46/StatefulPartitionedCall!conv2d_46/StatefulPartitionedCall2F
!conv2d_47/StatefulPartitionedCall!conv2d_47/StatefulPartitionedCall2F
!conv2d_48/StatefulPartitionedCall!conv2d_48/StatefulPartitionedCall2F
!conv2d_49/StatefulPartitionedCall!conv2d_49/StatefulPartitionedCall2F
!conv2d_50/StatefulPartitionedCall!conv2d_50/StatefulPartitionedCall2F
!conv2d_51/StatefulPartitionedCall!conv2d_51/StatefulPartitionedCall2F
!conv2d_52/StatefulPartitionedCall!conv2d_52/StatefulPartitionedCall2F
!conv2d_53/StatefulPartitionedCall!conv2d_53/StatefulPartitionedCall2F
!conv2d_54/StatefulPartitionedCall!conv2d_54/StatefulPartitionedCall2F
!conv2d_55/StatefulPartitionedCall!conv2d_55/StatefulPartitionedCall2F
!conv2d_56/StatefulPartitionedCall!conv2d_56/StatefulPartitionedCall2F
!conv2d_57/StatefulPartitionedCall!conv2d_57/StatefulPartitionedCall2F
!conv2d_58/StatefulPartitionedCall!conv2d_58/StatefulPartitionedCall2F
!conv2d_59/StatefulPartitionedCall!conv2d_59/StatefulPartitionedCall2Z
+conv2d_transpose_10/StatefulPartitionedCall+conv2d_transpose_10/StatefulPartitionedCall2Z
+conv2d_transpose_11/StatefulPartitionedCall+conv2d_transpose_11/StatefulPartitionedCall2X
*conv2d_transpose_8/StatefulPartitionedCall*conv2d_transpose_8/StatefulPartitionedCall2X
*conv2d_transpose_9/StatefulPartitionedCall*conv2d_transpose_9/StatefulPartitionedCall2F
!dropout_4/StatefulPartitionedCall!dropout_4/StatefulPartitionedCall2F
!dropout_5/StatefulPartitionedCall!dropout_5/StatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
s
I__inference_concatenate_11_layer_call_and_return_conditional_losses_43497

inputs
inputs_1
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :
concatConcatV2inputsinputs_1concat/axis:output:0*
N*
T0*1
_output_shapes
:???????????@a
IdentityIdentityconcat:output:0*
T0*1
_output_shapes
:???????????@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*M
_input_shapes<
::??????????? :??????????? :Y U
1
_output_shapes
:??????????? 
 
_user_specified_nameinputs:YU
1
_output_shapes
:??????????? 
 
_user_specified_nameinputs
?
?
3__inference_conv2d_transpose_11_layer_call_fn_46889

inputs!
unknown: @
	unknown_0: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_conv2d_transpose_11_layer_call_and_return_conditional_losses_43094?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+??????????????????????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+???????????????????????????@: : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
?
D__inference_conv2d_49_layer_call_and_return_conditional_losses_43319

inputs:
conv2d_readvariableop_resource:??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:??*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:??????????j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:??????????w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
D__inference_conv2d_47_layer_call_and_return_conditional_losses_46367

inputs:
conv2d_readvariableop_resource:??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:??*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????<<?*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????<<?Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:?????????<<?j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:?????????<<?w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :?????????<<?: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:?????????<<?
 
_user_specified_nameinputs
?	
?
6__inference_batch_normalization_12_layer_call_fn_46268

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Z
fURS
Q__inference_batch_normalization_12_layer_call_and_return_conditional_losses_42731?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,????????????????????????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
D__inference_conv2d_48_layer_call_and_return_conditional_losses_46486

inputs:
conv2d_readvariableop_resource:??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:??*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:??????????j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:??????????w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
?
6__inference_batch_normalization_10_layer_call_fn_46057

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Z
fURS
Q__inference_batch_normalization_10_layer_call_and_return_conditional_losses_42610?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+??????????????????????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+??????????????????????????? : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
Z
.__inference_concatenate_10_layer_call_fn_46833
inputs_0
inputs_1
identity?
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_concatenate_10_layer_call_and_return_conditional_losses_43449k
IdentityIdentityPartitionedCall:output:0*
T0*2
_output_shapes 
:????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*M
_input_shapes<
::???????????@:???????????@:[ W
1
_output_shapes
:???????????@
"
_user_specified_name
inputs/0:[W
1
_output_shapes
:???????????@
"
_user_specified_name
inputs/1
?
?
D__inference_conv2d_41_layer_call_and_return_conditional_losses_46031

inputs8
conv2d_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:??????????? Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:??????????? k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:??????????? w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:??????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:??????????? 
 
_user_specified_nameinputs
?
?
2__inference_conv2d_transpose_8_layer_call_fn_46604

inputs#
unknown:??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_conv2d_transpose_8_layer_call_and_return_conditional_losses_42962?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,????????????????????????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,????????????????????????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
Q__inference_batch_normalization_13_layer_call_and_return_conditional_losses_46429

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
exponential_avg_factor%
?#<?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,?????????????????????????????
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
D__inference_conv2d_45_layer_call_and_return_conditional_losses_43224

inputs:
conv2d_readvariableop_resource:??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:??*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????xx?*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????xx?Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:?????????xx?j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:?????????xx?w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :?????????xx?: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:?????????xx?
 
_user_specified_nameinputs
?
?
)__inference_conv2d_51_layer_call_fn_46679

inputs#
unknown:??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????<<?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_conv2d_51_layer_call_and_return_conditional_losses_43383x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:?????????<<?`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :?????????<<?: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:?????????<<?
 
_user_specified_nameinputs
?	
?
6__inference_batch_normalization_10_layer_call_fn_46044

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Z
fURS
Q__inference_batch_normalization_10_layer_call_and_return_conditional_losses_42579?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+??????????????????????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+??????????????????????????? : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
f
J__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_42630

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
D__inference_conv2d_54_layer_call_and_return_conditional_losses_43462

inputs9
conv2d_readvariableop_resource:?@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:?@*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????@Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:???????????@k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:???????????@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*5
_input_shapes$
":????????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Z V
2
_output_shapes 
:????????????
 
_user_specified_nameinputs
?
?
Q__inference_batch_normalization_12_layer_call_and_return_conditional_losses_46299

inputs&
readvariableop_resource:	?(
readvariableop_1_resource:	?7
(fusedbatchnormv3_readvariableop_resource:	?9
*fusedbatchnormv3_readvariableop_1_resource:	?
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:?*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:?*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:?*
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:?*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,????????????????????????????:?:?:?:?:*
epsilon%o?:*
is_training( ~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,?????????????????????????????
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
E
input_3:
serving_default_input_3:0???????????G
	conv2d_59:
StatefulPartitionedCall:0???????????tensorflow/serving/predict:??
?
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer-4
layer_with_weights-3
layer-5
layer_with_weights-4
layer-6
layer_with_weights-5
layer-7
	layer-8

layer_with_weights-6

layer-9
layer_with_weights-7
layer-10
layer_with_weights-8
layer-11
layer-12
layer_with_weights-9
layer-13
layer_with_weights-10
layer-14
layer_with_weights-11
layer-15
layer-16
layer-17
layer_with_weights-12
layer-18
layer_with_weights-13
layer-19
layer_with_weights-14
layer-20
layer-21
layer_with_weights-15
layer-22
layer-23
layer_with_weights-16
layer-24
layer_with_weights-17
layer-25
layer_with_weights-18
layer-26
layer-27
layer_with_weights-19
layer-28
layer_with_weights-20
layer-29
layer_with_weights-21
layer-30
 layer-31
!layer_with_weights-22
!layer-32
"layer_with_weights-23
"layer-33
#layer_with_weights-24
#layer-34
$layer-35
%layer_with_weights-25
%layer-36
&layer_with_weights-26
&layer-37
'layer_with_weights-27
'layer-38
(layer_with_weights-28
(layer-39
)	optimizer
*	variables
+trainable_variables
,regularization_losses
-	keras_api
.__call__
*/&call_and_return_all_conditional_losses
0_default_save_signature
1
signatures"
_tf_keras_network
"
_tf_keras_input_layer
?

2kernel
3bias
4	variables
5trainable_variables
6regularization_losses
7	keras_api
8__call__
*9&call_and_return_all_conditional_losses"
_tf_keras_layer
?

:kernel
;bias
<	variables
=trainable_variables
>regularization_losses
?	keras_api
@__call__
*A&call_and_return_all_conditional_losses"
_tf_keras_layer
?
Baxis
	Cgamma
Dbeta
Emoving_mean
Fmoving_variance
G	variables
Htrainable_variables
Iregularization_losses
J	keras_api
K__call__
*L&call_and_return_all_conditional_losses"
_tf_keras_layer
?
M	variables
Ntrainable_variables
Oregularization_losses
P	keras_api
Q__call__
*R&call_and_return_all_conditional_losses"
_tf_keras_layer
?

Skernel
Tbias
U	variables
Vtrainable_variables
Wregularization_losses
X	keras_api
Y__call__
*Z&call_and_return_all_conditional_losses"
_tf_keras_layer
?

[kernel
\bias
]	variables
^trainable_variables
_regularization_losses
`	keras_api
a__call__
*b&call_and_return_all_conditional_losses"
_tf_keras_layer
?
caxis
	dgamma
ebeta
fmoving_mean
gmoving_variance
h	variables
itrainable_variables
jregularization_losses
k	keras_api
l__call__
*m&call_and_return_all_conditional_losses"
_tf_keras_layer
?
n	variables
otrainable_variables
pregularization_losses
q	keras_api
r__call__
*s&call_and_return_all_conditional_losses"
_tf_keras_layer
?

tkernel
ubias
v	variables
wtrainable_variables
xregularization_losses
y	keras_api
z__call__
*{&call_and_return_all_conditional_losses"
_tf_keras_layer
?

|kernel
}bias
~	variables
trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
	?axis

?gamma
	?beta
?moving_mean
?moving_variance
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?kernel
	?bias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?kernel
	?bias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
	?axis

?gamma
	?beta
?moving_mean
?moving_variance
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?_random_generator
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?kernel
	?bias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?kernel
	?bias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
	?axis

?gamma
	?beta
?moving_mean
?moving_variance
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?_random_generator
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?kernel
	?bias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?kernel
	?bias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?kernel
	?bias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?kernel
	?bias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?kernel
	?bias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?kernel
	?bias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?kernel
	?bias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?kernel
	?bias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?kernel
	?bias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?kernel
	?bias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?kernel
	?bias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?kernel
	?bias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?kernel
	?bias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?kernel
	?bias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

	?iter
?beta_1
?beta_2

?decay
?learning_rate2m?3m?:m?;m?Cm?Dm?Sm?Tm?[m?\m?dm?em?tm?um?|m?}m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?	?m?2v?3v?:v?;v?Cv?Dv?Sv?Tv?[v?\v?dv?ev?tv?uv?|v?}v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?	?v?"
	optimizer
?
20
31
:2
;3
C4
D5
E6
F7
S8
T9
[10
\11
d12
e13
f14
g15
t16
u17
|18
}19
?20
?21
?22
?23
?24
?25
?26
?27
?28
?29
?30
?31
?32
?33
?34
?35
?36
?37
?38
?39
?40
?41
?42
?43
?44
?45
?46
?47
?48
?49
?50
?51
?52
?53
?54
?55
?56
?57
?58
?59
?60
?61
?62
?63
?64
?65
?66
?67"
trackable_list_wrapper
?
20
31
:2
;3
C4
D5
S6
T7
[8
\9
d10
e11
t12
u13
|14
}15
?16
?17
?18
?19
?20
?21
?22
?23
?24
?25
?26
?27
?28
?29
?30
?31
?32
?33
?34
?35
?36
?37
?38
?39
?40
?41
?42
?43
?44
?45
?46
?47
?48
?49
?50
?51
?52
?53
?54
?55
?56
?57"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
*	variables
+trainable_variables
,regularization_losses
.__call__
0_default_save_signature
*/&call_and_return_all_conditional_losses
&/"call_and_return_conditional_losses"
_generic_user_object
?2?
'__inference_model_2_layer_call_fn_43706
'__inference_model_2_layer_call_fn_45087
'__inference_model_2_layer_call_fn_45228
'__inference_model_2_layer_call_fn_44582?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
B__inference_model_2_layer_call_and_return_conditional_losses_45531
B__inference_model_2_layer_call_and_return_conditional_losses_45848
B__inference_model_2_layer_call_and_return_conditional_losses_44761
B__inference_model_2_layer_call_and_return_conditional_losses_44940?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
 __inference__wrapped_model_42557input_3"?
???
FullArgSpec
args? 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
-
?serving_default"
signature_map
*:( 2conv2d_40/kernel
: 2conv2d_40/bias
.
20
31"
trackable_list_wrapper
.
20
31"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
4	variables
5trainable_variables
6regularization_losses
8__call__
*9&call_and_return_all_conditional_losses
&9"call_and_return_conditional_losses"
_generic_user_object
?2?
)__inference_conv2d_40_layer_call_fn_46000?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_conv2d_40_layer_call_and_return_conditional_losses_46011?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
*:(  2conv2d_41/kernel
: 2conv2d_41/bias
.
:0
;1"
trackable_list_wrapper
.
:0
;1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
<	variables
=trainable_variables
>regularization_losses
@__call__
*A&call_and_return_all_conditional_losses
&A"call_and_return_conditional_losses"
_generic_user_object
?2?
)__inference_conv2d_41_layer_call_fn_46020?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_conv2d_41_layer_call_and_return_conditional_losses_46031?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
*:( 2batch_normalization_10/gamma
):' 2batch_normalization_10/beta
2:0  (2"batch_normalization_10/moving_mean
6:4  (2&batch_normalization_10/moving_variance
<
C0
D1
E2
F3"
trackable_list_wrapper
.
C0
D1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
G	variables
Htrainable_variables
Iregularization_losses
K__call__
*L&call_and_return_all_conditional_losses
&L"call_and_return_conditional_losses"
_generic_user_object
?2?
6__inference_batch_normalization_10_layer_call_fn_46044
6__inference_batch_normalization_10_layer_call_fn_46057?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
Q__inference_batch_normalization_10_layer_call_and_return_conditional_losses_46075
Q__inference_batch_normalization_10_layer_call_and_return_conditional_losses_46093?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
M	variables
Ntrainable_variables
Oregularization_losses
Q__call__
*R&call_and_return_all_conditional_losses
&R"call_and_return_conditional_losses"
_generic_user_object
?2?
/__inference_max_pooling2d_8_layer_call_fn_46098?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
J__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_46103?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
*:( @2conv2d_42/kernel
:@2conv2d_42/bias
.
S0
T1"
trackable_list_wrapper
.
S0
T1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
U	variables
Vtrainable_variables
Wregularization_losses
Y__call__
*Z&call_and_return_all_conditional_losses
&Z"call_and_return_conditional_losses"
_generic_user_object
?2?
)__inference_conv2d_42_layer_call_fn_46112?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_conv2d_42_layer_call_and_return_conditional_losses_46123?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
*:(@@2conv2d_43/kernel
:@2conv2d_43/bias
.
[0
\1"
trackable_list_wrapper
.
[0
\1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
]	variables
^trainable_variables
_regularization_losses
a__call__
*b&call_and_return_all_conditional_losses
&b"call_and_return_conditional_losses"
_generic_user_object
?2?
)__inference_conv2d_43_layer_call_fn_46132?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_conv2d_43_layer_call_and_return_conditional_losses_46143?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
*:(@2batch_normalization_11/gamma
):'@2batch_normalization_11/beta
2:0@ (2"batch_normalization_11/moving_mean
6:4@ (2&batch_normalization_11/moving_variance
<
d0
e1
f2
g3"
trackable_list_wrapper
.
d0
e1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
h	variables
itrainable_variables
jregularization_losses
l__call__
*m&call_and_return_all_conditional_losses
&m"call_and_return_conditional_losses"
_generic_user_object
?2?
6__inference_batch_normalization_11_layer_call_fn_46156
6__inference_batch_normalization_11_layer_call_fn_46169?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
Q__inference_batch_normalization_11_layer_call_and_return_conditional_losses_46187
Q__inference_batch_normalization_11_layer_call_and_return_conditional_losses_46205?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
n	variables
otrainable_variables
pregularization_losses
r__call__
*s&call_and_return_all_conditional_losses
&s"call_and_return_conditional_losses"
_generic_user_object
?2?
/__inference_max_pooling2d_9_layer_call_fn_46210?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
J__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_46215?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
+:)@?2conv2d_44/kernel
:?2conv2d_44/bias
.
t0
u1"
trackable_list_wrapper
.
t0
u1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
v	variables
wtrainable_variables
xregularization_losses
z__call__
*{&call_and_return_all_conditional_losses
&{"call_and_return_conditional_losses"
_generic_user_object
?2?
)__inference_conv2d_44_layer_call_fn_46224?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_conv2d_44_layer_call_and_return_conditional_losses_46235?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
,:*??2conv2d_45/kernel
:?2conv2d_45/bias
.
|0
}1"
trackable_list_wrapper
.
|0
}1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
~	variables
trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2?
)__inference_conv2d_45_layer_call_fn_46244?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_conv2d_45_layer_call_and_return_conditional_losses_46255?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
+:)?2batch_normalization_12/gamma
*:(?2batch_normalization_12/beta
3:1? (2"batch_normalization_12/moving_mean
7:5? (2&batch_normalization_12/moving_variance
@
?0
?1
?2
?3"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2?
6__inference_batch_normalization_12_layer_call_fn_46268
6__inference_batch_normalization_12_layer_call_fn_46281?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
Q__inference_batch_normalization_12_layer_call_and_return_conditional_losses_46299
Q__inference_batch_normalization_12_layer_call_and_return_conditional_losses_46317?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2?
0__inference_max_pooling2d_10_layer_call_fn_46322?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
K__inference_max_pooling2d_10_layer_call_and_return_conditional_losses_46327?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
,:*??2conv2d_46/kernel
:?2conv2d_46/bias
0
?0
?1"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2?
)__inference_conv2d_46_layer_call_fn_46336?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_conv2d_46_layer_call_and_return_conditional_losses_46347?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
,:*??2conv2d_47/kernel
:?2conv2d_47/bias
0
?0
?1"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2?
)__inference_conv2d_47_layer_call_fn_46356?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_conv2d_47_layer_call_and_return_conditional_losses_46367?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
+:)?2batch_normalization_13/gamma
*:(?2batch_normalization_13/beta
3:1? (2"batch_normalization_13/moving_mean
7:5? (2&batch_normalization_13/moving_variance
@
?0
?1
?2
?3"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2?
6__inference_batch_normalization_13_layer_call_fn_46380
6__inference_batch_normalization_13_layer_call_fn_46393?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
Q__inference_batch_normalization_13_layer_call_and_return_conditional_losses_46411
Q__inference_batch_normalization_13_layer_call_and_return_conditional_losses_46429?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
?2?
)__inference_dropout_4_layer_call_fn_46434
)__inference_dropout_4_layer_call_fn_46439?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
D__inference_dropout_4_layer_call_and_return_conditional_losses_46444
D__inference_dropout_4_layer_call_and_return_conditional_losses_46456?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2?
0__inference_max_pooling2d_11_layer_call_fn_46461?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
K__inference_max_pooling2d_11_layer_call_and_return_conditional_losses_46466?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
,:*??2conv2d_48/kernel
:?2conv2d_48/bias
0
?0
?1"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2?
)__inference_conv2d_48_layer_call_fn_46475?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_conv2d_48_layer_call_and_return_conditional_losses_46486?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
,:*??2conv2d_49/kernel
:?2conv2d_49/bias
0
?0
?1"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2?
)__inference_conv2d_49_layer_call_fn_46495?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_conv2d_49_layer_call_and_return_conditional_losses_46506?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
+:)?2batch_normalization_14/gamma
*:(?2batch_normalization_14/beta
3:1? (2"batch_normalization_14/moving_mean
7:5? (2&batch_normalization_14/moving_variance
@
?0
?1
?2
?3"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2?
6__inference_batch_normalization_14_layer_call_fn_46519
6__inference_batch_normalization_14_layer_call_fn_46532?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
Q__inference_batch_normalization_14_layer_call_and_return_conditional_losses_46550
Q__inference_batch_normalization_14_layer_call_and_return_conditional_losses_46568?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
?2?
)__inference_dropout_5_layer_call_fn_46573
)__inference_dropout_5_layer_call_fn_46578?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
D__inference_dropout_5_layer_call_and_return_conditional_losses_46583
D__inference_dropout_5_layer_call_and_return_conditional_losses_46595?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
5:3??2conv2d_transpose_8/kernel
&:$?2conv2d_transpose_8/bias
0
?0
?1"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2?
2__inference_conv2d_transpose_8_layer_call_fn_46604?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
M__inference_conv2d_transpose_8_layer_call_and_return_conditional_losses_46637?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2?
-__inference_concatenate_8_layer_call_fn_46643?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
H__inference_concatenate_8_layer_call_and_return_conditional_losses_46650?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
,:*??2conv2d_50/kernel
:?2conv2d_50/bias
0
?0
?1"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2?
)__inference_conv2d_50_layer_call_fn_46659?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_conv2d_50_layer_call_and_return_conditional_losses_46670?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
,:*??2conv2d_51/kernel
:?2conv2d_51/bias
0
?0
?1"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2?
)__inference_conv2d_51_layer_call_fn_46679?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_conv2d_51_layer_call_and_return_conditional_losses_46690?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
5:3??2conv2d_transpose_9/kernel
&:$?2conv2d_transpose_9/bias
0
?0
?1"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2?
2__inference_conv2d_transpose_9_layer_call_fn_46699?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
M__inference_conv2d_transpose_9_layer_call_and_return_conditional_losses_46732?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2?
-__inference_concatenate_9_layer_call_fn_46738?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
H__inference_concatenate_9_layer_call_and_return_conditional_losses_46745?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
,:*??2conv2d_52/kernel
:?2conv2d_52/bias
0
?0
?1"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2?
)__inference_conv2d_52_layer_call_fn_46754?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_conv2d_52_layer_call_and_return_conditional_losses_46765?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
,:*??2conv2d_53/kernel
:?2conv2d_53/bias
0
?0
?1"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2?
)__inference_conv2d_53_layer_call_fn_46774?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_conv2d_53_layer_call_and_return_conditional_losses_46785?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
5:3@?2conv2d_transpose_10/kernel
&:$@2conv2d_transpose_10/bias
0
?0
?1"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2?
3__inference_conv2d_transpose_10_layer_call_fn_46794?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
N__inference_conv2d_transpose_10_layer_call_and_return_conditional_losses_46827?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2?
.__inference_concatenate_10_layer_call_fn_46833?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
I__inference_concatenate_10_layer_call_and_return_conditional_losses_46840?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
+:)?@2conv2d_54/kernel
:@2conv2d_54/bias
0
?0
?1"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2?
)__inference_conv2d_54_layer_call_fn_46849?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_conv2d_54_layer_call_and_return_conditional_losses_46860?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
*:(@@2conv2d_55/kernel
:@2conv2d_55/bias
0
?0
?1"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2?
)__inference_conv2d_55_layer_call_fn_46869?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_conv2d_55_layer_call_and_return_conditional_losses_46880?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
4:2 @2conv2d_transpose_11/kernel
&:$ 2conv2d_transpose_11/bias
0
?0
?1"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2?
3__inference_conv2d_transpose_11_layer_call_fn_46889?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
N__inference_conv2d_transpose_11_layer_call_and_return_conditional_losses_46922?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2?
.__inference_concatenate_11_layer_call_fn_46928?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
I__inference_concatenate_11_layer_call_and_return_conditional_losses_46935?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
*:(@ 2conv2d_56/kernel
: 2conv2d_56/bias
0
?0
?1"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2?
)__inference_conv2d_56_layer_call_fn_46944?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_conv2d_56_layer_call_and_return_conditional_losses_46955?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
*:(  2conv2d_57/kernel
: 2conv2d_57/bias
0
?0
?1"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2?
)__inference_conv2d_57_layer_call_fn_46964?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_conv2d_57_layer_call_and_return_conditional_losses_46975?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
*:(  2conv2d_58/kernel
: 2conv2d_58/bias
0
?0
?1"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2?
)__inference_conv2d_58_layer_call_fn_46984?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_conv2d_58_layer_call_and_return_conditional_losses_46995?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
*:( 2conv2d_59/kernel
:2conv2d_59/bias
0
?0
?1"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2?
)__inference_conv2d_59_layer_call_fn_47004?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_conv2d_59_layer_call_and_return_conditional_losses_47014?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
l
E0
F1
f2
g3
?4
?5
?6
?7
?8
?9"
trackable_list_wrapper
?
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24
25
26
27
28
29
30
 31
!32
"33
#34
$35
%36
&37
'38
(39"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
#__inference_signature_wrapper_45991input_3"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
E0
F1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
f0
g1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
R

?total

?count
?	variables
?	keras_api"
_tf_keras_metric
c

?total

?count
?
_fn_kwargs
?	variables
?	keras_api"
_tf_keras_metric
:  (2total
:  (2count
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
/:- 2Adam/conv2d_40/kernel/m
!: 2Adam/conv2d_40/bias/m
/:-  2Adam/conv2d_41/kernel/m
!: 2Adam/conv2d_41/bias/m
/:- 2#Adam/batch_normalization_10/gamma/m
.:, 2"Adam/batch_normalization_10/beta/m
/:- @2Adam/conv2d_42/kernel/m
!:@2Adam/conv2d_42/bias/m
/:-@@2Adam/conv2d_43/kernel/m
!:@2Adam/conv2d_43/bias/m
/:-@2#Adam/batch_normalization_11/gamma/m
.:,@2"Adam/batch_normalization_11/beta/m
0:.@?2Adam/conv2d_44/kernel/m
": ?2Adam/conv2d_44/bias/m
1:/??2Adam/conv2d_45/kernel/m
": ?2Adam/conv2d_45/bias/m
0:.?2#Adam/batch_normalization_12/gamma/m
/:-?2"Adam/batch_normalization_12/beta/m
1:/??2Adam/conv2d_46/kernel/m
": ?2Adam/conv2d_46/bias/m
1:/??2Adam/conv2d_47/kernel/m
": ?2Adam/conv2d_47/bias/m
0:.?2#Adam/batch_normalization_13/gamma/m
/:-?2"Adam/batch_normalization_13/beta/m
1:/??2Adam/conv2d_48/kernel/m
": ?2Adam/conv2d_48/bias/m
1:/??2Adam/conv2d_49/kernel/m
": ?2Adam/conv2d_49/bias/m
0:.?2#Adam/batch_normalization_14/gamma/m
/:-?2"Adam/batch_normalization_14/beta/m
::8??2 Adam/conv2d_transpose_8/kernel/m
+:)?2Adam/conv2d_transpose_8/bias/m
1:/??2Adam/conv2d_50/kernel/m
": ?2Adam/conv2d_50/bias/m
1:/??2Adam/conv2d_51/kernel/m
": ?2Adam/conv2d_51/bias/m
::8??2 Adam/conv2d_transpose_9/kernel/m
+:)?2Adam/conv2d_transpose_9/bias/m
1:/??2Adam/conv2d_52/kernel/m
": ?2Adam/conv2d_52/bias/m
1:/??2Adam/conv2d_53/kernel/m
": ?2Adam/conv2d_53/bias/m
::8@?2!Adam/conv2d_transpose_10/kernel/m
+:)@2Adam/conv2d_transpose_10/bias/m
0:.?@2Adam/conv2d_54/kernel/m
!:@2Adam/conv2d_54/bias/m
/:-@@2Adam/conv2d_55/kernel/m
!:@2Adam/conv2d_55/bias/m
9:7 @2!Adam/conv2d_transpose_11/kernel/m
+:) 2Adam/conv2d_transpose_11/bias/m
/:-@ 2Adam/conv2d_56/kernel/m
!: 2Adam/conv2d_56/bias/m
/:-  2Adam/conv2d_57/kernel/m
!: 2Adam/conv2d_57/bias/m
/:-  2Adam/conv2d_58/kernel/m
!: 2Adam/conv2d_58/bias/m
/:- 2Adam/conv2d_59/kernel/m
!:2Adam/conv2d_59/bias/m
/:- 2Adam/conv2d_40/kernel/v
!: 2Adam/conv2d_40/bias/v
/:-  2Adam/conv2d_41/kernel/v
!: 2Adam/conv2d_41/bias/v
/:- 2#Adam/batch_normalization_10/gamma/v
.:, 2"Adam/batch_normalization_10/beta/v
/:- @2Adam/conv2d_42/kernel/v
!:@2Adam/conv2d_42/bias/v
/:-@@2Adam/conv2d_43/kernel/v
!:@2Adam/conv2d_43/bias/v
/:-@2#Adam/batch_normalization_11/gamma/v
.:,@2"Adam/batch_normalization_11/beta/v
0:.@?2Adam/conv2d_44/kernel/v
": ?2Adam/conv2d_44/bias/v
1:/??2Adam/conv2d_45/kernel/v
": ?2Adam/conv2d_45/bias/v
0:.?2#Adam/batch_normalization_12/gamma/v
/:-?2"Adam/batch_normalization_12/beta/v
1:/??2Adam/conv2d_46/kernel/v
": ?2Adam/conv2d_46/bias/v
1:/??2Adam/conv2d_47/kernel/v
": ?2Adam/conv2d_47/bias/v
0:.?2#Adam/batch_normalization_13/gamma/v
/:-?2"Adam/batch_normalization_13/beta/v
1:/??2Adam/conv2d_48/kernel/v
": ?2Adam/conv2d_48/bias/v
1:/??2Adam/conv2d_49/kernel/v
": ?2Adam/conv2d_49/bias/v
0:.?2#Adam/batch_normalization_14/gamma/v
/:-?2"Adam/batch_normalization_14/beta/v
::8??2 Adam/conv2d_transpose_8/kernel/v
+:)?2Adam/conv2d_transpose_8/bias/v
1:/??2Adam/conv2d_50/kernel/v
": ?2Adam/conv2d_50/bias/v
1:/??2Adam/conv2d_51/kernel/v
": ?2Adam/conv2d_51/bias/v
::8??2 Adam/conv2d_transpose_9/kernel/v
+:)?2Adam/conv2d_transpose_9/bias/v
1:/??2Adam/conv2d_52/kernel/v
": ?2Adam/conv2d_52/bias/v
1:/??2Adam/conv2d_53/kernel/v
": ?2Adam/conv2d_53/bias/v
::8@?2!Adam/conv2d_transpose_10/kernel/v
+:)@2Adam/conv2d_transpose_10/bias/v
0:.?@2Adam/conv2d_54/kernel/v
!:@2Adam/conv2d_54/bias/v
/:-@@2Adam/conv2d_55/kernel/v
!:@2Adam/conv2d_55/bias/v
9:7 @2!Adam/conv2d_transpose_11/kernel/v
+:) 2Adam/conv2d_transpose_11/bias/v
/:-@ 2Adam/conv2d_56/kernel/v
!: 2Adam/conv2d_56/bias/v
/:-  2Adam/conv2d_57/kernel/v
!: 2Adam/conv2d_57/bias/v
/:-  2Adam/conv2d_58/kernel/v
!: 2Adam/conv2d_58/bias/v
/:- 2Adam/conv2d_59/kernel/v
!:2Adam/conv2d_59/bias/v?
 __inference__wrapped_model_42557?t23:;CDEFST[\defgtu|}????????????????????????????????????????????????:?7
0?-
+?(
input_3???????????
? "??<
:
	conv2d_59-?*
	conv2d_59????????????
Q__inference_batch_normalization_10_layer_call_and_return_conditional_losses_46075?CDEFM?J
C?@
:?7
inputs+??????????????????????????? 
p 
? "??<
5?2
0+??????????????????????????? 
? ?
Q__inference_batch_normalization_10_layer_call_and_return_conditional_losses_46093?CDEFM?J
C?@
:?7
inputs+??????????????????????????? 
p
? "??<
5?2
0+??????????????????????????? 
? ?
6__inference_batch_normalization_10_layer_call_fn_46044?CDEFM?J
C?@
:?7
inputs+??????????????????????????? 
p 
? "2?/+??????????????????????????? ?
6__inference_batch_normalization_10_layer_call_fn_46057?CDEFM?J
C?@
:?7
inputs+??????????????????????????? 
p
? "2?/+??????????????????????????? ?
Q__inference_batch_normalization_11_layer_call_and_return_conditional_losses_46187?defgM?J
C?@
:?7
inputs+???????????????????????????@
p 
? "??<
5?2
0+???????????????????????????@
? ?
Q__inference_batch_normalization_11_layer_call_and_return_conditional_losses_46205?defgM?J
C?@
:?7
inputs+???????????????????????????@
p
? "??<
5?2
0+???????????????????????????@
? ?
6__inference_batch_normalization_11_layer_call_fn_46156?defgM?J
C?@
:?7
inputs+???????????????????????????@
p 
? "2?/+???????????????????????????@?
6__inference_batch_normalization_11_layer_call_fn_46169?defgM?J
C?@
:?7
inputs+???????????????????????????@
p
? "2?/+???????????????????????????@?
Q__inference_batch_normalization_12_layer_call_and_return_conditional_losses_46299?????N?K
D?A
;?8
inputs,????????????????????????????
p 
? "@?=
6?3
0,????????????????????????????
? ?
Q__inference_batch_normalization_12_layer_call_and_return_conditional_losses_46317?????N?K
D?A
;?8
inputs,????????????????????????????
p
? "@?=
6?3
0,????????????????????????????
? ?
6__inference_batch_normalization_12_layer_call_fn_46268?????N?K
D?A
;?8
inputs,????????????????????????????
p 
? "3?0,?????????????????????????????
6__inference_batch_normalization_12_layer_call_fn_46281?????N?K
D?A
;?8
inputs,????????????????????????????
p
? "3?0,?????????????????????????????
Q__inference_batch_normalization_13_layer_call_and_return_conditional_losses_46411?????N?K
D?A
;?8
inputs,????????????????????????????
p 
? "@?=
6?3
0,????????????????????????????
? ?
Q__inference_batch_normalization_13_layer_call_and_return_conditional_losses_46429?????N?K
D?A
;?8
inputs,????????????????????????????
p
? "@?=
6?3
0,????????????????????????????
? ?
6__inference_batch_normalization_13_layer_call_fn_46380?????N?K
D?A
;?8
inputs,????????????????????????????
p 
? "3?0,?????????????????????????????
6__inference_batch_normalization_13_layer_call_fn_46393?????N?K
D?A
;?8
inputs,????????????????????????????
p
? "3?0,?????????????????????????????
Q__inference_batch_normalization_14_layer_call_and_return_conditional_losses_46550?????N?K
D?A
;?8
inputs,????????????????????????????
p 
? "@?=
6?3
0,????????????????????????????
? ?
Q__inference_batch_normalization_14_layer_call_and_return_conditional_losses_46568?????N?K
D?A
;?8
inputs,????????????????????????????
p
? "@?=
6?3
0,????????????????????????????
? ?
6__inference_batch_normalization_14_layer_call_fn_46519?????N?K
D?A
;?8
inputs,????????????????????????????
p 
? "3?0,?????????????????????????????
6__inference_batch_normalization_14_layer_call_fn_46532?????N?K
D?A
;?8
inputs,????????????????????????????
p
? "3?0,?????????????????????????????
I__inference_concatenate_10_layer_call_and_return_conditional_losses_46840?n?k
d?a
_?\
,?)
inputs/0???????????@
,?)
inputs/1???????????@
? "0?-
&?#
0????????????
? ?
.__inference_concatenate_10_layer_call_fn_46833?n?k
d?a
_?\
,?)
inputs/0???????????@
,?)
inputs/1???????????@
? "#? ?????????????
I__inference_concatenate_11_layer_call_and_return_conditional_losses_46935?n?k
d?a
_?\
,?)
inputs/0??????????? 
,?)
inputs/1??????????? 
? "/?,
%?"
0???????????@
? ?
.__inference_concatenate_11_layer_call_fn_46928?n?k
d?a
_?\
,?)
inputs/0??????????? 
,?)
inputs/1??????????? 
? ""????????????@?
H__inference_concatenate_8_layer_call_and_return_conditional_losses_46650?l?i
b?_
]?Z
+?(
inputs/0?????????<<?
+?(
inputs/1?????????<<?
? ".?+
$?!
0?????????<<?
? ?
-__inference_concatenate_8_layer_call_fn_46643?l?i
b?_
]?Z
+?(
inputs/0?????????<<?
+?(
inputs/1?????????<<?
? "!??????????<<??
H__inference_concatenate_9_layer_call_and_return_conditional_losses_46745?l?i
b?_
]?Z
+?(
inputs/0?????????xx?
+?(
inputs/1?????????xx?
? ".?+
$?!
0?????????xx?
? ?
-__inference_concatenate_9_layer_call_fn_46738?l?i
b?_
]?Z
+?(
inputs/0?????????xx?
+?(
inputs/1?????????xx?
? "!??????????xx??
D__inference_conv2d_40_layer_call_and_return_conditional_losses_46011p239?6
/?,
*?'
inputs???????????
? "/?,
%?"
0??????????? 
? ?
)__inference_conv2d_40_layer_call_fn_46000c239?6
/?,
*?'
inputs???????????
? ""???????????? ?
D__inference_conv2d_41_layer_call_and_return_conditional_losses_46031p:;9?6
/?,
*?'
inputs??????????? 
? "/?,
%?"
0??????????? 
? ?
)__inference_conv2d_41_layer_call_fn_46020c:;9?6
/?,
*?'
inputs??????????? 
? ""???????????? ?
D__inference_conv2d_42_layer_call_and_return_conditional_losses_46123pST9?6
/?,
*?'
inputs??????????? 
? "/?,
%?"
0???????????@
? ?
)__inference_conv2d_42_layer_call_fn_46112cST9?6
/?,
*?'
inputs??????????? 
? ""????????????@?
D__inference_conv2d_43_layer_call_and_return_conditional_losses_46143p[\9?6
/?,
*?'
inputs???????????@
? "/?,
%?"
0???????????@
? ?
)__inference_conv2d_43_layer_call_fn_46132c[\9?6
/?,
*?'
inputs???????????@
? ""????????????@?
D__inference_conv2d_44_layer_call_and_return_conditional_losses_46235mtu7?4
-?*
(?%
inputs?????????xx@
? ".?+
$?!
0?????????xx?
? ?
)__inference_conv2d_44_layer_call_fn_46224`tu7?4
-?*
(?%
inputs?????????xx@
? "!??????????xx??
D__inference_conv2d_45_layer_call_and_return_conditional_losses_46255n|}8?5
.?+
)?&
inputs?????????xx?
? ".?+
$?!
0?????????xx?
? ?
)__inference_conv2d_45_layer_call_fn_46244a|}8?5
.?+
)?&
inputs?????????xx?
? "!??????????xx??
D__inference_conv2d_46_layer_call_and_return_conditional_losses_46347p??8?5
.?+
)?&
inputs?????????<<?
? ".?+
$?!
0?????????<<?
? ?
)__inference_conv2d_46_layer_call_fn_46336c??8?5
.?+
)?&
inputs?????????<<?
? "!??????????<<??
D__inference_conv2d_47_layer_call_and_return_conditional_losses_46367p??8?5
.?+
)?&
inputs?????????<<?
? ".?+
$?!
0?????????<<?
? ?
)__inference_conv2d_47_layer_call_fn_46356c??8?5
.?+
)?&
inputs?????????<<?
? "!??????????<<??
D__inference_conv2d_48_layer_call_and_return_conditional_losses_46486p??8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0??????????
? ?
)__inference_conv2d_48_layer_call_fn_46475c??8?5
.?+
)?&
inputs??????????
? "!????????????
D__inference_conv2d_49_layer_call_and_return_conditional_losses_46506p??8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0??????????
? ?
)__inference_conv2d_49_layer_call_fn_46495c??8?5
.?+
)?&
inputs??????????
? "!????????????
D__inference_conv2d_50_layer_call_and_return_conditional_losses_46670p??8?5
.?+
)?&
inputs?????????<<?
? ".?+
$?!
0?????????<<?
? ?
)__inference_conv2d_50_layer_call_fn_46659c??8?5
.?+
)?&
inputs?????????<<?
? "!??????????<<??
D__inference_conv2d_51_layer_call_and_return_conditional_losses_46690p??8?5
.?+
)?&
inputs?????????<<?
? ".?+
$?!
0?????????<<?
? ?
)__inference_conv2d_51_layer_call_fn_46679c??8?5
.?+
)?&
inputs?????????<<?
? "!??????????<<??
D__inference_conv2d_52_layer_call_and_return_conditional_losses_46765p??8?5
.?+
)?&
inputs?????????xx?
? ".?+
$?!
0?????????xx?
? ?
)__inference_conv2d_52_layer_call_fn_46754c??8?5
.?+
)?&
inputs?????????xx?
? "!??????????xx??
D__inference_conv2d_53_layer_call_and_return_conditional_losses_46785p??8?5
.?+
)?&
inputs?????????xx?
? ".?+
$?!
0?????????xx?
? ?
)__inference_conv2d_53_layer_call_fn_46774c??8?5
.?+
)?&
inputs?????????xx?
? "!??????????xx??
D__inference_conv2d_54_layer_call_and_return_conditional_losses_46860s??:?7
0?-
+?(
inputs????????????
? "/?,
%?"
0???????????@
? ?
)__inference_conv2d_54_layer_call_fn_46849f??:?7
0?-
+?(
inputs????????????
? ""????????????@?
D__inference_conv2d_55_layer_call_and_return_conditional_losses_46880r??9?6
/?,
*?'
inputs???????????@
? "/?,
%?"
0???????????@
? ?
)__inference_conv2d_55_layer_call_fn_46869e??9?6
/?,
*?'
inputs???????????@
? ""????????????@?
D__inference_conv2d_56_layer_call_and_return_conditional_losses_46955r??9?6
/?,
*?'
inputs???????????@
? "/?,
%?"
0??????????? 
? ?
)__inference_conv2d_56_layer_call_fn_46944e??9?6
/?,
*?'
inputs???????????@
? ""???????????? ?
D__inference_conv2d_57_layer_call_and_return_conditional_losses_46975r??9?6
/?,
*?'
inputs??????????? 
? "/?,
%?"
0??????????? 
? ?
)__inference_conv2d_57_layer_call_fn_46964e??9?6
/?,
*?'
inputs??????????? 
? ""???????????? ?
D__inference_conv2d_58_layer_call_and_return_conditional_losses_46995r??9?6
/?,
*?'
inputs??????????? 
? "/?,
%?"
0??????????? 
? ?
)__inference_conv2d_58_layer_call_fn_46984e??9?6
/?,
*?'
inputs??????????? 
? ""???????????? ?
D__inference_conv2d_59_layer_call_and_return_conditional_losses_47014r??9?6
/?,
*?'
inputs??????????? 
? "/?,
%?"
0???????????
? ?
)__inference_conv2d_59_layer_call_fn_47004e??9?6
/?,
*?'
inputs??????????? 
? ""?????????????
N__inference_conv2d_transpose_10_layer_call_and_return_conditional_losses_46827???J?G
@?=
;?8
inputs,????????????????????????????
? "??<
5?2
0+???????????????????????????@
? ?
3__inference_conv2d_transpose_10_layer_call_fn_46794???J?G
@?=
;?8
inputs,????????????????????????????
? "2?/+???????????????????????????@?
N__inference_conv2d_transpose_11_layer_call_and_return_conditional_losses_46922???I?F
??<
:?7
inputs+???????????????????????????@
? "??<
5?2
0+??????????????????????????? 
? ?
3__inference_conv2d_transpose_11_layer_call_fn_46889???I?F
??<
:?7
inputs+???????????????????????????@
? "2?/+??????????????????????????? ?
M__inference_conv2d_transpose_8_layer_call_and_return_conditional_losses_46637???J?G
@?=
;?8
inputs,????????????????????????????
? "@?=
6?3
0,????????????????????????????
? ?
2__inference_conv2d_transpose_8_layer_call_fn_46604???J?G
@?=
;?8
inputs,????????????????????????????
? "3?0,?????????????????????????????
M__inference_conv2d_transpose_9_layer_call_and_return_conditional_losses_46732???J?G
@?=
;?8
inputs,????????????????????????????
? "@?=
6?3
0,????????????????????????????
? ?
2__inference_conv2d_transpose_9_layer_call_fn_46699???J?G
@?=
;?8
inputs,????????????????????????????
? "3?0,?????????????????????????????
D__inference_dropout_4_layer_call_and_return_conditional_losses_46444n<?9
2?/
)?&
inputs?????????<<?
p 
? ".?+
$?!
0?????????<<?
? ?
D__inference_dropout_4_layer_call_and_return_conditional_losses_46456n<?9
2?/
)?&
inputs?????????<<?
p
? ".?+
$?!
0?????????<<?
? ?
)__inference_dropout_4_layer_call_fn_46434a<?9
2?/
)?&
inputs?????????<<?
p 
? "!??????????<<??
)__inference_dropout_4_layer_call_fn_46439a<?9
2?/
)?&
inputs?????????<<?
p
? "!??????????<<??
D__inference_dropout_5_layer_call_and_return_conditional_losses_46583n<?9
2?/
)?&
inputs??????????
p 
? ".?+
$?!
0??????????
? ?
D__inference_dropout_5_layer_call_and_return_conditional_losses_46595n<?9
2?/
)?&
inputs??????????
p
? ".?+
$?!
0??????????
? ?
)__inference_dropout_5_layer_call_fn_46573a<?9
2?/
)?&
inputs??????????
p 
? "!????????????
)__inference_dropout_5_layer_call_fn_46578a<?9
2?/
)?&
inputs??????????
p
? "!????????????
K__inference_max_pooling2d_10_layer_call_and_return_conditional_losses_46327?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
0__inference_max_pooling2d_10_layer_call_fn_46322?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
K__inference_max_pooling2d_11_layer_call_and_return_conditional_losses_46466?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
0__inference_max_pooling2d_11_layer_call_fn_46461?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
J__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_46103?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
/__inference_max_pooling2d_8_layer_call_fn_46098?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
J__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_46215?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
/__inference_max_pooling2d_9_layer_call_fn_46210?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
B__inference_model_2_layer_call_and_return_conditional_losses_44761?t23:;CDEFST[\defgtu|}????????????????????????????????????????????????B??
8?5
+?(
input_3???????????
p 

 
? "/?,
%?"
0???????????
? ?
B__inference_model_2_layer_call_and_return_conditional_losses_44940?t23:;CDEFST[\defgtu|}????????????????????????????????????????????????B??
8?5
+?(
input_3???????????
p

 
? "/?,
%?"
0???????????
? ?
B__inference_model_2_layer_call_and_return_conditional_losses_45531?t23:;CDEFST[\defgtu|}????????????????????????????????????????????????A?>
7?4
*?'
inputs???????????
p 

 
? "/?,
%?"
0???????????
? ?
B__inference_model_2_layer_call_and_return_conditional_losses_45848?t23:;CDEFST[\defgtu|}????????????????????????????????????????????????A?>
7?4
*?'
inputs???????????
p

 
? "/?,
%?"
0???????????
? ?
'__inference_model_2_layer_call_fn_43706?t23:;CDEFST[\defgtu|}????????????????????????????????????????????????B??
8?5
+?(
input_3???????????
p 

 
? ""?????????????
'__inference_model_2_layer_call_fn_44582?t23:;CDEFST[\defgtu|}????????????????????????????????????????????????B??
8?5
+?(
input_3???????????
p

 
? ""?????????????
'__inference_model_2_layer_call_fn_45087?t23:;CDEFST[\defgtu|}????????????????????????????????????????????????A?>
7?4
*?'
inputs???????????
p 

 
? ""?????????????
'__inference_model_2_layer_call_fn_45228?t23:;CDEFST[\defgtu|}????????????????????????????????????????????????A?>
7?4
*?'
inputs???????????
p

 
? ""?????????????
#__inference_signature_wrapper_45991?t23:;CDEFST[\defgtu|}????????????????????????????????????????????????E?B
? 
;?8
6
input_3+?(
input_3???????????"??<
:
	conv2d_59-?*
	conv2d_59???????????