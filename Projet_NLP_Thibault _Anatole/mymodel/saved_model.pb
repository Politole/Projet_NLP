ô"
¸
D
AddV2
x"T
y"T
z"T"
Ttype:
2	
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( 
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
8
Const
output"dtype"
valuetensor"
dtypetype
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
?
Mul
x"T
y"T
z"T"
Ttype:
2	
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
dtypetype
E
Relu
features"T
activations"T"
Ttype:
2	
¥
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
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
0
Sigmoid
x"T
y"T"
Ttype:

2
9
Softmax
logits"T
softmax"T"
Ttype:
2
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
Á
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
executor_typestring ¨
@
StaticRegexFullMatch	
input

output
"
patternstring
ö
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
-
Tanh
x"T
y"T"
Ttype:

2
°
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type/
output_handleéèelement_dtype"
element_dtypetype"

shape_typetype:
2	

TensorListReserve
element_shape"
shape_type
num_elements(
handleéèelement_dtype"
element_dtypetype"

shape_typetype:
2	

TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsintÿÿÿÿÿÿÿÿÿ
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 

While

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint
"serve*2.8.02v2.8.0-0-g3f878cff5b68´ß 

embedding/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	Md*%
shared_nameembedding/embeddings
~
(embedding/embeddings/Read/ReadVariableOpReadVariableOpembedding/embeddings*
_output_shapes
:	Md*
dtype0
u
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@*
shared_namedense/kernel
n
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*
_output_shapes
:	@*
dtype0
l

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_name
dense/bias
e
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes
:@*
dtype0
y
dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@M*
shared_namedense_1/kernel
r
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel*
_output_shapes
:	@M*
dtype0
q
dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:M*
shared_namedense_1/bias
j
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes	
:M*
dtype0

lstm/lstm_cell/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d*&
shared_namelstm/lstm_cell/kernel

)lstm/lstm_cell/kernel/Read/ReadVariableOpReadVariableOplstm/lstm_cell/kernel*
_output_shapes
:	d*
dtype0

lstm/lstm_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*0
shared_name!lstm/lstm_cell/recurrent_kernel

3lstm/lstm_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOplstm/lstm_cell/recurrent_kernel* 
_output_shapes
:
*
dtype0

lstm/lstm_cell/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_namelstm/lstm_cell/bias
x
'lstm/lstm_cell/bias/Read/ReadVariableOpReadVariableOplstm/lstm_cell/bias*
_output_shapes	
:*
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

NoOpNoOp
Ê-
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*-
valueû,Bø, Bñ,

layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer-3
layer_with_weights-3
layer-4
	optimizer

signatures
#_self_saveable_object_factories
		variables

trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature*
Å

embeddings
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses*
æ
cell

state_spec
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
_random_generator
 __call__
*!&call_and_return_all_conditional_losses*
Ë

"kernel
#bias
#$_self_saveable_object_factories
%	variables
&trainable_variables
'regularization_losses
(	keras_api
)__call__
**&call_and_return_all_conditional_losses*
Ê
#+_self_saveable_object_factories
,	variables
-trainable_variables
.regularization_losses
/	keras_api
0_random_generator
1__call__
*2&call_and_return_all_conditional_losses* 
Ë

3kernel
4bias
#5_self_saveable_object_factories
6	variables
7trainable_variables
8regularization_losses
9	keras_api
:__call__
*;&call_and_return_all_conditional_losses*
* 

<serving_default* 
* 
<
0
=1
>2
?3
"4
#5
36
47*
<
0
=1
>2
?3
"4
#5
36
47*
* 
°
@non_trainable_variables

Alayers
Bmetrics
Clayer_regularization_losses
Dlayer_metrics
		variables

trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 
hb
VARIABLE_VALUEembedding/embeddings:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUE*
* 

0*

0*
* 

Enon_trainable_variables

Flayers
Gmetrics
Hlayer_regularization_losses
Ilayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 

J
state_size

=kernel
>recurrent_kernel
?bias
#K_self_saveable_object_factories
L	variables
Mtrainable_variables
Nregularization_losses
O	keras_api
P_random_generator
Q__call__
*R&call_and_return_all_conditional_losses*
* 
* 

=0
>1
?2*

=0
>1
?2*
* 


Sstates
Tnon_trainable_variables

Ulayers
Vmetrics
Wlayer_regularization_losses
Xlayer_metrics
	variables
trainable_variables
regularization_losses
 __call__
*!&call_and_return_all_conditional_losses
&!"call_and_return_conditional_losses*
* 
* 
* 
\V
VARIABLE_VALUEdense/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUE
dense/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

"0
#1*

"0
#1*
* 

Ynon_trainable_variables

Zlayers
[metrics
\layer_regularization_losses
]layer_metrics
%	variables
&trainable_variables
'regularization_losses
)__call__
**&call_and_return_all_conditional_losses
&*"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 

^non_trainable_variables

_layers
`metrics
alayer_regularization_losses
blayer_metrics
,	variables
-trainable_variables
.regularization_losses
1__call__
*2&call_and_return_all_conditional_losses
&2"call_and_return_conditional_losses* 
* 
* 
* 
^X
VARIABLE_VALUEdense_1/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_1/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

30
41*

30
41*
* 

cnon_trainable_variables

dlayers
emetrics
flayer_regularization_losses
glayer_metrics
6	variables
7trainable_variables
8regularization_losses
:__call__
*;&call_and_return_all_conditional_losses
&;"call_and_return_conditional_losses*
* 
* 
* 
UO
VARIABLE_VALUElstm/lstm_cell/kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUElstm/lstm_cell/recurrent_kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUElstm/lstm_cell/bias&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
* 
'
0
1
2
3
4*

h0
i1*
* 
* 
* 
* 
* 
* 
* 
* 
* 

=0
>1
?2*

=0
>1
?2*
* 

jnon_trainable_variables

klayers
lmetrics
mlayer_regularization_losses
nlayer_metrics
L	variables
Mtrainable_variables
Nregularization_losses
Q__call__
*R&call_and_return_all_conditional_losses
&R"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

0*
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
8
	ototal
	pcount
q	variables
r	keras_api*
H
	stotal
	tcount
u
_fn_kwargs
v	variables
w	keras_api*
* 
* 
* 
* 
* 
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

o0
p1*

q	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

s0
t1*

v	variables*

serving_default_embedding_inputPlaceholder*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
dtype0*%
shape:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
å
StatefulPartitionedCallStatefulPartitionedCallserving_default_embedding_inputembedding/embeddingslstm/lstm_cell/kernellstm/lstm_cell/biaslstm/lstm_cell/recurrent_kerneldense/kernel
dense/biasdense_1/kerneldense_1/bias*
Tin
2	*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿM**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *,
f'R%
#__inference_signature_wrapper_11958
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
Ñ
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename(embedding/embeddings/Read/ReadVariableOp dense/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOp"dense_1/kernel/Read/ReadVariableOp dense_1/bias/Read/ReadVariableOp)lstm/lstm_cell/kernel/Read/ReadVariableOp3lstm/lstm_cell/recurrent_kernel/Read/ReadVariableOp'lstm/lstm_cell/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOpConst*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *'
f"R 
__inference__traced_save_13635
Ü
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameembedding/embeddingsdense/kernel
dense/biasdense_1/kerneldense_1/biaslstm/lstm_cell/kernellstm/lstm_cell/recurrent_kernellstm/lstm_cell/biastotalcounttotal_1count_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 **
f%R#
!__inference__traced_restore_13681 
¦

õ
B__inference_dense_1_layer_call_and_return_conditional_losses_10622

inputs1
matmul_readvariableop_resource:	@M.
biasadd_readvariableop_resource:	M
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@M*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿMs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:M*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿMW
SoftmaxSoftmaxBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿMa
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿMw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
±È
Û
?__inference_lstm_layer_call_and_return_conditional_losses_11075

inputs<
)lstm_cell_1_split_readvariableop_resource:	d:
+lstm_cell_1_split_1_readvariableop_resource:	7
#lstm_cell_1_readvariableop_resource:

identity¢lstm_cell_1/ReadVariableOp¢lstm_cell_1/ReadVariableOp_1¢lstm_cell_1/ReadVariableOp_2¢lstm_cell_1/ReadVariableOp_3¢ lstm_cell_1/split/ReadVariableOp¢"lstm_cell_1/split_1/ReadVariableOp¢while;
ShapeShapeinputs*
T0*
_output_shapes
:]
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
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿdD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_maskc
lstm_cell_1/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
:`
lstm_cell_1/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
lstm_cell_1/ones_likeFill$lstm_cell_1/ones_like/Shape:output:0$lstm_cell_1/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd^
lstm_cell_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?
lstm_cell_1/dropout/MulMullstm_cell_1/ones_like:output:0"lstm_cell_1/dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdg
lstm_cell_1/dropout/ShapeShapelstm_cell_1/ones_like:output:0*
T0*
_output_shapes
:¤
0lstm_cell_1/dropout/random_uniform/RandomUniformRandomUniform"lstm_cell_1/dropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
dtype0g
"lstm_cell_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=Ê
 lstm_cell_1/dropout/GreaterEqualGreaterEqual9lstm_cell_1/dropout/random_uniform/RandomUniform:output:0+lstm_cell_1/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_cell_1/dropout/CastCast$lstm_cell_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_cell_1/dropout/Mul_1Mullstm_cell_1/dropout/Mul:z:0lstm_cell_1/dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd`
lstm_cell_1/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?
lstm_cell_1/dropout_1/MulMullstm_cell_1/ones_like:output:0$lstm_cell_1/dropout_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdi
lstm_cell_1/dropout_1/ShapeShapelstm_cell_1/ones_like:output:0*
T0*
_output_shapes
:¨
2lstm_cell_1/dropout_1/random_uniform/RandomUniformRandomUniform$lstm_cell_1/dropout_1/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
dtype0i
$lstm_cell_1/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=Ð
"lstm_cell_1/dropout_1/GreaterEqualGreaterEqual;lstm_cell_1/dropout_1/random_uniform/RandomUniform:output:0-lstm_cell_1/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_cell_1/dropout_1/CastCast&lstm_cell_1/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_cell_1/dropout_1/Mul_1Mullstm_cell_1/dropout_1/Mul:z:0lstm_cell_1/dropout_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd`
lstm_cell_1/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?
lstm_cell_1/dropout_2/MulMullstm_cell_1/ones_like:output:0$lstm_cell_1/dropout_2/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdi
lstm_cell_1/dropout_2/ShapeShapelstm_cell_1/ones_like:output:0*
T0*
_output_shapes
:¨
2lstm_cell_1/dropout_2/random_uniform/RandomUniformRandomUniform$lstm_cell_1/dropout_2/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
dtype0i
$lstm_cell_1/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=Ð
"lstm_cell_1/dropout_2/GreaterEqualGreaterEqual;lstm_cell_1/dropout_2/random_uniform/RandomUniform:output:0-lstm_cell_1/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_cell_1/dropout_2/CastCast&lstm_cell_1/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_cell_1/dropout_2/Mul_1Mullstm_cell_1/dropout_2/Mul:z:0lstm_cell_1/dropout_2/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd`
lstm_cell_1/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?
lstm_cell_1/dropout_3/MulMullstm_cell_1/ones_like:output:0$lstm_cell_1/dropout_3/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdi
lstm_cell_1/dropout_3/ShapeShapelstm_cell_1/ones_like:output:0*
T0*
_output_shapes
:¨
2lstm_cell_1/dropout_3/random_uniform/RandomUniformRandomUniform$lstm_cell_1/dropout_3/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
dtype0i
$lstm_cell_1/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=Ð
"lstm_cell_1/dropout_3/GreaterEqualGreaterEqual;lstm_cell_1/dropout_3/random_uniform/RandomUniform:output:0-lstm_cell_1/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_cell_1/dropout_3/CastCast&lstm_cell_1/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_cell_1/dropout_3/Mul_1Mullstm_cell_1/dropout_3/Mul:z:0lstm_cell_1/dropout_3/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd[
lstm_cell_1/ones_like_1/ShapeShapezeros:output:0*
T0*
_output_shapes
:b
lstm_cell_1/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?¢
lstm_cell_1/ones_like_1Fill&lstm_cell_1/ones_like_1/Shape:output:0&lstm_cell_1/ones_like_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
lstm_cell_1/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?
lstm_cell_1/dropout_4/MulMul lstm_cell_1/ones_like_1:output:0$lstm_cell_1/dropout_4/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿk
lstm_cell_1/dropout_4/ShapeShape lstm_cell_1/ones_like_1:output:0*
T0*
_output_shapes
:©
2lstm_cell_1/dropout_4/random_uniform/RandomUniformRandomUniform$lstm_cell_1/dropout_4/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0i
$lstm_cell_1/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=Ñ
"lstm_cell_1/dropout_4/GreaterEqualGreaterEqual;lstm_cell_1/dropout_4/random_uniform/RandomUniform:output:0-lstm_cell_1/dropout_4/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_1/dropout_4/CastCast&lstm_cell_1/dropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_1/dropout_4/Mul_1Mullstm_cell_1/dropout_4/Mul:z:0lstm_cell_1/dropout_4/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
lstm_cell_1/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?
lstm_cell_1/dropout_5/MulMul lstm_cell_1/ones_like_1:output:0$lstm_cell_1/dropout_5/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿk
lstm_cell_1/dropout_5/ShapeShape lstm_cell_1/ones_like_1:output:0*
T0*
_output_shapes
:©
2lstm_cell_1/dropout_5/random_uniform/RandomUniformRandomUniform$lstm_cell_1/dropout_5/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0i
$lstm_cell_1/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=Ñ
"lstm_cell_1/dropout_5/GreaterEqualGreaterEqual;lstm_cell_1/dropout_5/random_uniform/RandomUniform:output:0-lstm_cell_1/dropout_5/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_1/dropout_5/CastCast&lstm_cell_1/dropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_1/dropout_5/Mul_1Mullstm_cell_1/dropout_5/Mul:z:0lstm_cell_1/dropout_5/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
lstm_cell_1/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?
lstm_cell_1/dropout_6/MulMul lstm_cell_1/ones_like_1:output:0$lstm_cell_1/dropout_6/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿk
lstm_cell_1/dropout_6/ShapeShape lstm_cell_1/ones_like_1:output:0*
T0*
_output_shapes
:©
2lstm_cell_1/dropout_6/random_uniform/RandomUniformRandomUniform$lstm_cell_1/dropout_6/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0i
$lstm_cell_1/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=Ñ
"lstm_cell_1/dropout_6/GreaterEqualGreaterEqual;lstm_cell_1/dropout_6/random_uniform/RandomUniform:output:0-lstm_cell_1/dropout_6/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_1/dropout_6/CastCast&lstm_cell_1/dropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_1/dropout_6/Mul_1Mullstm_cell_1/dropout_6/Mul:z:0lstm_cell_1/dropout_6/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
lstm_cell_1/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?
lstm_cell_1/dropout_7/MulMul lstm_cell_1/ones_like_1:output:0$lstm_cell_1/dropout_7/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿk
lstm_cell_1/dropout_7/ShapeShape lstm_cell_1/ones_like_1:output:0*
T0*
_output_shapes
:©
2lstm_cell_1/dropout_7/random_uniform/RandomUniformRandomUniform$lstm_cell_1/dropout_7/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0i
$lstm_cell_1/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=Ñ
"lstm_cell_1/dropout_7/GreaterEqualGreaterEqual;lstm_cell_1/dropout_7/random_uniform/RandomUniform:output:0-lstm_cell_1/dropout_7/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_1/dropout_7/CastCast&lstm_cell_1/dropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_1/dropout_7/Mul_1Mullstm_cell_1/dropout_7/Mul:z:0lstm_cell_1/dropout_7/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_1/mulMulstrided_slice_2:output:0lstm_cell_1/dropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_cell_1/mul_1Mulstrided_slice_2:output:0lstm_cell_1/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_cell_1/mul_2Mulstrided_slice_2:output:0lstm_cell_1/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_cell_1/mul_3Mulstrided_slice_2:output:0lstm_cell_1/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd]
lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
 lstm_cell_1/split/ReadVariableOpReadVariableOp)lstm_cell_1_split_readvariableop_resource*
_output_shapes
:	d*
dtype0Æ
lstm_cell_1/splitSplit$lstm_cell_1/split/split_dim:output:0(lstm_cell_1/split/ReadVariableOp:value:0*
T0*@
_output_shapes.
,:	d:	d:	d:	d*
	num_split
lstm_cell_1/MatMulMatMullstm_cell_1/mul:z:0lstm_cell_1/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_1/MatMul_1MatMullstm_cell_1/mul_1:z:0lstm_cell_1/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_1/MatMul_2MatMullstm_cell_1/mul_2:z:0lstm_cell_1/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_1/MatMul_3MatMullstm_cell_1/mul_3:z:0lstm_cell_1/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
lstm_cell_1/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
"lstm_cell_1/split_1/ReadVariableOpReadVariableOp+lstm_cell_1_split_1_readvariableop_resource*
_output_shapes	
:*
dtype0¼
lstm_cell_1/split_1Split&lstm_cell_1/split_1/split_dim:output:0*lstm_cell_1/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
::::*
	num_split
lstm_cell_1/BiasAddBiasAddlstm_cell_1/MatMul:product:0lstm_cell_1/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_1/BiasAdd_1BiasAddlstm_cell_1/MatMul_1:product:0lstm_cell_1/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_1/BiasAdd_2BiasAddlstm_cell_1/MatMul_2:product:0lstm_cell_1/split_1:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_1/BiasAdd_3BiasAddlstm_cell_1/MatMul_3:product:0lstm_cell_1/split_1:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|
lstm_cell_1/mul_4Mulzeros:output:0lstm_cell_1/dropout_4/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|
lstm_cell_1/mul_5Mulzeros:output:0lstm_cell_1/dropout_5/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|
lstm_cell_1/mul_6Mulzeros:output:0lstm_cell_1/dropout_6/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|
lstm_cell_1/mul_7Mulzeros:output:0lstm_cell_1/dropout_7/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_1/ReadVariableOpReadVariableOp#lstm_cell_1_readvariableop_resource* 
_output_shapes
:
*
dtype0p
lstm_cell_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        r
!lstm_cell_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       r
!lstm_cell_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ©
lstm_cell_1/strided_sliceStridedSlice"lstm_cell_1/ReadVariableOp:value:0(lstm_cell_1/strided_slice/stack:output:0*lstm_cell_1/strided_slice/stack_1:output:0*lstm_cell_1/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask
lstm_cell_1/MatMul_4MatMullstm_cell_1/mul_4:z:0"lstm_cell_1/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_1/addAddV2lstm_cell_1/BiasAdd:output:0lstm_cell_1/MatMul_4:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿf
lstm_cell_1/SigmoidSigmoidlstm_cell_1/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_1/ReadVariableOp_1ReadVariableOp#lstm_cell_1_readvariableop_resource* 
_output_shapes
:
*
dtype0r
!lstm_cell_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       t
#lstm_cell_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       t
#lstm_cell_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ³
lstm_cell_1/strided_slice_1StridedSlice$lstm_cell_1/ReadVariableOp_1:value:0*lstm_cell_1/strided_slice_1/stack:output:0,lstm_cell_1/strided_slice_1/stack_1:output:0,lstm_cell_1/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask
lstm_cell_1/MatMul_5MatMullstm_cell_1/mul_5:z:0$lstm_cell_1/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_1/add_1AddV2lstm_cell_1/BiasAdd_1:output:0lstm_cell_1/MatMul_5:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿj
lstm_cell_1/Sigmoid_1Sigmoidlstm_cell_1/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
lstm_cell_1/mul_8Mullstm_cell_1/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_1/ReadVariableOp_2ReadVariableOp#lstm_cell_1_readvariableop_resource* 
_output_shapes
:
*
dtype0r
!lstm_cell_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       t
#lstm_cell_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      t
#lstm_cell_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ³
lstm_cell_1/strided_slice_2StridedSlice$lstm_cell_1/ReadVariableOp_2:value:0*lstm_cell_1/strided_slice_2/stack:output:0,lstm_cell_1/strided_slice_2/stack_1:output:0,lstm_cell_1/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask
lstm_cell_1/MatMul_6MatMullstm_cell_1/mul_6:z:0$lstm_cell_1/strided_slice_2:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_1/add_2AddV2lstm_cell_1/BiasAdd_2:output:0lstm_cell_1/MatMul_6:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿb
lstm_cell_1/TanhTanhlstm_cell_1/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿz
lstm_cell_1/mul_9Mullstm_cell_1/Sigmoid:y:0lstm_cell_1/Tanh:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ{
lstm_cell_1/add_3AddV2lstm_cell_1/mul_8:z:0lstm_cell_1/mul_9:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_1/ReadVariableOp_3ReadVariableOp#lstm_cell_1_readvariableop_resource* 
_output_shapes
:
*
dtype0r
!lstm_cell_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"      t
#lstm_cell_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        t
#lstm_cell_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ³
lstm_cell_1/strided_slice_3StridedSlice$lstm_cell_1/ReadVariableOp_3:value:0*lstm_cell_1/strided_slice_3/stack:output:0,lstm_cell_1/strided_slice_3/stack_1:output:0,lstm_cell_1/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask
lstm_cell_1/MatMul_7MatMullstm_cell_1/mul_7:z:0$lstm_cell_1/strided_slice_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_1/add_4AddV2lstm_cell_1/BiasAdd_3:output:0lstm_cell_1/MatMul_7:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿj
lstm_cell_1/Sigmoid_2Sigmoidlstm_cell_1/add_4:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_cell_1/Tanh_1Tanhlstm_cell_1/add_3:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_1/mul_10Mullstm_cell_1/Sigmoid_2:y:0lstm_cell_1/Tanh_1:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ÷
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)lstm_cell_1_split_readvariableop_resource+lstm_cell_1_split_1_readvariableop_resource#lstm_cell_1_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_10877*
condR
while_cond_10876*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Ì
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"           
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp^lstm_cell_1/ReadVariableOp^lstm_cell_1/ReadVariableOp_1^lstm_cell_1/ReadVariableOp_2^lstm_cell_1/ReadVariableOp_3!^lstm_cell_1/split/ReadVariableOp#^lstm_cell_1/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd: : : 28
lstm_cell_1/ReadVariableOplstm_cell_1/ReadVariableOp2<
lstm_cell_1/ReadVariableOp_1lstm_cell_1/ReadVariableOp_12<
lstm_cell_1/ReadVariableOp_2lstm_cell_1/ReadVariableOp_22<
lstm_cell_1/ReadVariableOp_3lstm_cell_1/ReadVariableOp_32D
 lstm_cell_1/split/ReadVariableOp lstm_cell_1/split/ReadVariableOp2H
"lstm_cell_1/split_1/ReadVariableOp"lstm_cell_1/split_1/ReadVariableOp2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs
ñ
õ
+__inference_lstm_cell_1_layer_call_fn_13331

inputs
states_0
states_1
unknown:	d
	unknown_0:	
	unknown_1:

identity

identity_1

identity_2¢StatefulPartitionedCall¨
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_lstm_cell_1_layer_call_and_return_conditional_losses_9919p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿr

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿr

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/0:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/1
Ê"
Ð
while_body_9933
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0+
while_lstm_cell_1_9957_0:	d'
while_lstm_cell_1_9959_0:	,
while_lstm_cell_1_9961_0:

while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor)
while_lstm_cell_1_9957:	d%
while_lstm_cell_1_9959:	*
while_lstm_cell_1_9961:
¢)while/lstm_cell_1/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype0©
)while/lstm_cell_1/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_1_9957_0while_lstm_cell_1_9959_0while_lstm_cell_1_9961_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_lstm_cell_1_layer_call_and_return_conditional_losses_9919Û
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder2while/lstm_cell_1/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :éèÒ
while/Identity_4Identity2while/lstm_cell_1/StatefulPartitionedCall:output:1^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/Identity_5Identity2while/lstm_cell_1/StatefulPartitionedCall:output:2^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿx

while/NoOpNoOp*^while/lstm_cell_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"2
while_lstm_cell_1_9957while_lstm_cell_1_9957_0"2
while_lstm_cell_1_9959while_lstm_cell_1_9959_0"2
while_lstm_cell_1_9961while_lstm_cell_1_9961_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2V
)while/lstm_cell_1/StatefulPartitionedCall)while/lstm_cell_1/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
´
¾
while_cond_10444
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_10444___redundant_placeholder03
/while_while_cond_10444___redundant_placeholder13
/while_while_cond_10444___redundant_placeholder23
/while_while_cond_10444___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:

C
'__inference_dropout_layer_call_fn_13272

inputs
identity­
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_10609`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
´
¾
while_cond_12741
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_12741___redundant_placeholder03
/while_while_cond_12741___redundant_placeholder13
/while_while_cond_12741___redundant_placeholder23
/while_while_cond_12741___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:


ò
@__inference_dense_layer_call_and_return_conditional_losses_13267

inputs1
matmul_readvariableop_resource:	@-
biasadd_readvariableop_resource:@
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Î	
Ç
#__inference_signature_wrapper_11958
embedding_input
unknown:	Md
	unknown_0:	d
	unknown_1:	
	unknown_2:

	unknown_3:	@
	unknown_4:@
	unknown_5:	@M
	unknown_6:	M
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallembedding_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿM**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *(
f#R!
__inference__wrapped_model_9802p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿM`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:a ]
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
)
_user_specified_nameembedding_input
þ
â
E__inference_sequential_layer_call_and_return_conditional_losses_10629

inputs"
embedding_10334:	Md

lstm_10580:	d

lstm_10582:	

lstm_10584:

dense_10599:	@
dense_10601:@ 
dense_1_10623:	@M
dense_1_10625:	M
identity¢dense/StatefulPartitionedCall¢dense_1/StatefulPartitionedCall¢!embedding/StatefulPartitionedCall¢lstm/StatefulPartitionedCallë
!embedding/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_10334*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_embedding_layer_call_and_return_conditional_losses_10333
lstm/StatefulPartitionedCallStatefulPartitionedCall*embedding/StatefulPartitionedCall:output:0
lstm_10580
lstm_10582
lstm_10584*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_lstm_layer_call_and_return_conditional_losses_10579
dense/StatefulPartitionedCallStatefulPartitionedCall%lstm/StatefulPartitionedCall:output:0dense_10599dense_10601*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_10598Õ
dropout/PartitionedCallPartitionedCall&dense/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_10609
dense_1/StatefulPartitionedCallStatefulPartitionedCall dropout/PartitionedCall:output:0dense_1_10623dense_1_10625*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿM*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_10622x
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿMË
NoOpNoOp^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall"^embedding/StatefulPartitionedCall^lstm/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2<
lstm/StatefulPartitionedCalllstm/StatefulPartitionedCall:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

ë
E__inference_sequential_layer_call_and_return_conditional_losses_11205
embedding_input"
embedding_11183:	Md

lstm_11186:	d

lstm_11188:	

lstm_11190:

dense_11193:	@
dense_11195:@ 
dense_1_11199:	@M
dense_1_11201:	M
identity¢dense/StatefulPartitionedCall¢dense_1/StatefulPartitionedCall¢!embedding/StatefulPartitionedCall¢lstm/StatefulPartitionedCallô
!embedding/StatefulPartitionedCallStatefulPartitionedCallembedding_inputembedding_11183*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_embedding_layer_call_and_return_conditional_losses_10333
lstm/StatefulPartitionedCallStatefulPartitionedCall*embedding/StatefulPartitionedCall:output:0
lstm_11186
lstm_11188
lstm_11190*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_lstm_layer_call_and_return_conditional_losses_10579
dense/StatefulPartitionedCallStatefulPartitionedCall%lstm/StatefulPartitionedCall:output:0dense_11193dense_11195*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_10598Õ
dropout/PartitionedCallPartitionedCall&dense/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_10609
dense_1/StatefulPartitionedCallStatefulPartitionedCall dropout/PartitionedCall:output:0dense_1_11199dense_1_11201*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿM*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_10622x
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿMË
NoOpNoOp^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall"^embedding/StatefulPartitionedCall^lstm/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2<
lstm/StatefulPartitionedCalllstm/StatefulPartitionedCall:a ]
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
)
_user_specified_nameembedding_input
´
¾
while_cond_10876
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_10876___redundant_placeholder03
/while_while_cond_10876___redundant_placeholder13
/while_while_cond_10876___redundant_placeholder23
/while_while_cond_10876___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
´
¾
while_cond_12434
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_12434___redundant_placeholder03
/while_while_cond_12434___redundant_placeholder13
/while_while_cond_12434___redundant_placeholder23
/while_while_cond_12434___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
Ý	
¡
D__inference_embedding_layer_call_and_return_conditional_losses_11975

inputs)
embedding_lookup_11969:	Md
identity¢embedding_lookup^
CastCastinputs*

DstT0*

SrcT0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÂ
embedding_lookupResourceGatherembedding_lookup_11969Cast:y:0*
Tindices0*)
_class
loc:@embedding_lookup/11969*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd*
dtype0ª
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*)
_class
loc:@embedding_lookup/11969*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿdY
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: 2$
embedding_lookupembedding_lookup:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ÿ7
û
?__inference_lstm_layer_call_and_return_conditional_losses_10307

inputs$
lstm_cell_1_10225:	d 
lstm_cell_1_10227:	%
lstm_cell_1_10229:

identity¢#lstm_cell_1/StatefulPartitionedCall¢while;
ShapeShapeinputs*
T0*
_output_shapes
:]
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
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿdD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_maskï
#lstm_cell_1/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_1_10225lstm_cell_1_10227lstm_cell_1_10229*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_lstm_cell_1_layer_call_and_return_conditional_losses_10179n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ³
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_1_10225lstm_cell_1_10227lstm_cell_1_10229*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_10238*
condR
while_cond_10237*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Ì
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"           
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿt
NoOpNoOp$^lstm_cell_1/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd: : : 2J
#lstm_cell_1/StatefulPartitionedCall#lstm_cell_1/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs

´
$__inference_lstm_layer_call_fn_11986
inputs_0
unknown:	d
	unknown_0:	
	unknown_1:

identity¢StatefulPartitionedCallä
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_lstm_layer_call_and_return_conditional_losses_10002p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd
"
_user_specified_name
inputs/0
ØD
ª
F__inference_lstm_cell_1_layer_call_and_return_conditional_losses_13430

inputs
states_0
states_10
split_readvariableop_resource:	d.
split_1_readvariableop_resource:	+
readvariableop_resource:

identity

identity_1

identity_2¢ReadVariableOp¢ReadVariableOp_1¢ReadVariableOp_2¢ReadVariableOp_3¢split/ReadVariableOp¢split_1/ReadVariableOpE
ones_like/ShapeShapeinputs*
T0*
_output_shapes
:T
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?w
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdI
ones_like_1/ShapeShapestates_0*
T0*
_output_shapes
:V
ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?~
ones_like_1Fillones_like_1/Shape:output:0ones_like_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿX
mulMulinputsones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdZ
mul_1Mulinputsones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdZ
mul_2Mulinputsones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdZ
mul_3Mulinputsones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :s
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource*
_output_shapes
:	d*
dtype0¢
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*@
_output_shapes.
,:	d:	d:	d:	d*
	num_split\
MatMulMatMulmul:z:0split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
MatMul_1MatMul	mul_1:z:0split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
MatMul_2MatMul	mul_2:z:0split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
MatMul_3MatMul	mul_3:z:0split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : s
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*
_output_shapes	
:*
dtype0
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
::::*
	num_spliti
BiasAddBiasAddMatMul:product:0split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿm
	BiasAdd_1BiasAddMatMul_1:product:0split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿm
	BiasAdd_2BiasAddMatMul_2:product:0split_1:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿm
	BiasAdd_3BiasAddMatMul_3:product:0split_1:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
mul_4Mulstates_0ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
mul_5Mulstates_0ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
mul_6Mulstates_0ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
mul_7Mulstates_0ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
ReadVariableOpReadVariableOpreadvariableop_resource* 
_output_shapes
:
*
dtype0d
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        f
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       f
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      í
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_maskh
MatMul_4MatMul	mul_4:z:0strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
addAddV2BiasAdd:output:0MatMul_4:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿN
SigmoidSigmoidadd:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿj
ReadVariableOp_1ReadVariableOpreadvariableop_resource* 
_output_shapes
:
*
dtype0f
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ÷
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_maskj
MatMul_5MatMul	mul_5:z:0strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿi
add_1AddV2BiasAdd_1:output:0MatMul_5:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿR
	Sigmoid_1Sigmoid	add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿX
mul_8MulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿj
ReadVariableOp_2ReadVariableOpreadvariableop_resource* 
_output_shapes
:
*
dtype0f
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      h
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ÷
strided_slice_2StridedSliceReadVariableOp_2:value:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_maskj
MatMul_6MatMul	mul_6:z:0strided_slice_2:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿi
add_2AddV2BiasAdd_2:output:0MatMul_6:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿJ
TanhTanh	add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿV
mul_9MulSigmoid:y:0Tanh:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿW
add_3AddV2	mul_8:z:0	mul_9:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿj
ReadVariableOp_3ReadVariableOpreadvariableop_resource* 
_output_shapes
:
*
dtype0f
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"      h
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ÷
strided_slice_3StridedSliceReadVariableOp_3:value:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_maskj
MatMul_7MatMul	mul_7:z:0strided_slice_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿi
add_4AddV2BiasAdd_3:output:0MatMul_7:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿR
	Sigmoid_2Sigmoid	add_4:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿL
Tanh_1Tanh	add_3:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ[
mul_10MulSigmoid_2:y:0
Tanh_1:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ
IdentityIdentity
mul_10:z:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ\

Identity_1Identity
mul_10:z:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ[

Identity_2Identity	add_3:z:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : 2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/0:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/1
ð
ù
sequential_lstm_while_cond_9652<
8sequential_lstm_while_sequential_lstm_while_loop_counterB
>sequential_lstm_while_sequential_lstm_while_maximum_iterations%
!sequential_lstm_while_placeholder'
#sequential_lstm_while_placeholder_1'
#sequential_lstm_while_placeholder_2'
#sequential_lstm_while_placeholder_3>
:sequential_lstm_while_less_sequential_lstm_strided_slice_1R
Nsequential_lstm_while_sequential_lstm_while_cond_9652___redundant_placeholder0R
Nsequential_lstm_while_sequential_lstm_while_cond_9652___redundant_placeholder1R
Nsequential_lstm_while_sequential_lstm_while_cond_9652___redundant_placeholder2R
Nsequential_lstm_while_sequential_lstm_while_cond_9652___redundant_placeholder3"
sequential_lstm_while_identity
¢
sequential/lstm/while/LessLess!sequential_lstm_while_placeholder:sequential_lstm_while_less_sequential_lstm_strided_slice_1*
T0*
_output_shapes
: k
sequential/lstm/while/IdentityIdentitysequential/lstm/while/Less:z:0*
T0
*
_output_shapes
: "I
sequential_lstm_while_identity'sequential/lstm/while/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
ÇD
§
E__inference_lstm_cell_1_layer_call_and_return_conditional_losses_9919

inputs

states
states_10
split_readvariableop_resource:	d.
split_1_readvariableop_resource:	+
readvariableop_resource:

identity

identity_1

identity_2¢ReadVariableOp¢ReadVariableOp_1¢ReadVariableOp_2¢ReadVariableOp_3¢split/ReadVariableOp¢split_1/ReadVariableOpE
ones_like/ShapeShapeinputs*
T0*
_output_shapes
:T
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?w
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdG
ones_like_1/ShapeShapestates*
T0*
_output_shapes
:V
ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?~
ones_like_1Fillones_like_1/Shape:output:0ones_like_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿX
mulMulinputsones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdZ
mul_1Mulinputsones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdZ
mul_2Mulinputsones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdZ
mul_3Mulinputsones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :s
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource*
_output_shapes
:	d*
dtype0¢
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*@
_output_shapes.
,:	d:	d:	d:	d*
	num_split\
MatMulMatMulmul:z:0split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
MatMul_1MatMul	mul_1:z:0split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
MatMul_2MatMul	mul_2:z:0split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
MatMul_3MatMul	mul_3:z:0split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : s
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*
_output_shapes	
:*
dtype0
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
::::*
	num_spliti
BiasAddBiasAddMatMul:product:0split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿm
	BiasAdd_1BiasAddMatMul_1:product:0split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿm
	BiasAdd_2BiasAddMatMul_2:product:0split_1:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿm
	BiasAdd_3BiasAddMatMul_3:product:0split_1:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ]
mul_4Mulstatesones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ]
mul_5Mulstatesones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ]
mul_6Mulstatesones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ]
mul_7Mulstatesones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
ReadVariableOpReadVariableOpreadvariableop_resource* 
_output_shapes
:
*
dtype0d
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        f
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       f
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      í
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_maskh
MatMul_4MatMul	mul_4:z:0strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
addAddV2BiasAdd:output:0MatMul_4:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿN
SigmoidSigmoidadd:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿj
ReadVariableOp_1ReadVariableOpreadvariableop_resource* 
_output_shapes
:
*
dtype0f
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ÷
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_maskj
MatMul_5MatMul	mul_5:z:0strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿi
add_1AddV2BiasAdd_1:output:0MatMul_5:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿR
	Sigmoid_1Sigmoid	add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿX
mul_8MulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿj
ReadVariableOp_2ReadVariableOpreadvariableop_resource* 
_output_shapes
:
*
dtype0f
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      h
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ÷
strided_slice_2StridedSliceReadVariableOp_2:value:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_maskj
MatMul_6MatMul	mul_6:z:0strided_slice_2:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿi
add_2AddV2BiasAdd_2:output:0MatMul_6:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿJ
TanhTanh	add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿV
mul_9MulSigmoid:y:0Tanh:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿW
add_3AddV2	mul_8:z:0	mul_9:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿj
ReadVariableOp_3ReadVariableOpreadvariableop_resource* 
_output_shapes
:
*
dtype0f
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"      h
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ÷
strided_slice_3StridedSliceReadVariableOp_3:value:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_maskj
MatMul_7MatMul	mul_7:z:0strided_slice_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿi
add_4AddV2BiasAdd_3:output:0MatMul_7:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿR
	Sigmoid_2Sigmoid	add_4:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿL
Tanh_1Tanh	add_3:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ[
mul_10MulSigmoid_2:y:0
Tanh_1:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ
IdentityIdentity
mul_10:z:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ\

Identity_1Identity
mul_10:z:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ[

Identity_2Identity	add_3:z:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : 2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs:PL
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_namestates:PL
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_namestates
Õ
`
B__inference_dropout_layer_call_and_return_conditional_losses_10609

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
£ø
Ä
E__inference_sequential_layer_call_and_return_conditional_losses_11935

inputs3
 embedding_embedding_lookup_11540:	MdA
.lstm_lstm_cell_1_split_readvariableop_resource:	d?
0lstm_lstm_cell_1_split_1_readvariableop_resource:	<
(lstm_lstm_cell_1_readvariableop_resource:
7
$dense_matmul_readvariableop_resource:	@3
%dense_biasadd_readvariableop_resource:@9
&dense_1_matmul_readvariableop_resource:	@M6
'dense_1_biasadd_readvariableop_resource:	M
identity¢dense/BiasAdd/ReadVariableOp¢dense/MatMul/ReadVariableOp¢dense_1/BiasAdd/ReadVariableOp¢dense_1/MatMul/ReadVariableOp¢embedding/embedding_lookup¢lstm/lstm_cell_1/ReadVariableOp¢!lstm/lstm_cell_1/ReadVariableOp_1¢!lstm/lstm_cell_1/ReadVariableOp_2¢!lstm/lstm_cell_1/ReadVariableOp_3¢%lstm/lstm_cell_1/split/ReadVariableOp¢'lstm/lstm_cell_1/split_1/ReadVariableOp¢
lstm/whileh
embedding/CastCastinputs*

DstT0*

SrcT0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿê
embedding/embedding_lookupResourceGather embedding_embedding_lookup_11540embedding/Cast:y:0*
Tindices0*3
_class)
'%loc:@embedding/embedding_lookup/11540*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd*
dtype0È
#embedding/embedding_lookup/IdentityIdentity#embedding/embedding_lookup:output:0*
T0*3
_class)
'%loc:@embedding/embedding_lookup/11540*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd
%embedding/embedding_lookup/Identity_1Identity,embedding/embedding_lookup/Identity:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿdh

lstm/ShapeShape.embedding/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:b
lstm/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: d
lstm/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:d
lstm/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ê
lstm/strided_sliceStridedSlicelstm/Shape:output:0!lstm/strided_slice/stack:output:0#lstm/strided_slice/stack_1:output:0#lstm/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskV
lstm/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :
lstm/zeros/packedPacklstm/strided_slice:output:0lstm/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:U
lstm/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    |

lstm/zerosFilllstm/zeros/packed:output:0lstm/zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿX
lstm/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :
lstm/zeros_1/packedPacklstm/strided_slice:output:0lstm/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:W
lstm/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm/zeros_1Filllstm/zeros_1/packed:output:0lstm/zeros_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
lstm/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ¨
lstm/transpose	Transpose.embedding/embedding_lookup/Identity_1:output:0lstm/transpose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿdN
lstm/Shape_1Shapelstm/transpose:y:0*
T0*
_output_shapes
:d
lstm/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: f
lstm/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:f
lstm/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ô
lstm/strided_slice_1StridedSlicelstm/Shape_1:output:0#lstm/strided_slice_1/stack:output:0%lstm/strided_slice_1/stack_1:output:0%lstm/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskk
 lstm/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÃ
lstm/TensorArrayV2TensorListReserve)lstm/TensorArrayV2/element_shape:output:0lstm/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
:lstm/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   ï
,lstm/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm/transpose:y:0Clstm/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒd
lstm/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: f
lstm/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:f
lstm/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm/strided_slice_2StridedSlicelstm/transpose:y:0#lstm/strided_slice_2/stack:output:0%lstm/strided_slice_2/stack_1:output:0%lstm/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_maskm
 lstm/lstm_cell_1/ones_like/ShapeShapelstm/strided_slice_2:output:0*
T0*
_output_shapes
:e
 lstm/lstm_cell_1/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?ª
lstm/lstm_cell_1/ones_likeFill)lstm/lstm_cell_1/ones_like/Shape:output:0)lstm/lstm_cell_1/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdc
lstm/lstm_cell_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?£
lstm/lstm_cell_1/dropout/MulMul#lstm/lstm_cell_1/ones_like:output:0'lstm/lstm_cell_1/dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdq
lstm/lstm_cell_1/dropout/ShapeShape#lstm/lstm_cell_1/ones_like:output:0*
T0*
_output_shapes
:®
5lstm/lstm_cell_1/dropout/random_uniform/RandomUniformRandomUniform'lstm/lstm_cell_1/dropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
dtype0l
'lstm/lstm_cell_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=Ù
%lstm/lstm_cell_1/dropout/GreaterEqualGreaterEqual>lstm/lstm_cell_1/dropout/random_uniform/RandomUniform:output:00lstm/lstm_cell_1/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm/lstm_cell_1/dropout/CastCast)lstm/lstm_cell_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm/lstm_cell_1/dropout/Mul_1Mul lstm/lstm_cell_1/dropout/Mul:z:0!lstm/lstm_cell_1/dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿde
 lstm/lstm_cell_1/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?§
lstm/lstm_cell_1/dropout_1/MulMul#lstm/lstm_cell_1/ones_like:output:0)lstm/lstm_cell_1/dropout_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿds
 lstm/lstm_cell_1/dropout_1/ShapeShape#lstm/lstm_cell_1/ones_like:output:0*
T0*
_output_shapes
:²
7lstm/lstm_cell_1/dropout_1/random_uniform/RandomUniformRandomUniform)lstm/lstm_cell_1/dropout_1/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
dtype0n
)lstm/lstm_cell_1/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=ß
'lstm/lstm_cell_1/dropout_1/GreaterEqualGreaterEqual@lstm/lstm_cell_1/dropout_1/random_uniform/RandomUniform:output:02lstm/lstm_cell_1/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm/lstm_cell_1/dropout_1/CastCast+lstm/lstm_cell_1/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd¢
 lstm/lstm_cell_1/dropout_1/Mul_1Mul"lstm/lstm_cell_1/dropout_1/Mul:z:0#lstm/lstm_cell_1/dropout_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿde
 lstm/lstm_cell_1/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?§
lstm/lstm_cell_1/dropout_2/MulMul#lstm/lstm_cell_1/ones_like:output:0)lstm/lstm_cell_1/dropout_2/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿds
 lstm/lstm_cell_1/dropout_2/ShapeShape#lstm/lstm_cell_1/ones_like:output:0*
T0*
_output_shapes
:²
7lstm/lstm_cell_1/dropout_2/random_uniform/RandomUniformRandomUniform)lstm/lstm_cell_1/dropout_2/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
dtype0n
)lstm/lstm_cell_1/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=ß
'lstm/lstm_cell_1/dropout_2/GreaterEqualGreaterEqual@lstm/lstm_cell_1/dropout_2/random_uniform/RandomUniform:output:02lstm/lstm_cell_1/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm/lstm_cell_1/dropout_2/CastCast+lstm/lstm_cell_1/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd¢
 lstm/lstm_cell_1/dropout_2/Mul_1Mul"lstm/lstm_cell_1/dropout_2/Mul:z:0#lstm/lstm_cell_1/dropout_2/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿde
 lstm/lstm_cell_1/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?§
lstm/lstm_cell_1/dropout_3/MulMul#lstm/lstm_cell_1/ones_like:output:0)lstm/lstm_cell_1/dropout_3/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿds
 lstm/lstm_cell_1/dropout_3/ShapeShape#lstm/lstm_cell_1/ones_like:output:0*
T0*
_output_shapes
:²
7lstm/lstm_cell_1/dropout_3/random_uniform/RandomUniformRandomUniform)lstm/lstm_cell_1/dropout_3/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
dtype0n
)lstm/lstm_cell_1/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=ß
'lstm/lstm_cell_1/dropout_3/GreaterEqualGreaterEqual@lstm/lstm_cell_1/dropout_3/random_uniform/RandomUniform:output:02lstm/lstm_cell_1/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm/lstm_cell_1/dropout_3/CastCast+lstm/lstm_cell_1/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd¢
 lstm/lstm_cell_1/dropout_3/Mul_1Mul"lstm/lstm_cell_1/dropout_3/Mul:z:0#lstm/lstm_cell_1/dropout_3/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿde
"lstm/lstm_cell_1/ones_like_1/ShapeShapelstm/zeros:output:0*
T0*
_output_shapes
:g
"lstm/lstm_cell_1/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?±
lstm/lstm_cell_1/ones_like_1Fill+lstm/lstm_cell_1/ones_like_1/Shape:output:0+lstm/lstm_cell_1/ones_like_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
 lstm/lstm_cell_1/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?ª
lstm/lstm_cell_1/dropout_4/MulMul%lstm/lstm_cell_1/ones_like_1:output:0)lstm/lstm_cell_1/dropout_4/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿu
 lstm/lstm_cell_1/dropout_4/ShapeShape%lstm/lstm_cell_1/ones_like_1:output:0*
T0*
_output_shapes
:³
7lstm/lstm_cell_1/dropout_4/random_uniform/RandomUniformRandomUniform)lstm/lstm_cell_1/dropout_4/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0n
)lstm/lstm_cell_1/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=à
'lstm/lstm_cell_1/dropout_4/GreaterEqualGreaterEqual@lstm/lstm_cell_1/dropout_4/random_uniform/RandomUniform:output:02lstm/lstm_cell_1/dropout_4/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm/lstm_cell_1/dropout_4/CastCast+lstm/lstm_cell_1/dropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ£
 lstm/lstm_cell_1/dropout_4/Mul_1Mul"lstm/lstm_cell_1/dropout_4/Mul:z:0#lstm/lstm_cell_1/dropout_4/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
 lstm/lstm_cell_1/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?ª
lstm/lstm_cell_1/dropout_5/MulMul%lstm/lstm_cell_1/ones_like_1:output:0)lstm/lstm_cell_1/dropout_5/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿu
 lstm/lstm_cell_1/dropout_5/ShapeShape%lstm/lstm_cell_1/ones_like_1:output:0*
T0*
_output_shapes
:³
7lstm/lstm_cell_1/dropout_5/random_uniform/RandomUniformRandomUniform)lstm/lstm_cell_1/dropout_5/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0n
)lstm/lstm_cell_1/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=à
'lstm/lstm_cell_1/dropout_5/GreaterEqualGreaterEqual@lstm/lstm_cell_1/dropout_5/random_uniform/RandomUniform:output:02lstm/lstm_cell_1/dropout_5/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm/lstm_cell_1/dropout_5/CastCast+lstm/lstm_cell_1/dropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ£
 lstm/lstm_cell_1/dropout_5/Mul_1Mul"lstm/lstm_cell_1/dropout_5/Mul:z:0#lstm/lstm_cell_1/dropout_5/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
 lstm/lstm_cell_1/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?ª
lstm/lstm_cell_1/dropout_6/MulMul%lstm/lstm_cell_1/ones_like_1:output:0)lstm/lstm_cell_1/dropout_6/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿu
 lstm/lstm_cell_1/dropout_6/ShapeShape%lstm/lstm_cell_1/ones_like_1:output:0*
T0*
_output_shapes
:³
7lstm/lstm_cell_1/dropout_6/random_uniform/RandomUniformRandomUniform)lstm/lstm_cell_1/dropout_6/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0n
)lstm/lstm_cell_1/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=à
'lstm/lstm_cell_1/dropout_6/GreaterEqualGreaterEqual@lstm/lstm_cell_1/dropout_6/random_uniform/RandomUniform:output:02lstm/lstm_cell_1/dropout_6/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm/lstm_cell_1/dropout_6/CastCast+lstm/lstm_cell_1/dropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ£
 lstm/lstm_cell_1/dropout_6/Mul_1Mul"lstm/lstm_cell_1/dropout_6/Mul:z:0#lstm/lstm_cell_1/dropout_6/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
 lstm/lstm_cell_1/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?ª
lstm/lstm_cell_1/dropout_7/MulMul%lstm/lstm_cell_1/ones_like_1:output:0)lstm/lstm_cell_1/dropout_7/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿu
 lstm/lstm_cell_1/dropout_7/ShapeShape%lstm/lstm_cell_1/ones_like_1:output:0*
T0*
_output_shapes
:³
7lstm/lstm_cell_1/dropout_7/random_uniform/RandomUniformRandomUniform)lstm/lstm_cell_1/dropout_7/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0n
)lstm/lstm_cell_1/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=à
'lstm/lstm_cell_1/dropout_7/GreaterEqualGreaterEqual@lstm/lstm_cell_1/dropout_7/random_uniform/RandomUniform:output:02lstm/lstm_cell_1/dropout_7/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm/lstm_cell_1/dropout_7/CastCast+lstm/lstm_cell_1/dropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ£
 lstm/lstm_cell_1/dropout_7/Mul_1Mul"lstm/lstm_cell_1/dropout_7/Mul:z:0#lstm/lstm_cell_1/dropout_7/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm/lstm_cell_1/mulMullstm/strided_slice_2:output:0"lstm/lstm_cell_1/dropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm/lstm_cell_1/mul_1Mullstm/strided_slice_2:output:0$lstm/lstm_cell_1/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm/lstm_cell_1/mul_2Mullstm/strided_slice_2:output:0$lstm/lstm_cell_1/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm/lstm_cell_1/mul_3Mullstm/strided_slice_2:output:0$lstm/lstm_cell_1/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdb
 lstm/lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
%lstm/lstm_cell_1/split/ReadVariableOpReadVariableOp.lstm_lstm_cell_1_split_readvariableop_resource*
_output_shapes
:	d*
dtype0Õ
lstm/lstm_cell_1/splitSplit)lstm/lstm_cell_1/split/split_dim:output:0-lstm/lstm_cell_1/split/ReadVariableOp:value:0*
T0*@
_output_shapes.
,:	d:	d:	d:	d*
	num_split
lstm/lstm_cell_1/MatMulMatMullstm/lstm_cell_1/mul:z:0lstm/lstm_cell_1/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm/lstm_cell_1/MatMul_1MatMullstm/lstm_cell_1/mul_1:z:0lstm/lstm_cell_1/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm/lstm_cell_1/MatMul_2MatMullstm/lstm_cell_1/mul_2:z:0lstm/lstm_cell_1/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm/lstm_cell_1/MatMul_3MatMullstm/lstm_cell_1/mul_3:z:0lstm/lstm_cell_1/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
"lstm/lstm_cell_1/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
'lstm/lstm_cell_1/split_1/ReadVariableOpReadVariableOp0lstm_lstm_cell_1_split_1_readvariableop_resource*
_output_shapes	
:*
dtype0Ë
lstm/lstm_cell_1/split_1Split+lstm/lstm_cell_1/split_1/split_dim:output:0/lstm/lstm_cell_1/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
::::*
	num_split
lstm/lstm_cell_1/BiasAddBiasAdd!lstm/lstm_cell_1/MatMul:product:0!lstm/lstm_cell_1/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
lstm/lstm_cell_1/BiasAdd_1BiasAdd#lstm/lstm_cell_1/MatMul_1:product:0!lstm/lstm_cell_1/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
lstm/lstm_cell_1/BiasAdd_2BiasAdd#lstm/lstm_cell_1/MatMul_2:product:0!lstm/lstm_cell_1/split_1:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
lstm/lstm_cell_1/BiasAdd_3BiasAdd#lstm/lstm_cell_1/MatMul_3:product:0!lstm/lstm_cell_1/split_1:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm/lstm_cell_1/mul_4Mullstm/zeros:output:0$lstm/lstm_cell_1/dropout_4/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm/lstm_cell_1/mul_5Mullstm/zeros:output:0$lstm/lstm_cell_1/dropout_5/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm/lstm_cell_1/mul_6Mullstm/zeros:output:0$lstm/lstm_cell_1/dropout_6/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm/lstm_cell_1/mul_7Mullstm/zeros:output:0$lstm/lstm_cell_1/dropout_7/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm/lstm_cell_1/ReadVariableOpReadVariableOp(lstm_lstm_cell_1_readvariableop_resource* 
_output_shapes
:
*
dtype0u
$lstm/lstm_cell_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        w
&lstm/lstm_cell_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       w
&lstm/lstm_cell_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Â
lstm/lstm_cell_1/strided_sliceStridedSlice'lstm/lstm_cell_1/ReadVariableOp:value:0-lstm/lstm_cell_1/strided_slice/stack:output:0/lstm/lstm_cell_1/strided_slice/stack_1:output:0/lstm/lstm_cell_1/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask
lstm/lstm_cell_1/MatMul_4MatMullstm/lstm_cell_1/mul_4:z:0'lstm/lstm_cell_1/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm/lstm_cell_1/addAddV2!lstm/lstm_cell_1/BiasAdd:output:0#lstm/lstm_cell_1/MatMul_4:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
lstm/lstm_cell_1/SigmoidSigmoidlstm/lstm_cell_1/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!lstm/lstm_cell_1/ReadVariableOp_1ReadVariableOp(lstm_lstm_cell_1_readvariableop_resource* 
_output_shapes
:
*
dtype0w
&lstm/lstm_cell_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       y
(lstm/lstm_cell_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       y
(lstm/lstm_cell_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ì
 lstm/lstm_cell_1/strided_slice_1StridedSlice)lstm/lstm_cell_1/ReadVariableOp_1:value:0/lstm/lstm_cell_1/strided_slice_1/stack:output:01lstm/lstm_cell_1/strided_slice_1/stack_1:output:01lstm/lstm_cell_1/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask
lstm/lstm_cell_1/MatMul_5MatMullstm/lstm_cell_1/mul_5:z:0)lstm/lstm_cell_1/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm/lstm_cell_1/add_1AddV2#lstm/lstm_cell_1/BiasAdd_1:output:0#lstm/lstm_cell_1/MatMul_5:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿt
lstm/lstm_cell_1/Sigmoid_1Sigmoidlstm/lstm_cell_1/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm/lstm_cell_1/mul_8Mullstm/lstm_cell_1/Sigmoid_1:y:0lstm/zeros_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!lstm/lstm_cell_1/ReadVariableOp_2ReadVariableOp(lstm_lstm_cell_1_readvariableop_resource* 
_output_shapes
:
*
dtype0w
&lstm/lstm_cell_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       y
(lstm/lstm_cell_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      y
(lstm/lstm_cell_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ì
 lstm/lstm_cell_1/strided_slice_2StridedSlice)lstm/lstm_cell_1/ReadVariableOp_2:value:0/lstm/lstm_cell_1/strided_slice_2/stack:output:01lstm/lstm_cell_1/strided_slice_2/stack_1:output:01lstm/lstm_cell_1/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask
lstm/lstm_cell_1/MatMul_6MatMullstm/lstm_cell_1/mul_6:z:0)lstm/lstm_cell_1/strided_slice_2:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm/lstm_cell_1/add_2AddV2#lstm/lstm_cell_1/BiasAdd_2:output:0#lstm/lstm_cell_1/MatMul_6:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿl
lstm/lstm_cell_1/TanhTanhlstm/lstm_cell_1/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm/lstm_cell_1/mul_9Mullstm/lstm_cell_1/Sigmoid:y:0lstm/lstm_cell_1/Tanh:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm/lstm_cell_1/add_3AddV2lstm/lstm_cell_1/mul_8:z:0lstm/lstm_cell_1/mul_9:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!lstm/lstm_cell_1/ReadVariableOp_3ReadVariableOp(lstm_lstm_cell_1_readvariableop_resource* 
_output_shapes
:
*
dtype0w
&lstm/lstm_cell_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"      y
(lstm/lstm_cell_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        y
(lstm/lstm_cell_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ì
 lstm/lstm_cell_1/strided_slice_3StridedSlice)lstm/lstm_cell_1/ReadVariableOp_3:value:0/lstm/lstm_cell_1/strided_slice_3/stack:output:01lstm/lstm_cell_1/strided_slice_3/stack_1:output:01lstm/lstm_cell_1/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask
lstm/lstm_cell_1/MatMul_7MatMullstm/lstm_cell_1/mul_7:z:0)lstm/lstm_cell_1/strided_slice_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm/lstm_cell_1/add_4AddV2#lstm/lstm_cell_1/BiasAdd_3:output:0#lstm/lstm_cell_1/MatMul_7:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿt
lstm/lstm_cell_1/Sigmoid_2Sigmoidlstm/lstm_cell_1/add_4:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿn
lstm/lstm_cell_1/Tanh_1Tanhlstm/lstm_cell_1/add_3:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm/lstm_cell_1/mul_10Mullstm/lstm_cell_1/Sigmoid_2:y:0lstm/lstm_cell_1/Tanh_1:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
"lstm/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Ç
lstm/TensorArrayV2_1TensorListReserve+lstm/TensorArrayV2_1/element_shape:output:0lstm/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒK
	lstm/timeConst*
_output_shapes
: *
dtype0*
value	B : h
lstm/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿY
lstm/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ½

lstm/whileWhile lstm/while/loop_counter:output:0&lstm/while/maximum_iterations:output:0lstm/time:output:0lstm/TensorArrayV2_1:handle:0lstm/zeros:output:0lstm/zeros_1:output:0lstm/strided_slice_1:output:0<lstm/TensorArrayUnstack/TensorListFromTensor:output_handle:0.lstm_lstm_cell_1_split_readvariableop_resource0lstm_lstm_cell_1_split_1_readvariableop_resource(lstm_lstm_cell_1_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *!
bodyR
lstm_while_body_11715*!
condR
lstm_while_cond_11714*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 
5lstm/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Û
'lstm/TensorArrayV2Stack/TensorListStackTensorListStacklstm/while:output:3>lstm/TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
element_dtype0m
lstm/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿf
lstm/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: f
lstm/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¡
lstm/strided_slice_3StridedSlice0lstm/TensorArrayV2Stack/TensorListStack:tensor:0#lstm/strided_slice_3/stack:output:0%lstm/strided_slice_3/stack_1:output:0%lstm/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maskj
lstm/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ¯
lstm/transpose_1	Transpose0lstm/TensorArrayV2Stack/TensorListStack:tensor:0lstm/transpose_1/perm:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`
lstm/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	@*
dtype0
dense/MatMulMatMullstm/strided_slice_3:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@~
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@\

dense/ReluReludense/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Z
dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @
dropout/dropout/MulMuldense/Relu:activations:0dropout/dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@]
dropout/dropout/ShapeShapedense/Relu:activations:0*
T0*
_output_shapes
:
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0c
dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?¾
dropout/dropout/GreaterEqualGreaterEqual5dropout/dropout/random_uniform/RandomUniform:output:0'dropout/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
dropout/dropout/CastCast dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
dropout/dropout/Mul_1Muldropout/dropout/Mul:z:0dropout/dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes
:	@M*
dtype0
dense_1/MatMulMatMuldropout/dropout/Mul_1:z:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿM
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes	
:M*
dtype0
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿMg
dense_1/SoftmaxSoftmaxdense_1/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿMi
IdentityIdentitydense_1/Softmax:softmax:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿMÎ
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^embedding/embedding_lookup ^lstm/lstm_cell_1/ReadVariableOp"^lstm/lstm_cell_1/ReadVariableOp_1"^lstm/lstm_cell_1/ReadVariableOp_2"^lstm/lstm_cell_1/ReadVariableOp_3&^lstm/lstm_cell_1/split/ReadVariableOp(^lstm/lstm_cell_1/split_1/ReadVariableOp^lstm/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : : : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp28
embedding/embedding_lookupembedding/embedding_lookup2B
lstm/lstm_cell_1/ReadVariableOplstm/lstm_cell_1/ReadVariableOp2F
!lstm/lstm_cell_1/ReadVariableOp_1!lstm/lstm_cell_1/ReadVariableOp_12F
!lstm/lstm_cell_1/ReadVariableOp_2!lstm/lstm_cell_1/ReadVariableOp_22F
!lstm/lstm_cell_1/ReadVariableOp_3!lstm/lstm_cell_1/ReadVariableOp_32N
%lstm/lstm_cell_1/split/ReadVariableOp%lstm/lstm_cell_1/split/ReadVariableOp2R
'lstm/lstm_cell_1/split_1/ReadVariableOp'lstm/lstm_cell_1/split_1/ReadVariableOp2

lstm/while
lstm/while:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Â
	
__inference__wrapped_model_9802
embedding_input=
*sequential_embedding_embedding_lookup_9542:	MdL
9sequential_lstm_lstm_cell_1_split_readvariableop_resource:	dJ
;sequential_lstm_lstm_cell_1_split_1_readvariableop_resource:	G
3sequential_lstm_lstm_cell_1_readvariableop_resource:
B
/sequential_dense_matmul_readvariableop_resource:	@>
0sequential_dense_biasadd_readvariableop_resource:@D
1sequential_dense_1_matmul_readvariableop_resource:	@MA
2sequential_dense_1_biasadd_readvariableop_resource:	M
identity¢'sequential/dense/BiasAdd/ReadVariableOp¢&sequential/dense/MatMul/ReadVariableOp¢)sequential/dense_1/BiasAdd/ReadVariableOp¢(sequential/dense_1/MatMul/ReadVariableOp¢%sequential/embedding/embedding_lookup¢*sequential/lstm/lstm_cell_1/ReadVariableOp¢,sequential/lstm/lstm_cell_1/ReadVariableOp_1¢,sequential/lstm/lstm_cell_1/ReadVariableOp_2¢,sequential/lstm/lstm_cell_1/ReadVariableOp_3¢0sequential/lstm/lstm_cell_1/split/ReadVariableOp¢2sequential/lstm/lstm_cell_1/split_1/ReadVariableOp¢sequential/lstm/while|
sequential/embedding/CastCastembedding_input*

DstT0*

SrcT0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
%sequential/embedding/embedding_lookupResourceGather*sequential_embedding_embedding_lookup_9542sequential/embedding/Cast:y:0*
Tindices0*=
_class3
1/loc:@sequential/embedding/embedding_lookup/9542*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd*
dtype0è
.sequential/embedding/embedding_lookup/IdentityIdentity.sequential/embedding/embedding_lookup:output:0*
T0*=
_class3
1/loc:@sequential/embedding/embedding_lookup/9542*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd´
0sequential/embedding/embedding_lookup/Identity_1Identity7sequential/embedding/embedding_lookup/Identity:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd~
sequential/lstm/ShapeShape9sequential/embedding/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:m
#sequential/lstm/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%sequential/lstm/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%sequential/lstm/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¡
sequential/lstm/strided_sliceStridedSlicesequential/lstm/Shape:output:0,sequential/lstm/strided_slice/stack:output:0.sequential/lstm/strided_slice/stack_1:output:0.sequential/lstm/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maska
sequential/lstm/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :£
sequential/lstm/zeros/packedPack&sequential/lstm/strided_slice:output:0'sequential/lstm/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:`
sequential/lstm/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
sequential/lstm/zerosFill%sequential/lstm/zeros/packed:output:0$sequential/lstm/zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
 sequential/lstm/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :§
sequential/lstm/zeros_1/packedPack&sequential/lstm/strided_slice:output:0)sequential/lstm/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:b
sequential/lstm/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    £
sequential/lstm/zeros_1Fill'sequential/lstm/zeros_1/packed:output:0&sequential/lstm/zeros_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
sequential/lstm/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          É
sequential/lstm/transpose	Transpose9sequential/embedding/embedding_lookup/Identity_1:output:0'sequential/lstm/transpose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿdd
sequential/lstm/Shape_1Shapesequential/lstm/transpose:y:0*
T0*
_output_shapes
:o
%sequential/lstm/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'sequential/lstm/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'sequential/lstm/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:«
sequential/lstm/strided_slice_1StridedSlice sequential/lstm/Shape_1:output:0.sequential/lstm/strided_slice_1/stack:output:00sequential/lstm/strided_slice_1/stack_1:output:00sequential/lstm/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskv
+sequential/lstm/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿä
sequential/lstm/TensorArrayV2TensorListReserve4sequential/lstm/TensorArrayV2/element_shape:output:0(sequential/lstm/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
Esequential/lstm/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   
7sequential/lstm/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorsequential/lstm/transpose:y:0Nsequential/lstm/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒo
%sequential/lstm/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'sequential/lstm/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'sequential/lstm/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¹
sequential/lstm/strided_slice_2StridedSlicesequential/lstm/transpose:y:0.sequential/lstm/strided_slice_2/stack:output:00sequential/lstm/strided_slice_2/stack_1:output:00sequential/lstm/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_mask
+sequential/lstm/lstm_cell_1/ones_like/ShapeShape(sequential/lstm/strided_slice_2:output:0*
T0*
_output_shapes
:p
+sequential/lstm/lstm_cell_1/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Ë
%sequential/lstm/lstm_cell_1/ones_likeFill4sequential/lstm/lstm_cell_1/ones_like/Shape:output:04sequential/lstm/lstm_cell_1/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd{
-sequential/lstm/lstm_cell_1/ones_like_1/ShapeShapesequential/lstm/zeros:output:0*
T0*
_output_shapes
:r
-sequential/lstm/lstm_cell_1/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Ò
'sequential/lstm/lstm_cell_1/ones_like_1Fill6sequential/lstm/lstm_cell_1/ones_like_1/Shape:output:06sequential/lstm/lstm_cell_1/ones_like_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ²
sequential/lstm/lstm_cell_1/mulMul(sequential/lstm/strided_slice_2:output:0.sequential/lstm/lstm_cell_1/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd´
!sequential/lstm/lstm_cell_1/mul_1Mul(sequential/lstm/strided_slice_2:output:0.sequential/lstm/lstm_cell_1/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd´
!sequential/lstm/lstm_cell_1/mul_2Mul(sequential/lstm/strided_slice_2:output:0.sequential/lstm/lstm_cell_1/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd´
!sequential/lstm/lstm_cell_1/mul_3Mul(sequential/lstm/strided_slice_2:output:0.sequential/lstm/lstm_cell_1/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdm
+sequential/lstm/lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :«
0sequential/lstm/lstm_cell_1/split/ReadVariableOpReadVariableOp9sequential_lstm_lstm_cell_1_split_readvariableop_resource*
_output_shapes
:	d*
dtype0ö
!sequential/lstm/lstm_cell_1/splitSplit4sequential/lstm/lstm_cell_1/split/split_dim:output:08sequential/lstm/lstm_cell_1/split/ReadVariableOp:value:0*
T0*@
_output_shapes.
,:	d:	d:	d:	d*
	num_split°
"sequential/lstm/lstm_cell_1/MatMulMatMul#sequential/lstm/lstm_cell_1/mul:z:0*sequential/lstm/lstm_cell_1/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´
$sequential/lstm/lstm_cell_1/MatMul_1MatMul%sequential/lstm/lstm_cell_1/mul_1:z:0*sequential/lstm/lstm_cell_1/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´
$sequential/lstm/lstm_cell_1/MatMul_2MatMul%sequential/lstm/lstm_cell_1/mul_2:z:0*sequential/lstm/lstm_cell_1/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´
$sequential/lstm/lstm_cell_1/MatMul_3MatMul%sequential/lstm/lstm_cell_1/mul_3:z:0*sequential/lstm/lstm_cell_1/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿo
-sequential/lstm/lstm_cell_1/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : «
2sequential/lstm/lstm_cell_1/split_1/ReadVariableOpReadVariableOp;sequential_lstm_lstm_cell_1_split_1_readvariableop_resource*
_output_shapes	
:*
dtype0ì
#sequential/lstm/lstm_cell_1/split_1Split6sequential/lstm/lstm_cell_1/split_1/split_dim:output:0:sequential/lstm/lstm_cell_1/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
::::*
	num_split½
#sequential/lstm/lstm_cell_1/BiasAddBiasAdd,sequential/lstm/lstm_cell_1/MatMul:product:0,sequential/lstm/lstm_cell_1/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÁ
%sequential/lstm/lstm_cell_1/BiasAdd_1BiasAdd.sequential/lstm/lstm_cell_1/MatMul_1:product:0,sequential/lstm/lstm_cell_1/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÁ
%sequential/lstm/lstm_cell_1/BiasAdd_2BiasAdd.sequential/lstm/lstm_cell_1/MatMul_2:product:0,sequential/lstm/lstm_cell_1/split_1:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÁ
%sequential/lstm/lstm_cell_1/BiasAdd_3BiasAdd.sequential/lstm/lstm_cell_1/MatMul_3:product:0,sequential/lstm/lstm_cell_1/split_1:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ­
!sequential/lstm/lstm_cell_1/mul_4Mulsequential/lstm/zeros:output:00sequential/lstm/lstm_cell_1/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ­
!sequential/lstm/lstm_cell_1/mul_5Mulsequential/lstm/zeros:output:00sequential/lstm/lstm_cell_1/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ­
!sequential/lstm/lstm_cell_1/mul_6Mulsequential/lstm/zeros:output:00sequential/lstm/lstm_cell_1/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ­
!sequential/lstm/lstm_cell_1/mul_7Mulsequential/lstm/zeros:output:00sequential/lstm/lstm_cell_1/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
*sequential/lstm/lstm_cell_1/ReadVariableOpReadVariableOp3sequential_lstm_lstm_cell_1_readvariableop_resource* 
_output_shapes
:
*
dtype0
/sequential/lstm/lstm_cell_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        
1sequential/lstm/lstm_cell_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       
1sequential/lstm/lstm_cell_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ù
)sequential/lstm/lstm_cell_1/strided_sliceStridedSlice2sequential/lstm/lstm_cell_1/ReadVariableOp:value:08sequential/lstm/lstm_cell_1/strided_slice/stack:output:0:sequential/lstm/lstm_cell_1/strided_slice/stack_1:output:0:sequential/lstm/lstm_cell_1/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask¼
$sequential/lstm/lstm_cell_1/MatMul_4MatMul%sequential/lstm/lstm_cell_1/mul_4:z:02sequential/lstm/lstm_cell_1/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¹
sequential/lstm/lstm_cell_1/addAddV2,sequential/lstm/lstm_cell_1/BiasAdd:output:0.sequential/lstm/lstm_cell_1/MatMul_4:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
#sequential/lstm/lstm_cell_1/SigmoidSigmoid#sequential/lstm/lstm_cell_1/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¢
,sequential/lstm/lstm_cell_1/ReadVariableOp_1ReadVariableOp3sequential_lstm_lstm_cell_1_readvariableop_resource* 
_output_shapes
:
*
dtype0
1sequential/lstm/lstm_cell_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       
3sequential/lstm/lstm_cell_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       
3sequential/lstm/lstm_cell_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
+sequential/lstm/lstm_cell_1/strided_slice_1StridedSlice4sequential/lstm/lstm_cell_1/ReadVariableOp_1:value:0:sequential/lstm/lstm_cell_1/strided_slice_1/stack:output:0<sequential/lstm/lstm_cell_1/strided_slice_1/stack_1:output:0<sequential/lstm/lstm_cell_1/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask¾
$sequential/lstm/lstm_cell_1/MatMul_5MatMul%sequential/lstm/lstm_cell_1/mul_5:z:04sequential/lstm/lstm_cell_1/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ½
!sequential/lstm/lstm_cell_1/add_1AddV2.sequential/lstm/lstm_cell_1/BiasAdd_1:output:0.sequential/lstm/lstm_cell_1/MatMul_5:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%sequential/lstm/lstm_cell_1/Sigmoid_1Sigmoid%sequential/lstm/lstm_cell_1/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¨
!sequential/lstm/lstm_cell_1/mul_8Mul)sequential/lstm/lstm_cell_1/Sigmoid_1:y:0 sequential/lstm/zeros_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¢
,sequential/lstm/lstm_cell_1/ReadVariableOp_2ReadVariableOp3sequential_lstm_lstm_cell_1_readvariableop_resource* 
_output_shapes
:
*
dtype0
1sequential/lstm/lstm_cell_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       
3sequential/lstm/lstm_cell_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      
3sequential/lstm/lstm_cell_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
+sequential/lstm/lstm_cell_1/strided_slice_2StridedSlice4sequential/lstm/lstm_cell_1/ReadVariableOp_2:value:0:sequential/lstm/lstm_cell_1/strided_slice_2/stack:output:0<sequential/lstm/lstm_cell_1/strided_slice_2/stack_1:output:0<sequential/lstm/lstm_cell_1/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask¾
$sequential/lstm/lstm_cell_1/MatMul_6MatMul%sequential/lstm/lstm_cell_1/mul_6:z:04sequential/lstm/lstm_cell_1/strided_slice_2:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ½
!sequential/lstm/lstm_cell_1/add_2AddV2.sequential/lstm/lstm_cell_1/BiasAdd_2:output:0.sequential/lstm/lstm_cell_1/MatMul_6:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 sequential/lstm/lstm_cell_1/TanhTanh%sequential/lstm/lstm_cell_1/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿª
!sequential/lstm/lstm_cell_1/mul_9Mul'sequential/lstm/lstm_cell_1/Sigmoid:y:0$sequential/lstm/lstm_cell_1/Tanh:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ«
!sequential/lstm/lstm_cell_1/add_3AddV2%sequential/lstm/lstm_cell_1/mul_8:z:0%sequential/lstm/lstm_cell_1/mul_9:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¢
,sequential/lstm/lstm_cell_1/ReadVariableOp_3ReadVariableOp3sequential_lstm_lstm_cell_1_readvariableop_resource* 
_output_shapes
:
*
dtype0
1sequential/lstm/lstm_cell_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"      
3sequential/lstm/lstm_cell_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        
3sequential/lstm/lstm_cell_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
+sequential/lstm/lstm_cell_1/strided_slice_3StridedSlice4sequential/lstm/lstm_cell_1/ReadVariableOp_3:value:0:sequential/lstm/lstm_cell_1/strided_slice_3/stack:output:0<sequential/lstm/lstm_cell_1/strided_slice_3/stack_1:output:0<sequential/lstm/lstm_cell_1/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask¾
$sequential/lstm/lstm_cell_1/MatMul_7MatMul%sequential/lstm/lstm_cell_1/mul_7:z:04sequential/lstm/lstm_cell_1/strided_slice_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ½
!sequential/lstm/lstm_cell_1/add_4AddV2.sequential/lstm/lstm_cell_1/BiasAdd_3:output:0.sequential/lstm/lstm_cell_1/MatMul_7:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%sequential/lstm/lstm_cell_1/Sigmoid_2Sigmoid%sequential/lstm/lstm_cell_1/add_4:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"sequential/lstm/lstm_cell_1/Tanh_1Tanh%sequential/lstm/lstm_cell_1/add_3:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¯
"sequential/lstm/lstm_cell_1/mul_10Mul)sequential/lstm/lstm_cell_1/Sigmoid_2:y:0&sequential/lstm/lstm_cell_1/Tanh_1:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ~
-sequential/lstm/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   è
sequential/lstm/TensorArrayV2_1TensorListReserve6sequential/lstm/TensorArrayV2_1/element_shape:output:0(sequential/lstm/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒV
sequential/lstm/timeConst*
_output_shapes
: *
dtype0*
value	B : s
(sequential/lstm/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿd
"sequential/lstm/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Õ
sequential/lstm/whileWhile+sequential/lstm/while/loop_counter:output:01sequential/lstm/while/maximum_iterations:output:0sequential/lstm/time:output:0(sequential/lstm/TensorArrayV2_1:handle:0sequential/lstm/zeros:output:0 sequential/lstm/zeros_1:output:0(sequential/lstm/strided_slice_1:output:0Gsequential/lstm/TensorArrayUnstack/TensorListFromTensor:output_handle:09sequential_lstm_lstm_cell_1_split_readvariableop_resource;sequential_lstm_lstm_cell_1_split_1_readvariableop_resource3sequential_lstm_lstm_cell_1_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *+
body#R!
sequential_lstm_while_body_9653*+
cond#R!
sequential_lstm_while_cond_9652*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 
@sequential/lstm/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ü
2sequential/lstm/TensorArrayV2Stack/TensorListStackTensorListStacksequential/lstm/while:output:3Isequential/lstm/TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
element_dtype0x
%sequential/lstm/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿq
'sequential/lstm/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: q
'sequential/lstm/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ø
sequential/lstm/strided_slice_3StridedSlice;sequential/lstm/TensorArrayV2Stack/TensorListStack:tensor:0.sequential/lstm/strided_slice_3/stack:output:00sequential/lstm/strided_slice_3/stack_1:output:00sequential/lstm/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_masku
 sequential/lstm/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ð
sequential/lstm/transpose_1	Transpose;sequential/lstm/TensorArrayV2Stack/TensorListStack:tensor:0)sequential/lstm/transpose_1/perm:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿk
sequential/lstm/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    
&sequential/dense/MatMul/ReadVariableOpReadVariableOp/sequential_dense_matmul_readvariableop_resource*
_output_shapes
:	@*
dtype0­
sequential/dense/MatMulMatMul(sequential/lstm/strided_slice_3:output:0.sequential/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
'sequential/dense/BiasAdd/ReadVariableOpReadVariableOp0sequential_dense_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0©
sequential/dense/BiasAddBiasAdd!sequential/dense/MatMul:product:0/sequential/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@r
sequential/dense/ReluRelu!sequential/dense/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@~
sequential/dropout/IdentityIdentity#sequential/dense/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
(sequential/dense_1/MatMul/ReadVariableOpReadVariableOp1sequential_dense_1_matmul_readvariableop_resource*
_output_shapes
:	@M*
dtype0®
sequential/dense_1/MatMulMatMul$sequential/dropout/Identity:output:00sequential/dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿM
)sequential/dense_1/BiasAdd/ReadVariableOpReadVariableOp2sequential_dense_1_biasadd_readvariableop_resource*
_output_shapes	
:M*
dtype0°
sequential/dense_1/BiasAddBiasAdd#sequential/dense_1/MatMul:product:01sequential/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿM}
sequential/dense_1/SoftmaxSoftmax#sequential/dense_1/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿMt
IdentityIdentity$sequential/dense_1/Softmax:softmax:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿMÒ
NoOpNoOp(^sequential/dense/BiasAdd/ReadVariableOp'^sequential/dense/MatMul/ReadVariableOp*^sequential/dense_1/BiasAdd/ReadVariableOp)^sequential/dense_1/MatMul/ReadVariableOp&^sequential/embedding/embedding_lookup+^sequential/lstm/lstm_cell_1/ReadVariableOp-^sequential/lstm/lstm_cell_1/ReadVariableOp_1-^sequential/lstm/lstm_cell_1/ReadVariableOp_2-^sequential/lstm/lstm_cell_1/ReadVariableOp_31^sequential/lstm/lstm_cell_1/split/ReadVariableOp3^sequential/lstm/lstm_cell_1/split_1/ReadVariableOp^sequential/lstm/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : : : : : 2R
'sequential/dense/BiasAdd/ReadVariableOp'sequential/dense/BiasAdd/ReadVariableOp2P
&sequential/dense/MatMul/ReadVariableOp&sequential/dense/MatMul/ReadVariableOp2V
)sequential/dense_1/BiasAdd/ReadVariableOp)sequential/dense_1/BiasAdd/ReadVariableOp2T
(sequential/dense_1/MatMul/ReadVariableOp(sequential/dense_1/MatMul/ReadVariableOp2N
%sequential/embedding/embedding_lookup%sequential/embedding/embedding_lookup2X
*sequential/lstm/lstm_cell_1/ReadVariableOp*sequential/lstm/lstm_cell_1/ReadVariableOp2\
,sequential/lstm/lstm_cell_1/ReadVariableOp_1,sequential/lstm/lstm_cell_1/ReadVariableOp_12\
,sequential/lstm/lstm_cell_1/ReadVariableOp_2,sequential/lstm/lstm_cell_1/ReadVariableOp_22\
,sequential/lstm/lstm_cell_1/ReadVariableOp_3,sequential/lstm/lstm_cell_1/ReadVariableOp_32d
0sequential/lstm/lstm_cell_1/split/ReadVariableOp0sequential/lstm/lstm_cell_1/split/ReadVariableOp2h
2sequential/lstm/lstm_cell_1/split_1/ReadVariableOp2sequential/lstm/lstm_cell_1/split_1/ReadVariableOp2.
sequential/lstm/whilesequential/lstm/while:a ]
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
)
_user_specified_nameembedding_input
Ó
È
sequential_lstm_while_body_9653<
8sequential_lstm_while_sequential_lstm_while_loop_counterB
>sequential_lstm_while_sequential_lstm_while_maximum_iterations%
!sequential_lstm_while_placeholder'
#sequential_lstm_while_placeholder_1'
#sequential_lstm_while_placeholder_2'
#sequential_lstm_while_placeholder_3;
7sequential_lstm_while_sequential_lstm_strided_slice_1_0w
ssequential_lstm_while_tensorarrayv2read_tensorlistgetitem_sequential_lstm_tensorarrayunstack_tensorlistfromtensor_0T
Asequential_lstm_while_lstm_cell_1_split_readvariableop_resource_0:	dR
Csequential_lstm_while_lstm_cell_1_split_1_readvariableop_resource_0:	O
;sequential_lstm_while_lstm_cell_1_readvariableop_resource_0:
"
sequential_lstm_while_identity$
 sequential_lstm_while_identity_1$
 sequential_lstm_while_identity_2$
 sequential_lstm_while_identity_3$
 sequential_lstm_while_identity_4$
 sequential_lstm_while_identity_59
5sequential_lstm_while_sequential_lstm_strided_slice_1u
qsequential_lstm_while_tensorarrayv2read_tensorlistgetitem_sequential_lstm_tensorarrayunstack_tensorlistfromtensorR
?sequential_lstm_while_lstm_cell_1_split_readvariableop_resource:	dP
Asequential_lstm_while_lstm_cell_1_split_1_readvariableop_resource:	M
9sequential_lstm_while_lstm_cell_1_readvariableop_resource:
¢0sequential/lstm/while/lstm_cell_1/ReadVariableOp¢2sequential/lstm/while/lstm_cell_1/ReadVariableOp_1¢2sequential/lstm/while/lstm_cell_1/ReadVariableOp_2¢2sequential/lstm/while/lstm_cell_1/ReadVariableOp_3¢6sequential/lstm/while/lstm_cell_1/split/ReadVariableOp¢8sequential/lstm/while/lstm_cell_1/split_1/ReadVariableOp
Gsequential/lstm/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   ö
9sequential/lstm/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemssequential_lstm_while_tensorarrayv2read_tensorlistgetitem_sequential_lstm_tensorarrayunstack_tensorlistfromtensor_0!sequential_lstm_while_placeholderPsequential/lstm/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype0¡
1sequential/lstm/while/lstm_cell_1/ones_like/ShapeShape@sequential/lstm/while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:v
1sequential/lstm/while/lstm_cell_1/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Ý
+sequential/lstm/while/lstm_cell_1/ones_likeFill:sequential/lstm/while/lstm_cell_1/ones_like/Shape:output:0:sequential/lstm/while/lstm_cell_1/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
3sequential/lstm/while/lstm_cell_1/ones_like_1/ShapeShape#sequential_lstm_while_placeholder_2*
T0*
_output_shapes
:x
3sequential/lstm/while/lstm_cell_1/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?ä
-sequential/lstm/while/lstm_cell_1/ones_like_1Fill<sequential/lstm/while/lstm_cell_1/ones_like_1/Shape:output:0<sequential/lstm/while/lstm_cell_1/ones_like_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÖ
%sequential/lstm/while/lstm_cell_1/mulMul@sequential/lstm/while/TensorArrayV2Read/TensorListGetItem:item:04sequential/lstm/while/lstm_cell_1/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdØ
'sequential/lstm/while/lstm_cell_1/mul_1Mul@sequential/lstm/while/TensorArrayV2Read/TensorListGetItem:item:04sequential/lstm/while/lstm_cell_1/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdØ
'sequential/lstm/while/lstm_cell_1/mul_2Mul@sequential/lstm/while/TensorArrayV2Read/TensorListGetItem:item:04sequential/lstm/while/lstm_cell_1/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdØ
'sequential/lstm/while/lstm_cell_1/mul_3Mul@sequential/lstm/while/TensorArrayV2Read/TensorListGetItem:item:04sequential/lstm/while/lstm_cell_1/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿds
1sequential/lstm/while/lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¹
6sequential/lstm/while/lstm_cell_1/split/ReadVariableOpReadVariableOpAsequential_lstm_while_lstm_cell_1_split_readvariableop_resource_0*
_output_shapes
:	d*
dtype0
'sequential/lstm/while/lstm_cell_1/splitSplit:sequential/lstm/while/lstm_cell_1/split/split_dim:output:0>sequential/lstm/while/lstm_cell_1/split/ReadVariableOp:value:0*
T0*@
_output_shapes.
,:	d:	d:	d:	d*
	num_splitÂ
(sequential/lstm/while/lstm_cell_1/MatMulMatMul)sequential/lstm/while/lstm_cell_1/mul:z:00sequential/lstm/while/lstm_cell_1/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÆ
*sequential/lstm/while/lstm_cell_1/MatMul_1MatMul+sequential/lstm/while/lstm_cell_1/mul_1:z:00sequential/lstm/while/lstm_cell_1/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÆ
*sequential/lstm/while/lstm_cell_1/MatMul_2MatMul+sequential/lstm/while/lstm_cell_1/mul_2:z:00sequential/lstm/while/lstm_cell_1/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÆ
*sequential/lstm/while/lstm_cell_1/MatMul_3MatMul+sequential/lstm/while/lstm_cell_1/mul_3:z:00sequential/lstm/while/lstm_cell_1/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿu
3sequential/lstm/while/lstm_cell_1/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : ¹
8sequential/lstm/while/lstm_cell_1/split_1/ReadVariableOpReadVariableOpCsequential_lstm_while_lstm_cell_1_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype0þ
)sequential/lstm/while/lstm_cell_1/split_1Split<sequential/lstm/while/lstm_cell_1/split_1/split_dim:output:0@sequential/lstm/while/lstm_cell_1/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
::::*
	num_splitÏ
)sequential/lstm/while/lstm_cell_1/BiasAddBiasAdd2sequential/lstm/while/lstm_cell_1/MatMul:product:02sequential/lstm/while/lstm_cell_1/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÓ
+sequential/lstm/while/lstm_cell_1/BiasAdd_1BiasAdd4sequential/lstm/while/lstm_cell_1/MatMul_1:product:02sequential/lstm/while/lstm_cell_1/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÓ
+sequential/lstm/while/lstm_cell_1/BiasAdd_2BiasAdd4sequential/lstm/while/lstm_cell_1/MatMul_2:product:02sequential/lstm/while/lstm_cell_1/split_1:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÓ
+sequential/lstm/while/lstm_cell_1/BiasAdd_3BiasAdd4sequential/lstm/while/lstm_cell_1/MatMul_3:product:02sequential/lstm/while/lstm_cell_1/split_1:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾
'sequential/lstm/while/lstm_cell_1/mul_4Mul#sequential_lstm_while_placeholder_26sequential/lstm/while/lstm_cell_1/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾
'sequential/lstm/while/lstm_cell_1/mul_5Mul#sequential_lstm_while_placeholder_26sequential/lstm/while/lstm_cell_1/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾
'sequential/lstm/while/lstm_cell_1/mul_6Mul#sequential_lstm_while_placeholder_26sequential/lstm/while/lstm_cell_1/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾
'sequential/lstm/while/lstm_cell_1/mul_7Mul#sequential_lstm_while_placeholder_26sequential/lstm/while/lstm_cell_1/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ®
0sequential/lstm/while/lstm_cell_1/ReadVariableOpReadVariableOp;sequential_lstm_while_lstm_cell_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0
5sequential/lstm/while/lstm_cell_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        
7sequential/lstm/while/lstm_cell_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       
7sequential/lstm/while/lstm_cell_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
/sequential/lstm/while/lstm_cell_1/strided_sliceStridedSlice8sequential/lstm/while/lstm_cell_1/ReadVariableOp:value:0>sequential/lstm/while/lstm_cell_1/strided_slice/stack:output:0@sequential/lstm/while/lstm_cell_1/strided_slice/stack_1:output:0@sequential/lstm/while/lstm_cell_1/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_maskÎ
*sequential/lstm/while/lstm_cell_1/MatMul_4MatMul+sequential/lstm/while/lstm_cell_1/mul_4:z:08sequential/lstm/while/lstm_cell_1/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿË
%sequential/lstm/while/lstm_cell_1/addAddV22sequential/lstm/while/lstm_cell_1/BiasAdd:output:04sequential/lstm/while/lstm_cell_1/MatMul_4:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)sequential/lstm/while/lstm_cell_1/SigmoidSigmoid)sequential/lstm/while/lstm_cell_1/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ°
2sequential/lstm/while/lstm_cell_1/ReadVariableOp_1ReadVariableOp;sequential_lstm_while_lstm_cell_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0
7sequential/lstm/while/lstm_cell_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       
9sequential/lstm/while/lstm_cell_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       
9sequential/lstm/while/lstm_cell_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ¡
1sequential/lstm/while/lstm_cell_1/strided_slice_1StridedSlice:sequential/lstm/while/lstm_cell_1/ReadVariableOp_1:value:0@sequential/lstm/while/lstm_cell_1/strided_slice_1/stack:output:0Bsequential/lstm/while/lstm_cell_1/strided_slice_1/stack_1:output:0Bsequential/lstm/while/lstm_cell_1/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_maskÐ
*sequential/lstm/while/lstm_cell_1/MatMul_5MatMul+sequential/lstm/while/lstm_cell_1/mul_5:z:0:sequential/lstm/while/lstm_cell_1/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÏ
'sequential/lstm/while/lstm_cell_1/add_1AddV24sequential/lstm/while/lstm_cell_1/BiasAdd_1:output:04sequential/lstm/while/lstm_cell_1/MatMul_5:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
+sequential/lstm/while/lstm_cell_1/Sigmoid_1Sigmoid+sequential/lstm/while/lstm_cell_1/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ·
'sequential/lstm/while/lstm_cell_1/mul_8Mul/sequential/lstm/while/lstm_cell_1/Sigmoid_1:y:0#sequential_lstm_while_placeholder_3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ°
2sequential/lstm/while/lstm_cell_1/ReadVariableOp_2ReadVariableOp;sequential_lstm_while_lstm_cell_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0
7sequential/lstm/while/lstm_cell_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       
9sequential/lstm/while/lstm_cell_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      
9sequential/lstm/while/lstm_cell_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ¡
1sequential/lstm/while/lstm_cell_1/strided_slice_2StridedSlice:sequential/lstm/while/lstm_cell_1/ReadVariableOp_2:value:0@sequential/lstm/while/lstm_cell_1/strided_slice_2/stack:output:0Bsequential/lstm/while/lstm_cell_1/strided_slice_2/stack_1:output:0Bsequential/lstm/while/lstm_cell_1/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_maskÐ
*sequential/lstm/while/lstm_cell_1/MatMul_6MatMul+sequential/lstm/while/lstm_cell_1/mul_6:z:0:sequential/lstm/while/lstm_cell_1/strided_slice_2:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÏ
'sequential/lstm/while/lstm_cell_1/add_2AddV24sequential/lstm/while/lstm_cell_1/BiasAdd_2:output:04sequential/lstm/while/lstm_cell_1/MatMul_6:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
&sequential/lstm/while/lstm_cell_1/TanhTanh+sequential/lstm/while/lstm_cell_1/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¼
'sequential/lstm/while/lstm_cell_1/mul_9Mul-sequential/lstm/while/lstm_cell_1/Sigmoid:y:0*sequential/lstm/while/lstm_cell_1/Tanh:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ½
'sequential/lstm/while/lstm_cell_1/add_3AddV2+sequential/lstm/while/lstm_cell_1/mul_8:z:0+sequential/lstm/while/lstm_cell_1/mul_9:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ°
2sequential/lstm/while/lstm_cell_1/ReadVariableOp_3ReadVariableOp;sequential_lstm_while_lstm_cell_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0
7sequential/lstm/while/lstm_cell_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"      
9sequential/lstm/while/lstm_cell_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        
9sequential/lstm/while/lstm_cell_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ¡
1sequential/lstm/while/lstm_cell_1/strided_slice_3StridedSlice:sequential/lstm/while/lstm_cell_1/ReadVariableOp_3:value:0@sequential/lstm/while/lstm_cell_1/strided_slice_3/stack:output:0Bsequential/lstm/while/lstm_cell_1/strided_slice_3/stack_1:output:0Bsequential/lstm/while/lstm_cell_1/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_maskÐ
*sequential/lstm/while/lstm_cell_1/MatMul_7MatMul+sequential/lstm/while/lstm_cell_1/mul_7:z:0:sequential/lstm/while/lstm_cell_1/strided_slice_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÏ
'sequential/lstm/while/lstm_cell_1/add_4AddV24sequential/lstm/while/lstm_cell_1/BiasAdd_3:output:04sequential/lstm/while/lstm_cell_1/MatMul_7:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
+sequential/lstm/while/lstm_cell_1/Sigmoid_2Sigmoid+sequential/lstm/while/lstm_cell_1/add_4:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(sequential/lstm/while/lstm_cell_1/Tanh_1Tanh+sequential/lstm/while/lstm_cell_1/add_3:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÁ
(sequential/lstm/while/lstm_cell_1/mul_10Mul/sequential/lstm/while/lstm_cell_1/Sigmoid_2:y:0,sequential/lstm/while/lstm_cell_1/Tanh_1:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
:sequential/lstm/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem#sequential_lstm_while_placeholder_1!sequential_lstm_while_placeholder,sequential/lstm/while/lstm_cell_1/mul_10:z:0*
_output_shapes
: *
element_dtype0:éèÒ]
sequential/lstm/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
sequential/lstm/while/addAddV2!sequential_lstm_while_placeholder$sequential/lstm/while/add/y:output:0*
T0*
_output_shapes
: _
sequential/lstm/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :§
sequential/lstm/while/add_1AddV28sequential_lstm_while_sequential_lstm_while_loop_counter&sequential/lstm/while/add_1/y:output:0*
T0*
_output_shapes
: 
sequential/lstm/while/IdentityIdentitysequential/lstm/while/add_1:z:0^sequential/lstm/while/NoOp*
T0*
_output_shapes
: ª
 sequential/lstm/while/Identity_1Identity>sequential_lstm_while_sequential_lstm_while_maximum_iterations^sequential/lstm/while/NoOp*
T0*
_output_shapes
: 
 sequential/lstm/while/Identity_2Identitysequential/lstm/while/add:z:0^sequential/lstm/while/NoOp*
T0*
_output_shapes
: É
 sequential/lstm/while/Identity_3IdentityJsequential/lstm/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^sequential/lstm/while/NoOp*
T0*
_output_shapes
: :éèÒª
 sequential/lstm/while/Identity_4Identity,sequential/lstm/while/lstm_cell_1/mul_10:z:0^sequential/lstm/while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ©
 sequential/lstm/while/Identity_5Identity+sequential/lstm/while/lstm_cell_1/add_3:z:0^sequential/lstm/while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¢
sequential/lstm/while/NoOpNoOp1^sequential/lstm/while/lstm_cell_1/ReadVariableOp3^sequential/lstm/while/lstm_cell_1/ReadVariableOp_13^sequential/lstm/while/lstm_cell_1/ReadVariableOp_23^sequential/lstm/while/lstm_cell_1/ReadVariableOp_37^sequential/lstm/while/lstm_cell_1/split/ReadVariableOp9^sequential/lstm/while/lstm_cell_1/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "I
sequential_lstm_while_identity'sequential/lstm/while/Identity:output:0"M
 sequential_lstm_while_identity_1)sequential/lstm/while/Identity_1:output:0"M
 sequential_lstm_while_identity_2)sequential/lstm/while/Identity_2:output:0"M
 sequential_lstm_while_identity_3)sequential/lstm/while/Identity_3:output:0"M
 sequential_lstm_while_identity_4)sequential/lstm/while/Identity_4:output:0"M
 sequential_lstm_while_identity_5)sequential/lstm/while/Identity_5:output:0"x
9sequential_lstm_while_lstm_cell_1_readvariableop_resource;sequential_lstm_while_lstm_cell_1_readvariableop_resource_0"
Asequential_lstm_while_lstm_cell_1_split_1_readvariableop_resourceCsequential_lstm_while_lstm_cell_1_split_1_readvariableop_resource_0"
?sequential_lstm_while_lstm_cell_1_split_readvariableop_resourceAsequential_lstm_while_lstm_cell_1_split_readvariableop_resource_0"p
5sequential_lstm_while_sequential_lstm_strided_slice_17sequential_lstm_while_sequential_lstm_strided_slice_1_0"è
qsequential_lstm_while_tensorarrayv2read_tensorlistgetitem_sequential_lstm_tensorarrayunstack_tensorlistfromtensorssequential_lstm_while_tensorarrayv2read_tensorlistgetitem_sequential_lstm_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2d
0sequential/lstm/while/lstm_cell_1/ReadVariableOp0sequential/lstm/while/lstm_cell_1/ReadVariableOp2h
2sequential/lstm/while/lstm_cell_1/ReadVariableOp_12sequential/lstm/while/lstm_cell_1/ReadVariableOp_12h
2sequential/lstm/while/lstm_cell_1/ReadVariableOp_22sequential/lstm/while/lstm_cell_1/ReadVariableOp_22h
2sequential/lstm/while/lstm_cell_1/ReadVariableOp_32sequential/lstm/while/lstm_cell_1/ReadVariableOp_32p
6sequential/lstm/while/lstm_cell_1/split/ReadVariableOp6sequential/lstm/while/lstm_cell_1/split/ReadVariableOp2t
8sequential/lstm/while/lstm_cell_1/split_1/ReadVariableOp8sequential/lstm/while/lstm_cell_1/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
ÕÂ
	
while_body_10877
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
1while_lstm_cell_1_split_readvariableop_resource_0:	dB
3while_lstm_cell_1_split_1_readvariableop_resource_0:	?
+while_lstm_cell_1_readvariableop_resource_0:

while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
/while_lstm_cell_1_split_readvariableop_resource:	d@
1while_lstm_cell_1_split_1_readvariableop_resource:	=
)while_lstm_cell_1_readvariableop_resource:
¢ while/lstm_cell_1/ReadVariableOp¢"while/lstm_cell_1/ReadVariableOp_1¢"while/lstm_cell_1/ReadVariableOp_2¢"while/lstm_cell_1/ReadVariableOp_3¢&while/lstm_cell_1/split/ReadVariableOp¢(while/lstm_cell_1/split_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype0
!while/lstm_cell_1/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:f
!while/lstm_cell_1/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?­
while/lstm_cell_1/ones_likeFill*while/lstm_cell_1/ones_like/Shape:output:0*while/lstm_cell_1/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd
while/lstm_cell_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?¦
while/lstm_cell_1/dropout/MulMul$while/lstm_cell_1/ones_like:output:0(while/lstm_cell_1/dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿds
while/lstm_cell_1/dropout/ShapeShape$while/lstm_cell_1/ones_like:output:0*
T0*
_output_shapes
:°
6while/lstm_cell_1/dropout/random_uniform/RandomUniformRandomUniform(while/lstm_cell_1/dropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
dtype0m
(while/lstm_cell_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=Ü
&while/lstm_cell_1/dropout/GreaterEqualGreaterEqual?while/lstm_cell_1/dropout/random_uniform/RandomUniform:output:01while/lstm_cell_1/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_1/dropout/CastCast*while/lstm_cell_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_1/dropout/Mul_1Mul!while/lstm_cell_1/dropout/Mul:z:0"while/lstm_cell_1/dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdf
!while/lstm_cell_1/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?ª
while/lstm_cell_1/dropout_1/MulMul$while/lstm_cell_1/ones_like:output:0*while/lstm_cell_1/dropout_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdu
!while/lstm_cell_1/dropout_1/ShapeShape$while/lstm_cell_1/ones_like:output:0*
T0*
_output_shapes
:´
8while/lstm_cell_1/dropout_1/random_uniform/RandomUniformRandomUniform*while/lstm_cell_1/dropout_1/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
dtype0o
*while/lstm_cell_1/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=â
(while/lstm_cell_1/dropout_1/GreaterEqualGreaterEqualAwhile/lstm_cell_1/dropout_1/random_uniform/RandomUniform:output:03while/lstm_cell_1/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 while/lstm_cell_1/dropout_1/CastCast,while/lstm_cell_1/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd¥
!while/lstm_cell_1/dropout_1/Mul_1Mul#while/lstm_cell_1/dropout_1/Mul:z:0$while/lstm_cell_1/dropout_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdf
!while/lstm_cell_1/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?ª
while/lstm_cell_1/dropout_2/MulMul$while/lstm_cell_1/ones_like:output:0*while/lstm_cell_1/dropout_2/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdu
!while/lstm_cell_1/dropout_2/ShapeShape$while/lstm_cell_1/ones_like:output:0*
T0*
_output_shapes
:´
8while/lstm_cell_1/dropout_2/random_uniform/RandomUniformRandomUniform*while/lstm_cell_1/dropout_2/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
dtype0o
*while/lstm_cell_1/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=â
(while/lstm_cell_1/dropout_2/GreaterEqualGreaterEqualAwhile/lstm_cell_1/dropout_2/random_uniform/RandomUniform:output:03while/lstm_cell_1/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 while/lstm_cell_1/dropout_2/CastCast,while/lstm_cell_1/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd¥
!while/lstm_cell_1/dropout_2/Mul_1Mul#while/lstm_cell_1/dropout_2/Mul:z:0$while/lstm_cell_1/dropout_2/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdf
!while/lstm_cell_1/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?ª
while/lstm_cell_1/dropout_3/MulMul$while/lstm_cell_1/ones_like:output:0*while/lstm_cell_1/dropout_3/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdu
!while/lstm_cell_1/dropout_3/ShapeShape$while/lstm_cell_1/ones_like:output:0*
T0*
_output_shapes
:´
8while/lstm_cell_1/dropout_3/random_uniform/RandomUniformRandomUniform*while/lstm_cell_1/dropout_3/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
dtype0o
*while/lstm_cell_1/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=â
(while/lstm_cell_1/dropout_3/GreaterEqualGreaterEqualAwhile/lstm_cell_1/dropout_3/random_uniform/RandomUniform:output:03while/lstm_cell_1/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 while/lstm_cell_1/dropout_3/CastCast,while/lstm_cell_1/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd¥
!while/lstm_cell_1/dropout_3/Mul_1Mul#while/lstm_cell_1/dropout_3/Mul:z:0$while/lstm_cell_1/dropout_3/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdf
#while/lstm_cell_1/ones_like_1/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:h
#while/lstm_cell_1/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?´
while/lstm_cell_1/ones_like_1Fill,while/lstm_cell_1/ones_like_1/Shape:output:0,while/lstm_cell_1/ones_like_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿf
!while/lstm_cell_1/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?­
while/lstm_cell_1/dropout_4/MulMul&while/lstm_cell_1/ones_like_1:output:0*while/lstm_cell_1/dropout_4/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
!while/lstm_cell_1/dropout_4/ShapeShape&while/lstm_cell_1/ones_like_1:output:0*
T0*
_output_shapes
:µ
8while/lstm_cell_1/dropout_4/random_uniform/RandomUniformRandomUniform*while/lstm_cell_1/dropout_4/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0o
*while/lstm_cell_1/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=ã
(while/lstm_cell_1/dropout_4/GreaterEqualGreaterEqualAwhile/lstm_cell_1/dropout_4/random_uniform/RandomUniform:output:03while/lstm_cell_1/dropout_4/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 while/lstm_cell_1/dropout_4/CastCast,while/lstm_cell_1/dropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦
!while/lstm_cell_1/dropout_4/Mul_1Mul#while/lstm_cell_1/dropout_4/Mul:z:0$while/lstm_cell_1/dropout_4/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿf
!while/lstm_cell_1/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?­
while/lstm_cell_1/dropout_5/MulMul&while/lstm_cell_1/ones_like_1:output:0*while/lstm_cell_1/dropout_5/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
!while/lstm_cell_1/dropout_5/ShapeShape&while/lstm_cell_1/ones_like_1:output:0*
T0*
_output_shapes
:µ
8while/lstm_cell_1/dropout_5/random_uniform/RandomUniformRandomUniform*while/lstm_cell_1/dropout_5/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0o
*while/lstm_cell_1/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=ã
(while/lstm_cell_1/dropout_5/GreaterEqualGreaterEqualAwhile/lstm_cell_1/dropout_5/random_uniform/RandomUniform:output:03while/lstm_cell_1/dropout_5/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 while/lstm_cell_1/dropout_5/CastCast,while/lstm_cell_1/dropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦
!while/lstm_cell_1/dropout_5/Mul_1Mul#while/lstm_cell_1/dropout_5/Mul:z:0$while/lstm_cell_1/dropout_5/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿf
!while/lstm_cell_1/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?­
while/lstm_cell_1/dropout_6/MulMul&while/lstm_cell_1/ones_like_1:output:0*while/lstm_cell_1/dropout_6/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
!while/lstm_cell_1/dropout_6/ShapeShape&while/lstm_cell_1/ones_like_1:output:0*
T0*
_output_shapes
:µ
8while/lstm_cell_1/dropout_6/random_uniform/RandomUniformRandomUniform*while/lstm_cell_1/dropout_6/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0o
*while/lstm_cell_1/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=ã
(while/lstm_cell_1/dropout_6/GreaterEqualGreaterEqualAwhile/lstm_cell_1/dropout_6/random_uniform/RandomUniform:output:03while/lstm_cell_1/dropout_6/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 while/lstm_cell_1/dropout_6/CastCast,while/lstm_cell_1/dropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦
!while/lstm_cell_1/dropout_6/Mul_1Mul#while/lstm_cell_1/dropout_6/Mul:z:0$while/lstm_cell_1/dropout_6/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿf
!while/lstm_cell_1/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?­
while/lstm_cell_1/dropout_7/MulMul&while/lstm_cell_1/ones_like_1:output:0*while/lstm_cell_1/dropout_7/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
!while/lstm_cell_1/dropout_7/ShapeShape&while/lstm_cell_1/ones_like_1:output:0*
T0*
_output_shapes
:µ
8while/lstm_cell_1/dropout_7/random_uniform/RandomUniformRandomUniform*while/lstm_cell_1/dropout_7/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0o
*while/lstm_cell_1/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=ã
(while/lstm_cell_1/dropout_7/GreaterEqualGreaterEqualAwhile/lstm_cell_1/dropout_7/random_uniform/RandomUniform:output:03while/lstm_cell_1/dropout_7/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 while/lstm_cell_1/dropout_7/CastCast,while/lstm_cell_1/dropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦
!while/lstm_cell_1/dropout_7/Mul_1Mul#while/lstm_cell_1/dropout_7/Mul:z:0$while/lstm_cell_1/dropout_7/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¥
while/lstm_cell_1/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0#while/lstm_cell_1/dropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd©
while/lstm_cell_1/mul_1Mul0while/TensorArrayV2Read/TensorListGetItem:item:0%while/lstm_cell_1/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd©
while/lstm_cell_1/mul_2Mul0while/TensorArrayV2Read/TensorListGetItem:item:0%while/lstm_cell_1/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd©
while/lstm_cell_1/mul_3Mul0while/TensorArrayV2Read/TensorListGetItem:item:0%while/lstm_cell_1/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdc
!while/lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
&while/lstm_cell_1/split/ReadVariableOpReadVariableOp1while_lstm_cell_1_split_readvariableop_resource_0*
_output_shapes
:	d*
dtype0Ø
while/lstm_cell_1/splitSplit*while/lstm_cell_1/split/split_dim:output:0.while/lstm_cell_1/split/ReadVariableOp:value:0*
T0*@
_output_shapes.
,:	d:	d:	d:	d*
	num_split
while/lstm_cell_1/MatMulMatMulwhile/lstm_cell_1/mul:z:0 while/lstm_cell_1/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_1/MatMul_1MatMulwhile/lstm_cell_1/mul_1:z:0 while/lstm_cell_1/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_1/MatMul_2MatMulwhile/lstm_cell_1/mul_2:z:0 while/lstm_cell_1/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_1/MatMul_3MatMulwhile/lstm_cell_1/mul_3:z:0 while/lstm_cell_1/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
#while/lstm_cell_1/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
(while/lstm_cell_1/split_1/ReadVariableOpReadVariableOp3while_lstm_cell_1_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype0Î
while/lstm_cell_1/split_1Split,while/lstm_cell_1/split_1/split_dim:output:00while/lstm_cell_1/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
::::*
	num_split
while/lstm_cell_1/BiasAddBiasAdd"while/lstm_cell_1/MatMul:product:0"while/lstm_cell_1/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ£
while/lstm_cell_1/BiasAdd_1BiasAdd$while/lstm_cell_1/MatMul_1:product:0"while/lstm_cell_1/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ£
while/lstm_cell_1/BiasAdd_2BiasAdd$while/lstm_cell_1/MatMul_2:product:0"while/lstm_cell_1/split_1:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ£
while/lstm_cell_1/BiasAdd_3BiasAdd$while/lstm_cell_1/MatMul_3:product:0"while/lstm_cell_1/split_1:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_1/mul_4Mulwhile_placeholder_2%while/lstm_cell_1/dropout_4/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_1/mul_5Mulwhile_placeholder_2%while/lstm_cell_1/dropout_5/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_1/mul_6Mulwhile_placeholder_2%while/lstm_cell_1/dropout_6/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_1/mul_7Mulwhile_placeholder_2%while/lstm_cell_1/dropout_7/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 while/lstm_cell_1/ReadVariableOpReadVariableOp+while_lstm_cell_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0v
%while/lstm_cell_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'while/lstm_cell_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       x
'while/lstm_cell_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ç
while/lstm_cell_1/strided_sliceStridedSlice(while/lstm_cell_1/ReadVariableOp:value:0.while/lstm_cell_1/strided_slice/stack:output:00while/lstm_cell_1/strided_slice/stack_1:output:00while/lstm_cell_1/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask
while/lstm_cell_1/MatMul_4MatMulwhile/lstm_cell_1/mul_4:z:0(while/lstm_cell_1/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_1/addAddV2"while/lstm_cell_1/BiasAdd:output:0$while/lstm_cell_1/MatMul_4:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
while/lstm_cell_1/SigmoidSigmoidwhile/lstm_cell_1/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"while/lstm_cell_1/ReadVariableOp_1ReadVariableOp+while_lstm_cell_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0x
'while/lstm_cell_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       z
)while/lstm_cell_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       z
)while/lstm_cell_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ñ
!while/lstm_cell_1/strided_slice_1StridedSlice*while/lstm_cell_1/ReadVariableOp_1:value:00while/lstm_cell_1/strided_slice_1/stack:output:02while/lstm_cell_1/strided_slice_1/stack_1:output:02while/lstm_cell_1/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask 
while/lstm_cell_1/MatMul_5MatMulwhile/lstm_cell_1/mul_5:z:0*while/lstm_cell_1/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_1/add_1AddV2$while/lstm_cell_1/BiasAdd_1:output:0$while/lstm_cell_1/MatMul_5:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
while/lstm_cell_1/Sigmoid_1Sigmoidwhile/lstm_cell_1/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_1/mul_8Mulwhile/lstm_cell_1/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"while/lstm_cell_1/ReadVariableOp_2ReadVariableOp+while_lstm_cell_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0x
'while/lstm_cell_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       z
)while/lstm_cell_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      z
)while/lstm_cell_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ñ
!while/lstm_cell_1/strided_slice_2StridedSlice*while/lstm_cell_1/ReadVariableOp_2:value:00while/lstm_cell_1/strided_slice_2/stack:output:02while/lstm_cell_1/strided_slice_2/stack_1:output:02while/lstm_cell_1/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask 
while/lstm_cell_1/MatMul_6MatMulwhile/lstm_cell_1/mul_6:z:0*while/lstm_cell_1/strided_slice_2:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_1/add_2AddV2$while/lstm_cell_1/BiasAdd_2:output:0$while/lstm_cell_1/MatMul_6:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿn
while/lstm_cell_1/TanhTanhwhile/lstm_cell_1/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_1/mul_9Mulwhile/lstm_cell_1/Sigmoid:y:0while/lstm_cell_1/Tanh:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_1/add_3AddV2while/lstm_cell_1/mul_8:z:0while/lstm_cell_1/mul_9:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"while/lstm_cell_1/ReadVariableOp_3ReadVariableOp+while_lstm_cell_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0x
'while/lstm_cell_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"      z
)while/lstm_cell_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        z
)while/lstm_cell_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ñ
!while/lstm_cell_1/strided_slice_3StridedSlice*while/lstm_cell_1/ReadVariableOp_3:value:00while/lstm_cell_1/strided_slice_3/stack:output:02while/lstm_cell_1/strided_slice_3/stack_1:output:02while/lstm_cell_1/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask 
while/lstm_cell_1/MatMul_7MatMulwhile/lstm_cell_1/mul_7:z:0*while/lstm_cell_1/strided_slice_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_1/add_4AddV2$while/lstm_cell_1/BiasAdd_3:output:0$while/lstm_cell_1/MatMul_7:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
while/lstm_cell_1/Sigmoid_2Sigmoidwhile/lstm_cell_1/add_4:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
while/lstm_cell_1/Tanh_1Tanhwhile/lstm_cell_1/add_3:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_1/mul_10Mulwhile/lstm_cell_1/Sigmoid_2:y:0while/lstm_cell_1/Tanh_1:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÅ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_1/mul_10:z:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :éèÒz
while/Identity_4Identitywhile/lstm_cell_1/mul_10:z:0^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿy
while/Identity_5Identitywhile/lstm_cell_1/add_3:z:0^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ²

while/NoOpNoOp!^while/lstm_cell_1/ReadVariableOp#^while/lstm_cell_1/ReadVariableOp_1#^while/lstm_cell_1/ReadVariableOp_2#^while/lstm_cell_1/ReadVariableOp_3'^while/lstm_cell_1/split/ReadVariableOp)^while/lstm_cell_1/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"X
)while_lstm_cell_1_readvariableop_resource+while_lstm_cell_1_readvariableop_resource_0"h
1while_lstm_cell_1_split_1_readvariableop_resource3while_lstm_cell_1_split_1_readvariableop_resource_0"d
/while_lstm_cell_1_split_readvariableop_resource1while_lstm_cell_1_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2D
 while/lstm_cell_1/ReadVariableOp while/lstm_cell_1/ReadVariableOp2H
"while/lstm_cell_1/ReadVariableOp_1"while/lstm_cell_1/ReadVariableOp_12H
"while/lstm_cell_1/ReadVariableOp_2"while/lstm_cell_1/ReadVariableOp_22H
"while/lstm_cell_1/ReadVariableOp_3"while/lstm_cell_1/ReadVariableOp_32P
&while/lstm_cell_1/split/ReadVariableOp&while/lstm_cell_1/split/ReadVariableOp2T
(while/lstm_cell_1/split_1/ReadVariableOp(while/lstm_cell_1/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
ÕÂ
	
while_body_12435
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
1while_lstm_cell_1_split_readvariableop_resource_0:	dB
3while_lstm_cell_1_split_1_readvariableop_resource_0:	?
+while_lstm_cell_1_readvariableop_resource_0:

while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
/while_lstm_cell_1_split_readvariableop_resource:	d@
1while_lstm_cell_1_split_1_readvariableop_resource:	=
)while_lstm_cell_1_readvariableop_resource:
¢ while/lstm_cell_1/ReadVariableOp¢"while/lstm_cell_1/ReadVariableOp_1¢"while/lstm_cell_1/ReadVariableOp_2¢"while/lstm_cell_1/ReadVariableOp_3¢&while/lstm_cell_1/split/ReadVariableOp¢(while/lstm_cell_1/split_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype0
!while/lstm_cell_1/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:f
!while/lstm_cell_1/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?­
while/lstm_cell_1/ones_likeFill*while/lstm_cell_1/ones_like/Shape:output:0*while/lstm_cell_1/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd
while/lstm_cell_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?¦
while/lstm_cell_1/dropout/MulMul$while/lstm_cell_1/ones_like:output:0(while/lstm_cell_1/dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿds
while/lstm_cell_1/dropout/ShapeShape$while/lstm_cell_1/ones_like:output:0*
T0*
_output_shapes
:°
6while/lstm_cell_1/dropout/random_uniform/RandomUniformRandomUniform(while/lstm_cell_1/dropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
dtype0m
(while/lstm_cell_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=Ü
&while/lstm_cell_1/dropout/GreaterEqualGreaterEqual?while/lstm_cell_1/dropout/random_uniform/RandomUniform:output:01while/lstm_cell_1/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_1/dropout/CastCast*while/lstm_cell_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_1/dropout/Mul_1Mul!while/lstm_cell_1/dropout/Mul:z:0"while/lstm_cell_1/dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdf
!while/lstm_cell_1/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?ª
while/lstm_cell_1/dropout_1/MulMul$while/lstm_cell_1/ones_like:output:0*while/lstm_cell_1/dropout_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdu
!while/lstm_cell_1/dropout_1/ShapeShape$while/lstm_cell_1/ones_like:output:0*
T0*
_output_shapes
:´
8while/lstm_cell_1/dropout_1/random_uniform/RandomUniformRandomUniform*while/lstm_cell_1/dropout_1/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
dtype0o
*while/lstm_cell_1/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=â
(while/lstm_cell_1/dropout_1/GreaterEqualGreaterEqualAwhile/lstm_cell_1/dropout_1/random_uniform/RandomUniform:output:03while/lstm_cell_1/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 while/lstm_cell_1/dropout_1/CastCast,while/lstm_cell_1/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd¥
!while/lstm_cell_1/dropout_1/Mul_1Mul#while/lstm_cell_1/dropout_1/Mul:z:0$while/lstm_cell_1/dropout_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdf
!while/lstm_cell_1/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?ª
while/lstm_cell_1/dropout_2/MulMul$while/lstm_cell_1/ones_like:output:0*while/lstm_cell_1/dropout_2/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdu
!while/lstm_cell_1/dropout_2/ShapeShape$while/lstm_cell_1/ones_like:output:0*
T0*
_output_shapes
:´
8while/lstm_cell_1/dropout_2/random_uniform/RandomUniformRandomUniform*while/lstm_cell_1/dropout_2/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
dtype0o
*while/lstm_cell_1/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=â
(while/lstm_cell_1/dropout_2/GreaterEqualGreaterEqualAwhile/lstm_cell_1/dropout_2/random_uniform/RandomUniform:output:03while/lstm_cell_1/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 while/lstm_cell_1/dropout_2/CastCast,while/lstm_cell_1/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd¥
!while/lstm_cell_1/dropout_2/Mul_1Mul#while/lstm_cell_1/dropout_2/Mul:z:0$while/lstm_cell_1/dropout_2/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdf
!while/lstm_cell_1/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?ª
while/lstm_cell_1/dropout_3/MulMul$while/lstm_cell_1/ones_like:output:0*while/lstm_cell_1/dropout_3/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdu
!while/lstm_cell_1/dropout_3/ShapeShape$while/lstm_cell_1/ones_like:output:0*
T0*
_output_shapes
:´
8while/lstm_cell_1/dropout_3/random_uniform/RandomUniformRandomUniform*while/lstm_cell_1/dropout_3/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
dtype0o
*while/lstm_cell_1/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=â
(while/lstm_cell_1/dropout_3/GreaterEqualGreaterEqualAwhile/lstm_cell_1/dropout_3/random_uniform/RandomUniform:output:03while/lstm_cell_1/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 while/lstm_cell_1/dropout_3/CastCast,while/lstm_cell_1/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd¥
!while/lstm_cell_1/dropout_3/Mul_1Mul#while/lstm_cell_1/dropout_3/Mul:z:0$while/lstm_cell_1/dropout_3/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdf
#while/lstm_cell_1/ones_like_1/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:h
#while/lstm_cell_1/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?´
while/lstm_cell_1/ones_like_1Fill,while/lstm_cell_1/ones_like_1/Shape:output:0,while/lstm_cell_1/ones_like_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿf
!while/lstm_cell_1/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?­
while/lstm_cell_1/dropout_4/MulMul&while/lstm_cell_1/ones_like_1:output:0*while/lstm_cell_1/dropout_4/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
!while/lstm_cell_1/dropout_4/ShapeShape&while/lstm_cell_1/ones_like_1:output:0*
T0*
_output_shapes
:µ
8while/lstm_cell_1/dropout_4/random_uniform/RandomUniformRandomUniform*while/lstm_cell_1/dropout_4/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0o
*while/lstm_cell_1/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=ã
(while/lstm_cell_1/dropout_4/GreaterEqualGreaterEqualAwhile/lstm_cell_1/dropout_4/random_uniform/RandomUniform:output:03while/lstm_cell_1/dropout_4/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 while/lstm_cell_1/dropout_4/CastCast,while/lstm_cell_1/dropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦
!while/lstm_cell_1/dropout_4/Mul_1Mul#while/lstm_cell_1/dropout_4/Mul:z:0$while/lstm_cell_1/dropout_4/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿf
!while/lstm_cell_1/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?­
while/lstm_cell_1/dropout_5/MulMul&while/lstm_cell_1/ones_like_1:output:0*while/lstm_cell_1/dropout_5/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
!while/lstm_cell_1/dropout_5/ShapeShape&while/lstm_cell_1/ones_like_1:output:0*
T0*
_output_shapes
:µ
8while/lstm_cell_1/dropout_5/random_uniform/RandomUniformRandomUniform*while/lstm_cell_1/dropout_5/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0o
*while/lstm_cell_1/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=ã
(while/lstm_cell_1/dropout_5/GreaterEqualGreaterEqualAwhile/lstm_cell_1/dropout_5/random_uniform/RandomUniform:output:03while/lstm_cell_1/dropout_5/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 while/lstm_cell_1/dropout_5/CastCast,while/lstm_cell_1/dropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦
!while/lstm_cell_1/dropout_5/Mul_1Mul#while/lstm_cell_1/dropout_5/Mul:z:0$while/lstm_cell_1/dropout_5/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿf
!while/lstm_cell_1/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?­
while/lstm_cell_1/dropout_6/MulMul&while/lstm_cell_1/ones_like_1:output:0*while/lstm_cell_1/dropout_6/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
!while/lstm_cell_1/dropout_6/ShapeShape&while/lstm_cell_1/ones_like_1:output:0*
T0*
_output_shapes
:µ
8while/lstm_cell_1/dropout_6/random_uniform/RandomUniformRandomUniform*while/lstm_cell_1/dropout_6/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0o
*while/lstm_cell_1/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=ã
(while/lstm_cell_1/dropout_6/GreaterEqualGreaterEqualAwhile/lstm_cell_1/dropout_6/random_uniform/RandomUniform:output:03while/lstm_cell_1/dropout_6/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 while/lstm_cell_1/dropout_6/CastCast,while/lstm_cell_1/dropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦
!while/lstm_cell_1/dropout_6/Mul_1Mul#while/lstm_cell_1/dropout_6/Mul:z:0$while/lstm_cell_1/dropout_6/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿf
!while/lstm_cell_1/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?­
while/lstm_cell_1/dropout_7/MulMul&while/lstm_cell_1/ones_like_1:output:0*while/lstm_cell_1/dropout_7/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
!while/lstm_cell_1/dropout_7/ShapeShape&while/lstm_cell_1/ones_like_1:output:0*
T0*
_output_shapes
:µ
8while/lstm_cell_1/dropout_7/random_uniform/RandomUniformRandomUniform*while/lstm_cell_1/dropout_7/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0o
*while/lstm_cell_1/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=ã
(while/lstm_cell_1/dropout_7/GreaterEqualGreaterEqualAwhile/lstm_cell_1/dropout_7/random_uniform/RandomUniform:output:03while/lstm_cell_1/dropout_7/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 while/lstm_cell_1/dropout_7/CastCast,while/lstm_cell_1/dropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦
!while/lstm_cell_1/dropout_7/Mul_1Mul#while/lstm_cell_1/dropout_7/Mul:z:0$while/lstm_cell_1/dropout_7/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¥
while/lstm_cell_1/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0#while/lstm_cell_1/dropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd©
while/lstm_cell_1/mul_1Mul0while/TensorArrayV2Read/TensorListGetItem:item:0%while/lstm_cell_1/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd©
while/lstm_cell_1/mul_2Mul0while/TensorArrayV2Read/TensorListGetItem:item:0%while/lstm_cell_1/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd©
while/lstm_cell_1/mul_3Mul0while/TensorArrayV2Read/TensorListGetItem:item:0%while/lstm_cell_1/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdc
!while/lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
&while/lstm_cell_1/split/ReadVariableOpReadVariableOp1while_lstm_cell_1_split_readvariableop_resource_0*
_output_shapes
:	d*
dtype0Ø
while/lstm_cell_1/splitSplit*while/lstm_cell_1/split/split_dim:output:0.while/lstm_cell_1/split/ReadVariableOp:value:0*
T0*@
_output_shapes.
,:	d:	d:	d:	d*
	num_split
while/lstm_cell_1/MatMulMatMulwhile/lstm_cell_1/mul:z:0 while/lstm_cell_1/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_1/MatMul_1MatMulwhile/lstm_cell_1/mul_1:z:0 while/lstm_cell_1/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_1/MatMul_2MatMulwhile/lstm_cell_1/mul_2:z:0 while/lstm_cell_1/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_1/MatMul_3MatMulwhile/lstm_cell_1/mul_3:z:0 while/lstm_cell_1/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
#while/lstm_cell_1/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
(while/lstm_cell_1/split_1/ReadVariableOpReadVariableOp3while_lstm_cell_1_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype0Î
while/lstm_cell_1/split_1Split,while/lstm_cell_1/split_1/split_dim:output:00while/lstm_cell_1/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
::::*
	num_split
while/lstm_cell_1/BiasAddBiasAdd"while/lstm_cell_1/MatMul:product:0"while/lstm_cell_1/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ£
while/lstm_cell_1/BiasAdd_1BiasAdd$while/lstm_cell_1/MatMul_1:product:0"while/lstm_cell_1/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ£
while/lstm_cell_1/BiasAdd_2BiasAdd$while/lstm_cell_1/MatMul_2:product:0"while/lstm_cell_1/split_1:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ£
while/lstm_cell_1/BiasAdd_3BiasAdd$while/lstm_cell_1/MatMul_3:product:0"while/lstm_cell_1/split_1:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_1/mul_4Mulwhile_placeholder_2%while/lstm_cell_1/dropout_4/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_1/mul_5Mulwhile_placeholder_2%while/lstm_cell_1/dropout_5/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_1/mul_6Mulwhile_placeholder_2%while/lstm_cell_1/dropout_6/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_1/mul_7Mulwhile_placeholder_2%while/lstm_cell_1/dropout_7/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 while/lstm_cell_1/ReadVariableOpReadVariableOp+while_lstm_cell_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0v
%while/lstm_cell_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'while/lstm_cell_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       x
'while/lstm_cell_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ç
while/lstm_cell_1/strided_sliceStridedSlice(while/lstm_cell_1/ReadVariableOp:value:0.while/lstm_cell_1/strided_slice/stack:output:00while/lstm_cell_1/strided_slice/stack_1:output:00while/lstm_cell_1/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask
while/lstm_cell_1/MatMul_4MatMulwhile/lstm_cell_1/mul_4:z:0(while/lstm_cell_1/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_1/addAddV2"while/lstm_cell_1/BiasAdd:output:0$while/lstm_cell_1/MatMul_4:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
while/lstm_cell_1/SigmoidSigmoidwhile/lstm_cell_1/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"while/lstm_cell_1/ReadVariableOp_1ReadVariableOp+while_lstm_cell_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0x
'while/lstm_cell_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       z
)while/lstm_cell_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       z
)while/lstm_cell_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ñ
!while/lstm_cell_1/strided_slice_1StridedSlice*while/lstm_cell_1/ReadVariableOp_1:value:00while/lstm_cell_1/strided_slice_1/stack:output:02while/lstm_cell_1/strided_slice_1/stack_1:output:02while/lstm_cell_1/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask 
while/lstm_cell_1/MatMul_5MatMulwhile/lstm_cell_1/mul_5:z:0*while/lstm_cell_1/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_1/add_1AddV2$while/lstm_cell_1/BiasAdd_1:output:0$while/lstm_cell_1/MatMul_5:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
while/lstm_cell_1/Sigmoid_1Sigmoidwhile/lstm_cell_1/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_1/mul_8Mulwhile/lstm_cell_1/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"while/lstm_cell_1/ReadVariableOp_2ReadVariableOp+while_lstm_cell_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0x
'while/lstm_cell_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       z
)while/lstm_cell_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      z
)while/lstm_cell_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ñ
!while/lstm_cell_1/strided_slice_2StridedSlice*while/lstm_cell_1/ReadVariableOp_2:value:00while/lstm_cell_1/strided_slice_2/stack:output:02while/lstm_cell_1/strided_slice_2/stack_1:output:02while/lstm_cell_1/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask 
while/lstm_cell_1/MatMul_6MatMulwhile/lstm_cell_1/mul_6:z:0*while/lstm_cell_1/strided_slice_2:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_1/add_2AddV2$while/lstm_cell_1/BiasAdd_2:output:0$while/lstm_cell_1/MatMul_6:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿn
while/lstm_cell_1/TanhTanhwhile/lstm_cell_1/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_1/mul_9Mulwhile/lstm_cell_1/Sigmoid:y:0while/lstm_cell_1/Tanh:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_1/add_3AddV2while/lstm_cell_1/mul_8:z:0while/lstm_cell_1/mul_9:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"while/lstm_cell_1/ReadVariableOp_3ReadVariableOp+while_lstm_cell_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0x
'while/lstm_cell_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"      z
)while/lstm_cell_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        z
)while/lstm_cell_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ñ
!while/lstm_cell_1/strided_slice_3StridedSlice*while/lstm_cell_1/ReadVariableOp_3:value:00while/lstm_cell_1/strided_slice_3/stack:output:02while/lstm_cell_1/strided_slice_3/stack_1:output:02while/lstm_cell_1/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask 
while/lstm_cell_1/MatMul_7MatMulwhile/lstm_cell_1/mul_7:z:0*while/lstm_cell_1/strided_slice_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_1/add_4AddV2$while/lstm_cell_1/BiasAdd_3:output:0$while/lstm_cell_1/MatMul_7:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
while/lstm_cell_1/Sigmoid_2Sigmoidwhile/lstm_cell_1/add_4:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
while/lstm_cell_1/Tanh_1Tanhwhile/lstm_cell_1/add_3:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_1/mul_10Mulwhile/lstm_cell_1/Sigmoid_2:y:0while/lstm_cell_1/Tanh_1:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÅ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_1/mul_10:z:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :éèÒz
while/Identity_4Identitywhile/lstm_cell_1/mul_10:z:0^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿy
while/Identity_5Identitywhile/lstm_cell_1/add_3:z:0^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ²

while/NoOpNoOp!^while/lstm_cell_1/ReadVariableOp#^while/lstm_cell_1/ReadVariableOp_1#^while/lstm_cell_1/ReadVariableOp_2#^while/lstm_cell_1/ReadVariableOp_3'^while/lstm_cell_1/split/ReadVariableOp)^while/lstm_cell_1/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"X
)while_lstm_cell_1_readvariableop_resource+while_lstm_cell_1_readvariableop_resource_0"h
1while_lstm_cell_1_split_1_readvariableop_resource3while_lstm_cell_1_split_1_readvariableop_resource_0"d
/while_lstm_cell_1_split_readvariableop_resource1while_lstm_cell_1_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2D
 while/lstm_cell_1/ReadVariableOp while/lstm_cell_1/ReadVariableOp2H
"while/lstm_cell_1/ReadVariableOp_1"while/lstm_cell_1/ReadVariableOp_12H
"while/lstm_cell_1/ReadVariableOp_2"while/lstm_cell_1/ReadVariableOp_22H
"while/lstm_cell_1/ReadVariableOp_3"while/lstm_cell_1/ReadVariableOp_32P
&while/lstm_cell_1/split/ReadVariableOp&while/lstm_cell_1/split/ReadVariableOp2T
(while/lstm_cell_1/split_1/ReadVariableOp(while/lstm_cell_1/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
Æ
~
)__inference_embedding_layer_call_fn_11965

inputs
unknown:	Md
identity¢StatefulPartitionedCallÙ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_embedding_layer_call_and_return_conditional_losses_10333|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ùt
	
while_body_12128
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
1while_lstm_cell_1_split_readvariableop_resource_0:	dB
3while_lstm_cell_1_split_1_readvariableop_resource_0:	?
+while_lstm_cell_1_readvariableop_resource_0:

while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
/while_lstm_cell_1_split_readvariableop_resource:	d@
1while_lstm_cell_1_split_1_readvariableop_resource:	=
)while_lstm_cell_1_readvariableop_resource:
¢ while/lstm_cell_1/ReadVariableOp¢"while/lstm_cell_1/ReadVariableOp_1¢"while/lstm_cell_1/ReadVariableOp_2¢"while/lstm_cell_1/ReadVariableOp_3¢&while/lstm_cell_1/split/ReadVariableOp¢(while/lstm_cell_1/split_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype0
!while/lstm_cell_1/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:f
!while/lstm_cell_1/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?­
while/lstm_cell_1/ones_likeFill*while/lstm_cell_1/ones_like/Shape:output:0*while/lstm_cell_1/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdf
#while/lstm_cell_1/ones_like_1/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:h
#while/lstm_cell_1/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?´
while/lstm_cell_1/ones_like_1Fill,while/lstm_cell_1/ones_like_1/Shape:output:0,while/lstm_cell_1/ones_like_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦
while/lstm_cell_1/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0$while/lstm_cell_1/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd¨
while/lstm_cell_1/mul_1Mul0while/TensorArrayV2Read/TensorListGetItem:item:0$while/lstm_cell_1/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd¨
while/lstm_cell_1/mul_2Mul0while/TensorArrayV2Read/TensorListGetItem:item:0$while/lstm_cell_1/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd¨
while/lstm_cell_1/mul_3Mul0while/TensorArrayV2Read/TensorListGetItem:item:0$while/lstm_cell_1/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdc
!while/lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
&while/lstm_cell_1/split/ReadVariableOpReadVariableOp1while_lstm_cell_1_split_readvariableop_resource_0*
_output_shapes
:	d*
dtype0Ø
while/lstm_cell_1/splitSplit*while/lstm_cell_1/split/split_dim:output:0.while/lstm_cell_1/split/ReadVariableOp:value:0*
T0*@
_output_shapes.
,:	d:	d:	d:	d*
	num_split
while/lstm_cell_1/MatMulMatMulwhile/lstm_cell_1/mul:z:0 while/lstm_cell_1/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_1/MatMul_1MatMulwhile/lstm_cell_1/mul_1:z:0 while/lstm_cell_1/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_1/MatMul_2MatMulwhile/lstm_cell_1/mul_2:z:0 while/lstm_cell_1/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_1/MatMul_3MatMulwhile/lstm_cell_1/mul_3:z:0 while/lstm_cell_1/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
#while/lstm_cell_1/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
(while/lstm_cell_1/split_1/ReadVariableOpReadVariableOp3while_lstm_cell_1_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype0Î
while/lstm_cell_1/split_1Split,while/lstm_cell_1/split_1/split_dim:output:00while/lstm_cell_1/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
::::*
	num_split
while/lstm_cell_1/BiasAddBiasAdd"while/lstm_cell_1/MatMul:product:0"while/lstm_cell_1/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ£
while/lstm_cell_1/BiasAdd_1BiasAdd$while/lstm_cell_1/MatMul_1:product:0"while/lstm_cell_1/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ£
while/lstm_cell_1/BiasAdd_2BiasAdd$while/lstm_cell_1/MatMul_2:product:0"while/lstm_cell_1/split_1:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ£
while/lstm_cell_1/BiasAdd_3BiasAdd$while/lstm_cell_1/MatMul_3:product:0"while/lstm_cell_1/split_1:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_1/mul_4Mulwhile_placeholder_2&while/lstm_cell_1/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_1/mul_5Mulwhile_placeholder_2&while/lstm_cell_1/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_1/mul_6Mulwhile_placeholder_2&while/lstm_cell_1/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_1/mul_7Mulwhile_placeholder_2&while/lstm_cell_1/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 while/lstm_cell_1/ReadVariableOpReadVariableOp+while_lstm_cell_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0v
%while/lstm_cell_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'while/lstm_cell_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       x
'while/lstm_cell_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ç
while/lstm_cell_1/strided_sliceStridedSlice(while/lstm_cell_1/ReadVariableOp:value:0.while/lstm_cell_1/strided_slice/stack:output:00while/lstm_cell_1/strided_slice/stack_1:output:00while/lstm_cell_1/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask
while/lstm_cell_1/MatMul_4MatMulwhile/lstm_cell_1/mul_4:z:0(while/lstm_cell_1/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_1/addAddV2"while/lstm_cell_1/BiasAdd:output:0$while/lstm_cell_1/MatMul_4:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
while/lstm_cell_1/SigmoidSigmoidwhile/lstm_cell_1/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"while/lstm_cell_1/ReadVariableOp_1ReadVariableOp+while_lstm_cell_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0x
'while/lstm_cell_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       z
)while/lstm_cell_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       z
)while/lstm_cell_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ñ
!while/lstm_cell_1/strided_slice_1StridedSlice*while/lstm_cell_1/ReadVariableOp_1:value:00while/lstm_cell_1/strided_slice_1/stack:output:02while/lstm_cell_1/strided_slice_1/stack_1:output:02while/lstm_cell_1/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask 
while/lstm_cell_1/MatMul_5MatMulwhile/lstm_cell_1/mul_5:z:0*while/lstm_cell_1/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_1/add_1AddV2$while/lstm_cell_1/BiasAdd_1:output:0$while/lstm_cell_1/MatMul_5:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
while/lstm_cell_1/Sigmoid_1Sigmoidwhile/lstm_cell_1/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_1/mul_8Mulwhile/lstm_cell_1/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"while/lstm_cell_1/ReadVariableOp_2ReadVariableOp+while_lstm_cell_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0x
'while/lstm_cell_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       z
)while/lstm_cell_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      z
)while/lstm_cell_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ñ
!while/lstm_cell_1/strided_slice_2StridedSlice*while/lstm_cell_1/ReadVariableOp_2:value:00while/lstm_cell_1/strided_slice_2/stack:output:02while/lstm_cell_1/strided_slice_2/stack_1:output:02while/lstm_cell_1/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask 
while/lstm_cell_1/MatMul_6MatMulwhile/lstm_cell_1/mul_6:z:0*while/lstm_cell_1/strided_slice_2:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_1/add_2AddV2$while/lstm_cell_1/BiasAdd_2:output:0$while/lstm_cell_1/MatMul_6:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿn
while/lstm_cell_1/TanhTanhwhile/lstm_cell_1/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_1/mul_9Mulwhile/lstm_cell_1/Sigmoid:y:0while/lstm_cell_1/Tanh:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_1/add_3AddV2while/lstm_cell_1/mul_8:z:0while/lstm_cell_1/mul_9:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"while/lstm_cell_1/ReadVariableOp_3ReadVariableOp+while_lstm_cell_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0x
'while/lstm_cell_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"      z
)while/lstm_cell_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        z
)while/lstm_cell_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ñ
!while/lstm_cell_1/strided_slice_3StridedSlice*while/lstm_cell_1/ReadVariableOp_3:value:00while/lstm_cell_1/strided_slice_3/stack:output:02while/lstm_cell_1/strided_slice_3/stack_1:output:02while/lstm_cell_1/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask 
while/lstm_cell_1/MatMul_7MatMulwhile/lstm_cell_1/mul_7:z:0*while/lstm_cell_1/strided_slice_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_1/add_4AddV2$while/lstm_cell_1/BiasAdd_3:output:0$while/lstm_cell_1/MatMul_7:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
while/lstm_cell_1/Sigmoid_2Sigmoidwhile/lstm_cell_1/add_4:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
while/lstm_cell_1/Tanh_1Tanhwhile/lstm_cell_1/add_3:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_1/mul_10Mulwhile/lstm_cell_1/Sigmoid_2:y:0while/lstm_cell_1/Tanh_1:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÅ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_1/mul_10:z:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :éèÒz
while/Identity_4Identitywhile/lstm_cell_1/mul_10:z:0^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿy
while/Identity_5Identitywhile/lstm_cell_1/add_3:z:0^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ²

while/NoOpNoOp!^while/lstm_cell_1/ReadVariableOp#^while/lstm_cell_1/ReadVariableOp_1#^while/lstm_cell_1/ReadVariableOp_2#^while/lstm_cell_1/ReadVariableOp_3'^while/lstm_cell_1/split/ReadVariableOp)^while/lstm_cell_1/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"X
)while_lstm_cell_1_readvariableop_resource+while_lstm_cell_1_readvariableop_resource_0"h
1while_lstm_cell_1_split_1_readvariableop_resource3while_lstm_cell_1_split_1_readvariableop_resource_0"d
/while_lstm_cell_1_split_readvariableop_resource1while_lstm_cell_1_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2D
 while/lstm_cell_1/ReadVariableOp while/lstm_cell_1/ReadVariableOp2H
"while/lstm_cell_1/ReadVariableOp_1"while/lstm_cell_1/ReadVariableOp_12H
"while/lstm_cell_1/ReadVariableOp_2"while/lstm_cell_1/ReadVariableOp_22H
"while/lstm_cell_1/ReadVariableOp_3"while/lstm_cell_1/ReadVariableOp_32P
&while/lstm_cell_1/split/ReadVariableOp&while/lstm_cell_1/split/ReadVariableOp2T
(while/lstm_cell_1/split_1/ReadVariableOp(while/lstm_cell_1/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 

Û
?__inference_lstm_layer_call_and_return_conditional_losses_12876

inputs<
)lstm_cell_1_split_readvariableop_resource:	d:
+lstm_cell_1_split_1_readvariableop_resource:	7
#lstm_cell_1_readvariableop_resource:

identity¢lstm_cell_1/ReadVariableOp¢lstm_cell_1/ReadVariableOp_1¢lstm_cell_1/ReadVariableOp_2¢lstm_cell_1/ReadVariableOp_3¢ lstm_cell_1/split/ReadVariableOp¢"lstm_cell_1/split_1/ReadVariableOp¢while;
ShapeShapeinputs*
T0*
_output_shapes
:]
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
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿdD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_maskc
lstm_cell_1/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
:`
lstm_cell_1/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
lstm_cell_1/ones_likeFill$lstm_cell_1/ones_like/Shape:output:0$lstm_cell_1/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd[
lstm_cell_1/ones_like_1/ShapeShapezeros:output:0*
T0*
_output_shapes
:b
lstm_cell_1/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?¢
lstm_cell_1/ones_like_1Fill&lstm_cell_1/ones_like_1/Shape:output:0&lstm_cell_1/ones_like_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_1/mulMulstrided_slice_2:output:0lstm_cell_1/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_cell_1/mul_1Mulstrided_slice_2:output:0lstm_cell_1/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_cell_1/mul_2Mulstrided_slice_2:output:0lstm_cell_1/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_cell_1/mul_3Mulstrided_slice_2:output:0lstm_cell_1/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd]
lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
 lstm_cell_1/split/ReadVariableOpReadVariableOp)lstm_cell_1_split_readvariableop_resource*
_output_shapes
:	d*
dtype0Æ
lstm_cell_1/splitSplit$lstm_cell_1/split/split_dim:output:0(lstm_cell_1/split/ReadVariableOp:value:0*
T0*@
_output_shapes.
,:	d:	d:	d:	d*
	num_split
lstm_cell_1/MatMulMatMullstm_cell_1/mul:z:0lstm_cell_1/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_1/MatMul_1MatMullstm_cell_1/mul_1:z:0lstm_cell_1/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_1/MatMul_2MatMullstm_cell_1/mul_2:z:0lstm_cell_1/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_1/MatMul_3MatMullstm_cell_1/mul_3:z:0lstm_cell_1/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
lstm_cell_1/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
"lstm_cell_1/split_1/ReadVariableOpReadVariableOp+lstm_cell_1_split_1_readvariableop_resource*
_output_shapes	
:*
dtype0¼
lstm_cell_1/split_1Split&lstm_cell_1/split_1/split_dim:output:0*lstm_cell_1/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
::::*
	num_split
lstm_cell_1/BiasAddBiasAddlstm_cell_1/MatMul:product:0lstm_cell_1/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_1/BiasAdd_1BiasAddlstm_cell_1/MatMul_1:product:0lstm_cell_1/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_1/BiasAdd_2BiasAddlstm_cell_1/MatMul_2:product:0lstm_cell_1/split_1:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_1/BiasAdd_3BiasAddlstm_cell_1/MatMul_3:product:0lstm_cell_1/split_1:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}
lstm_cell_1/mul_4Mulzeros:output:0 lstm_cell_1/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}
lstm_cell_1/mul_5Mulzeros:output:0 lstm_cell_1/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}
lstm_cell_1/mul_6Mulzeros:output:0 lstm_cell_1/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}
lstm_cell_1/mul_7Mulzeros:output:0 lstm_cell_1/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_1/ReadVariableOpReadVariableOp#lstm_cell_1_readvariableop_resource* 
_output_shapes
:
*
dtype0p
lstm_cell_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        r
!lstm_cell_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       r
!lstm_cell_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ©
lstm_cell_1/strided_sliceStridedSlice"lstm_cell_1/ReadVariableOp:value:0(lstm_cell_1/strided_slice/stack:output:0*lstm_cell_1/strided_slice/stack_1:output:0*lstm_cell_1/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask
lstm_cell_1/MatMul_4MatMullstm_cell_1/mul_4:z:0"lstm_cell_1/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_1/addAddV2lstm_cell_1/BiasAdd:output:0lstm_cell_1/MatMul_4:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿf
lstm_cell_1/SigmoidSigmoidlstm_cell_1/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_1/ReadVariableOp_1ReadVariableOp#lstm_cell_1_readvariableop_resource* 
_output_shapes
:
*
dtype0r
!lstm_cell_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       t
#lstm_cell_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       t
#lstm_cell_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ³
lstm_cell_1/strided_slice_1StridedSlice$lstm_cell_1/ReadVariableOp_1:value:0*lstm_cell_1/strided_slice_1/stack:output:0,lstm_cell_1/strided_slice_1/stack_1:output:0,lstm_cell_1/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask
lstm_cell_1/MatMul_5MatMullstm_cell_1/mul_5:z:0$lstm_cell_1/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_1/add_1AddV2lstm_cell_1/BiasAdd_1:output:0lstm_cell_1/MatMul_5:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿj
lstm_cell_1/Sigmoid_1Sigmoidlstm_cell_1/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
lstm_cell_1/mul_8Mullstm_cell_1/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_1/ReadVariableOp_2ReadVariableOp#lstm_cell_1_readvariableop_resource* 
_output_shapes
:
*
dtype0r
!lstm_cell_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       t
#lstm_cell_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      t
#lstm_cell_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ³
lstm_cell_1/strided_slice_2StridedSlice$lstm_cell_1/ReadVariableOp_2:value:0*lstm_cell_1/strided_slice_2/stack:output:0,lstm_cell_1/strided_slice_2/stack_1:output:0,lstm_cell_1/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask
lstm_cell_1/MatMul_6MatMullstm_cell_1/mul_6:z:0$lstm_cell_1/strided_slice_2:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_1/add_2AddV2lstm_cell_1/BiasAdd_2:output:0lstm_cell_1/MatMul_6:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿb
lstm_cell_1/TanhTanhlstm_cell_1/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿz
lstm_cell_1/mul_9Mullstm_cell_1/Sigmoid:y:0lstm_cell_1/Tanh:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ{
lstm_cell_1/add_3AddV2lstm_cell_1/mul_8:z:0lstm_cell_1/mul_9:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_1/ReadVariableOp_3ReadVariableOp#lstm_cell_1_readvariableop_resource* 
_output_shapes
:
*
dtype0r
!lstm_cell_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"      t
#lstm_cell_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        t
#lstm_cell_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ³
lstm_cell_1/strided_slice_3StridedSlice$lstm_cell_1/ReadVariableOp_3:value:0*lstm_cell_1/strided_slice_3/stack:output:0,lstm_cell_1/strided_slice_3/stack_1:output:0,lstm_cell_1/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask
lstm_cell_1/MatMul_7MatMullstm_cell_1/mul_7:z:0$lstm_cell_1/strided_slice_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_1/add_4AddV2lstm_cell_1/BiasAdd_3:output:0lstm_cell_1/MatMul_7:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿj
lstm_cell_1/Sigmoid_2Sigmoidlstm_cell_1/add_4:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_cell_1/Tanh_1Tanhlstm_cell_1/add_3:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_1/mul_10Mullstm_cell_1/Sigmoid_2:y:0lstm_cell_1/Tanh_1:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ÷
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)lstm_cell_1_split_readvariableop_resource+lstm_cell_1_split_1_readvariableop_resource#lstm_cell_1_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_12742*
condR
while_cond_12741*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Ì
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"           
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp^lstm_cell_1/ReadVariableOp^lstm_cell_1/ReadVariableOp_1^lstm_cell_1/ReadVariableOp_2^lstm_cell_1/ReadVariableOp_3!^lstm_cell_1/split/ReadVariableOp#^lstm_cell_1/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd: : : 28
lstm_cell_1/ReadVariableOplstm_cell_1/ReadVariableOp2<
lstm_cell_1/ReadVariableOp_1lstm_cell_1/ReadVariableOp_12<
lstm_cell_1/ReadVariableOp_2lstm_cell_1/ReadVariableOp_22<
lstm_cell_1/ReadVariableOp_3lstm_cell_1/ReadVariableOp_32D
 lstm_cell_1/split/ReadVariableOp lstm_cell_1/split/ReadVariableOp2H
"lstm_cell_1/split_1/ReadVariableOp"lstm_cell_1/split_1/ReadVariableOp2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs

ª
F__inference_lstm_cell_1_layer_call_and_return_conditional_losses_13576

inputs
states_0
states_10
split_readvariableop_resource:	d.
split_1_readvariableop_resource:	+
readvariableop_resource:

identity

identity_1

identity_2¢ReadVariableOp¢ReadVariableOp_1¢ReadVariableOp_2¢ReadVariableOp_3¢split/ReadVariableOp¢split_1/ReadVariableOpE
ones_like/ShapeShapeinputs*
T0*
_output_shapes
:T
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?w
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?p
dropout/MulMulones_like:output:0dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdO
dropout/ShapeShapeones_like:output:0*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=¦
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdo
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdi
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdT
dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?t
dropout_1/MulMulones_like:output:0dropout_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdQ
dropout_1/ShapeShapeones_like:output:0*
T0*
_output_shapes
:
&dropout_1/random_uniform/RandomUniformRandomUniformdropout_1/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
dtype0]
dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=¬
dropout_1/GreaterEqualGreaterEqual/dropout_1/random_uniform/RandomUniform:output:0!dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿds
dropout_1/CastCastdropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdo
dropout_1/Mul_1Muldropout_1/Mul:z:0dropout_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdT
dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?t
dropout_2/MulMulones_like:output:0dropout_2/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdQ
dropout_2/ShapeShapeones_like:output:0*
T0*
_output_shapes
:
&dropout_2/random_uniform/RandomUniformRandomUniformdropout_2/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
dtype0]
dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=¬
dropout_2/GreaterEqualGreaterEqual/dropout_2/random_uniform/RandomUniform:output:0!dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿds
dropout_2/CastCastdropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdo
dropout_2/Mul_1Muldropout_2/Mul:z:0dropout_2/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdT
dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?t
dropout_3/MulMulones_like:output:0dropout_3/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdQ
dropout_3/ShapeShapeones_like:output:0*
T0*
_output_shapes
:
&dropout_3/random_uniform/RandomUniformRandomUniformdropout_3/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
dtype0]
dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=¬
dropout_3/GreaterEqualGreaterEqual/dropout_3/random_uniform/RandomUniform:output:0!dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿds
dropout_3/CastCastdropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdo
dropout_3/Mul_1Muldropout_3/Mul:z:0dropout_3/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdI
ones_like_1/ShapeShapestates_0*
T0*
_output_shapes
:V
ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?~
ones_like_1Fillones_like_1/Shape:output:0ones_like_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿT
dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?w
dropout_4/MulMulones_like_1:output:0dropout_4/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿS
dropout_4/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
:
&dropout_4/random_uniform/RandomUniformRandomUniformdropout_4/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0]
dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=­
dropout_4/GreaterEqualGreaterEqual/dropout_4/random_uniform/RandomUniform:output:0!dropout_4/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿt
dropout_4/CastCastdropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
dropout_4/Mul_1Muldropout_4/Mul:z:0dropout_4/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿT
dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?w
dropout_5/MulMulones_like_1:output:0dropout_5/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿS
dropout_5/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
:
&dropout_5/random_uniform/RandomUniformRandomUniformdropout_5/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0]
dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=­
dropout_5/GreaterEqualGreaterEqual/dropout_5/random_uniform/RandomUniform:output:0!dropout_5/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿt
dropout_5/CastCastdropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
dropout_5/Mul_1Muldropout_5/Mul:z:0dropout_5/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿT
dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?w
dropout_6/MulMulones_like_1:output:0dropout_6/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿS
dropout_6/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
:
&dropout_6/random_uniform/RandomUniformRandomUniformdropout_6/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0]
dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=­
dropout_6/GreaterEqualGreaterEqual/dropout_6/random_uniform/RandomUniform:output:0!dropout_6/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿt
dropout_6/CastCastdropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
dropout_6/Mul_1Muldropout_6/Mul:z:0dropout_6/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿT
dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?w
dropout_7/MulMulones_like_1:output:0dropout_7/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿS
dropout_7/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
:
&dropout_7/random_uniform/RandomUniformRandomUniformdropout_7/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0]
dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=­
dropout_7/GreaterEqualGreaterEqual/dropout_7/random_uniform/RandomUniform:output:0!dropout_7/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿt
dropout_7/CastCastdropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
dropout_7/Mul_1Muldropout_7/Mul:z:0dropout_7/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿW
mulMulinputsdropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd[
mul_1Mulinputsdropout_1/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd[
mul_2Mulinputsdropout_2/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd[
mul_3Mulinputsdropout_3/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :s
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource*
_output_shapes
:	d*
dtype0¢
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*@
_output_shapes.
,:	d:	d:	d:	d*
	num_split\
MatMulMatMulmul:z:0split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
MatMul_1MatMul	mul_1:z:0split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
MatMul_2MatMul	mul_2:z:0split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
MatMul_3MatMul	mul_3:z:0split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : s
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*
_output_shapes	
:*
dtype0
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
::::*
	num_spliti
BiasAddBiasAddMatMul:product:0split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿm
	BiasAdd_1BiasAddMatMul_1:product:0split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿm
	BiasAdd_2BiasAddMatMul_2:product:0split_1:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿm
	BiasAdd_3BiasAddMatMul_3:product:0split_1:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ^
mul_4Mulstates_0dropout_4/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ^
mul_5Mulstates_0dropout_5/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ^
mul_6Mulstates_0dropout_6/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ^
mul_7Mulstates_0dropout_7/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
ReadVariableOpReadVariableOpreadvariableop_resource* 
_output_shapes
:
*
dtype0d
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        f
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       f
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      í
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_maskh
MatMul_4MatMul	mul_4:z:0strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
addAddV2BiasAdd:output:0MatMul_4:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿN
SigmoidSigmoidadd:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿj
ReadVariableOp_1ReadVariableOpreadvariableop_resource* 
_output_shapes
:
*
dtype0f
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ÷
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_maskj
MatMul_5MatMul	mul_5:z:0strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿi
add_1AddV2BiasAdd_1:output:0MatMul_5:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿR
	Sigmoid_1Sigmoid	add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿX
mul_8MulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿj
ReadVariableOp_2ReadVariableOpreadvariableop_resource* 
_output_shapes
:
*
dtype0f
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      h
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ÷
strided_slice_2StridedSliceReadVariableOp_2:value:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_maskj
MatMul_6MatMul	mul_6:z:0strided_slice_2:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿi
add_2AddV2BiasAdd_2:output:0MatMul_6:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿJ
TanhTanh	add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿV
mul_9MulSigmoid:y:0Tanh:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿW
add_3AddV2	mul_8:z:0	mul_9:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿj
ReadVariableOp_3ReadVariableOpreadvariableop_resource* 
_output_shapes
:
*
dtype0f
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"      h
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ÷
strided_slice_3StridedSliceReadVariableOp_3:value:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_maskj
MatMul_7MatMul	mul_7:z:0strided_slice_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿi
add_4AddV2BiasAdd_3:output:0MatMul_7:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿR
	Sigmoid_2Sigmoid	add_4:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿL
Tanh_1Tanh	add_3:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ[
mul_10MulSigmoid_2:y:0
Tanh_1:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ
IdentityIdentity
mul_10:z:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ\

Identity_1Identity
mul_10:z:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ[

Identity_2Identity	add_3:z:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : 2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/0:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/1
«¤
Ä
E__inference_sequential_layer_call_and_return_conditional_losses_11536

inputs3
 embedding_embedding_lookup_11276:	MdA
.lstm_lstm_cell_1_split_readvariableop_resource:	d?
0lstm_lstm_cell_1_split_1_readvariableop_resource:	<
(lstm_lstm_cell_1_readvariableop_resource:
7
$dense_matmul_readvariableop_resource:	@3
%dense_biasadd_readvariableop_resource:@9
&dense_1_matmul_readvariableop_resource:	@M6
'dense_1_biasadd_readvariableop_resource:	M
identity¢dense/BiasAdd/ReadVariableOp¢dense/MatMul/ReadVariableOp¢dense_1/BiasAdd/ReadVariableOp¢dense_1/MatMul/ReadVariableOp¢embedding/embedding_lookup¢lstm/lstm_cell_1/ReadVariableOp¢!lstm/lstm_cell_1/ReadVariableOp_1¢!lstm/lstm_cell_1/ReadVariableOp_2¢!lstm/lstm_cell_1/ReadVariableOp_3¢%lstm/lstm_cell_1/split/ReadVariableOp¢'lstm/lstm_cell_1/split_1/ReadVariableOp¢
lstm/whileh
embedding/CastCastinputs*

DstT0*

SrcT0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿê
embedding/embedding_lookupResourceGather embedding_embedding_lookup_11276embedding/Cast:y:0*
Tindices0*3
_class)
'%loc:@embedding/embedding_lookup/11276*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd*
dtype0È
#embedding/embedding_lookup/IdentityIdentity#embedding/embedding_lookup:output:0*
T0*3
_class)
'%loc:@embedding/embedding_lookup/11276*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd
%embedding/embedding_lookup/Identity_1Identity,embedding/embedding_lookup/Identity:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿdh

lstm/ShapeShape.embedding/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:b
lstm/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: d
lstm/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:d
lstm/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ê
lstm/strided_sliceStridedSlicelstm/Shape:output:0!lstm/strided_slice/stack:output:0#lstm/strided_slice/stack_1:output:0#lstm/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskV
lstm/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :
lstm/zeros/packedPacklstm/strided_slice:output:0lstm/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:U
lstm/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    |

lstm/zerosFilllstm/zeros/packed:output:0lstm/zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿX
lstm/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :
lstm/zeros_1/packedPacklstm/strided_slice:output:0lstm/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:W
lstm/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm/zeros_1Filllstm/zeros_1/packed:output:0lstm/zeros_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
lstm/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ¨
lstm/transpose	Transpose.embedding/embedding_lookup/Identity_1:output:0lstm/transpose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿdN
lstm/Shape_1Shapelstm/transpose:y:0*
T0*
_output_shapes
:d
lstm/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: f
lstm/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:f
lstm/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ô
lstm/strided_slice_1StridedSlicelstm/Shape_1:output:0#lstm/strided_slice_1/stack:output:0%lstm/strided_slice_1/stack_1:output:0%lstm/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskk
 lstm/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÃ
lstm/TensorArrayV2TensorListReserve)lstm/TensorArrayV2/element_shape:output:0lstm/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
:lstm/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   ï
,lstm/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm/transpose:y:0Clstm/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒd
lstm/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: f
lstm/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:f
lstm/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm/strided_slice_2StridedSlicelstm/transpose:y:0#lstm/strided_slice_2/stack:output:0%lstm/strided_slice_2/stack_1:output:0%lstm/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_maskm
 lstm/lstm_cell_1/ones_like/ShapeShapelstm/strided_slice_2:output:0*
T0*
_output_shapes
:e
 lstm/lstm_cell_1/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?ª
lstm/lstm_cell_1/ones_likeFill)lstm/lstm_cell_1/ones_like/Shape:output:0)lstm/lstm_cell_1/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿde
"lstm/lstm_cell_1/ones_like_1/ShapeShapelstm/zeros:output:0*
T0*
_output_shapes
:g
"lstm/lstm_cell_1/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?±
lstm/lstm_cell_1/ones_like_1Fill+lstm/lstm_cell_1/ones_like_1/Shape:output:0+lstm/lstm_cell_1/ones_like_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm/lstm_cell_1/mulMullstm/strided_slice_2:output:0#lstm/lstm_cell_1/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm/lstm_cell_1/mul_1Mullstm/strided_slice_2:output:0#lstm/lstm_cell_1/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm/lstm_cell_1/mul_2Mullstm/strided_slice_2:output:0#lstm/lstm_cell_1/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm/lstm_cell_1/mul_3Mullstm/strided_slice_2:output:0#lstm/lstm_cell_1/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdb
 lstm/lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
%lstm/lstm_cell_1/split/ReadVariableOpReadVariableOp.lstm_lstm_cell_1_split_readvariableop_resource*
_output_shapes
:	d*
dtype0Õ
lstm/lstm_cell_1/splitSplit)lstm/lstm_cell_1/split/split_dim:output:0-lstm/lstm_cell_1/split/ReadVariableOp:value:0*
T0*@
_output_shapes.
,:	d:	d:	d:	d*
	num_split
lstm/lstm_cell_1/MatMulMatMullstm/lstm_cell_1/mul:z:0lstm/lstm_cell_1/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm/lstm_cell_1/MatMul_1MatMullstm/lstm_cell_1/mul_1:z:0lstm/lstm_cell_1/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm/lstm_cell_1/MatMul_2MatMullstm/lstm_cell_1/mul_2:z:0lstm/lstm_cell_1/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm/lstm_cell_1/MatMul_3MatMullstm/lstm_cell_1/mul_3:z:0lstm/lstm_cell_1/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
"lstm/lstm_cell_1/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
'lstm/lstm_cell_1/split_1/ReadVariableOpReadVariableOp0lstm_lstm_cell_1_split_1_readvariableop_resource*
_output_shapes	
:*
dtype0Ë
lstm/lstm_cell_1/split_1Split+lstm/lstm_cell_1/split_1/split_dim:output:0/lstm/lstm_cell_1/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
::::*
	num_split
lstm/lstm_cell_1/BiasAddBiasAdd!lstm/lstm_cell_1/MatMul:product:0!lstm/lstm_cell_1/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
lstm/lstm_cell_1/BiasAdd_1BiasAdd#lstm/lstm_cell_1/MatMul_1:product:0!lstm/lstm_cell_1/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
lstm/lstm_cell_1/BiasAdd_2BiasAdd#lstm/lstm_cell_1/MatMul_2:product:0!lstm/lstm_cell_1/split_1:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
lstm/lstm_cell_1/BiasAdd_3BiasAdd#lstm/lstm_cell_1/MatMul_3:product:0!lstm/lstm_cell_1/split_1:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm/lstm_cell_1/mul_4Mullstm/zeros:output:0%lstm/lstm_cell_1/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm/lstm_cell_1/mul_5Mullstm/zeros:output:0%lstm/lstm_cell_1/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm/lstm_cell_1/mul_6Mullstm/zeros:output:0%lstm/lstm_cell_1/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm/lstm_cell_1/mul_7Mullstm/zeros:output:0%lstm/lstm_cell_1/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm/lstm_cell_1/ReadVariableOpReadVariableOp(lstm_lstm_cell_1_readvariableop_resource* 
_output_shapes
:
*
dtype0u
$lstm/lstm_cell_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        w
&lstm/lstm_cell_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       w
&lstm/lstm_cell_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Â
lstm/lstm_cell_1/strided_sliceStridedSlice'lstm/lstm_cell_1/ReadVariableOp:value:0-lstm/lstm_cell_1/strided_slice/stack:output:0/lstm/lstm_cell_1/strided_slice/stack_1:output:0/lstm/lstm_cell_1/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask
lstm/lstm_cell_1/MatMul_4MatMullstm/lstm_cell_1/mul_4:z:0'lstm/lstm_cell_1/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm/lstm_cell_1/addAddV2!lstm/lstm_cell_1/BiasAdd:output:0#lstm/lstm_cell_1/MatMul_4:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
lstm/lstm_cell_1/SigmoidSigmoidlstm/lstm_cell_1/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!lstm/lstm_cell_1/ReadVariableOp_1ReadVariableOp(lstm_lstm_cell_1_readvariableop_resource* 
_output_shapes
:
*
dtype0w
&lstm/lstm_cell_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       y
(lstm/lstm_cell_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       y
(lstm/lstm_cell_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ì
 lstm/lstm_cell_1/strided_slice_1StridedSlice)lstm/lstm_cell_1/ReadVariableOp_1:value:0/lstm/lstm_cell_1/strided_slice_1/stack:output:01lstm/lstm_cell_1/strided_slice_1/stack_1:output:01lstm/lstm_cell_1/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask
lstm/lstm_cell_1/MatMul_5MatMullstm/lstm_cell_1/mul_5:z:0)lstm/lstm_cell_1/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm/lstm_cell_1/add_1AddV2#lstm/lstm_cell_1/BiasAdd_1:output:0#lstm/lstm_cell_1/MatMul_5:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿt
lstm/lstm_cell_1/Sigmoid_1Sigmoidlstm/lstm_cell_1/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm/lstm_cell_1/mul_8Mullstm/lstm_cell_1/Sigmoid_1:y:0lstm/zeros_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!lstm/lstm_cell_1/ReadVariableOp_2ReadVariableOp(lstm_lstm_cell_1_readvariableop_resource* 
_output_shapes
:
*
dtype0w
&lstm/lstm_cell_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       y
(lstm/lstm_cell_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      y
(lstm/lstm_cell_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ì
 lstm/lstm_cell_1/strided_slice_2StridedSlice)lstm/lstm_cell_1/ReadVariableOp_2:value:0/lstm/lstm_cell_1/strided_slice_2/stack:output:01lstm/lstm_cell_1/strided_slice_2/stack_1:output:01lstm/lstm_cell_1/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask
lstm/lstm_cell_1/MatMul_6MatMullstm/lstm_cell_1/mul_6:z:0)lstm/lstm_cell_1/strided_slice_2:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm/lstm_cell_1/add_2AddV2#lstm/lstm_cell_1/BiasAdd_2:output:0#lstm/lstm_cell_1/MatMul_6:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿl
lstm/lstm_cell_1/TanhTanhlstm/lstm_cell_1/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm/lstm_cell_1/mul_9Mullstm/lstm_cell_1/Sigmoid:y:0lstm/lstm_cell_1/Tanh:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm/lstm_cell_1/add_3AddV2lstm/lstm_cell_1/mul_8:z:0lstm/lstm_cell_1/mul_9:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!lstm/lstm_cell_1/ReadVariableOp_3ReadVariableOp(lstm_lstm_cell_1_readvariableop_resource* 
_output_shapes
:
*
dtype0w
&lstm/lstm_cell_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"      y
(lstm/lstm_cell_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        y
(lstm/lstm_cell_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ì
 lstm/lstm_cell_1/strided_slice_3StridedSlice)lstm/lstm_cell_1/ReadVariableOp_3:value:0/lstm/lstm_cell_1/strided_slice_3/stack:output:01lstm/lstm_cell_1/strided_slice_3/stack_1:output:01lstm/lstm_cell_1/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask
lstm/lstm_cell_1/MatMul_7MatMullstm/lstm_cell_1/mul_7:z:0)lstm/lstm_cell_1/strided_slice_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm/lstm_cell_1/add_4AddV2#lstm/lstm_cell_1/BiasAdd_3:output:0#lstm/lstm_cell_1/MatMul_7:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿt
lstm/lstm_cell_1/Sigmoid_2Sigmoidlstm/lstm_cell_1/add_4:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿn
lstm/lstm_cell_1/Tanh_1Tanhlstm/lstm_cell_1/add_3:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm/lstm_cell_1/mul_10Mullstm/lstm_cell_1/Sigmoid_2:y:0lstm/lstm_cell_1/Tanh_1:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
"lstm/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Ç
lstm/TensorArrayV2_1TensorListReserve+lstm/TensorArrayV2_1/element_shape:output:0lstm/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒK
	lstm/timeConst*
_output_shapes
: *
dtype0*
value	B : h
lstm/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿY
lstm/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ½

lstm/whileWhile lstm/while/loop_counter:output:0&lstm/while/maximum_iterations:output:0lstm/time:output:0lstm/TensorArrayV2_1:handle:0lstm/zeros:output:0lstm/zeros_1:output:0lstm/strided_slice_1:output:0<lstm/TensorArrayUnstack/TensorListFromTensor:output_handle:0.lstm_lstm_cell_1_split_readvariableop_resource0lstm_lstm_cell_1_split_1_readvariableop_resource(lstm_lstm_cell_1_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *!
bodyR
lstm_while_body_11387*!
condR
lstm_while_cond_11386*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 
5lstm/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Û
'lstm/TensorArrayV2Stack/TensorListStackTensorListStacklstm/while:output:3>lstm/TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
element_dtype0m
lstm/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿf
lstm/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: f
lstm/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¡
lstm/strided_slice_3StridedSlice0lstm/TensorArrayV2Stack/TensorListStack:tensor:0#lstm/strided_slice_3/stack:output:0%lstm/strided_slice_3/stack_1:output:0%lstm/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maskj
lstm/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ¯
lstm/transpose_1	Transpose0lstm/TensorArrayV2Stack/TensorListStack:tensor:0lstm/transpose_1/perm:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`
lstm/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	@*
dtype0
dense/MatMulMatMullstm/strided_slice_3:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@~
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@\

dense/ReluReludense/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@h
dropout/IdentityIdentitydense/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes
:	@M*
dtype0
dense_1/MatMulMatMuldropout/Identity:output:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿM
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes	
:M*
dtype0
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿMg
dense_1/SoftmaxSoftmaxdense_1/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿMi
IdentityIdentitydense_1/Softmax:softmax:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿMÎ
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^embedding/embedding_lookup ^lstm/lstm_cell_1/ReadVariableOp"^lstm/lstm_cell_1/ReadVariableOp_1"^lstm/lstm_cell_1/ReadVariableOp_2"^lstm/lstm_cell_1/ReadVariableOp_3&^lstm/lstm_cell_1/split/ReadVariableOp(^lstm/lstm_cell_1/split_1/ReadVariableOp^lstm/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : : : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp28
embedding/embedding_lookupembedding/embedding_lookup2B
lstm/lstm_cell_1/ReadVariableOplstm/lstm_cell_1/ReadVariableOp2F
!lstm/lstm_cell_1/ReadVariableOp_1!lstm/lstm_cell_1/ReadVariableOp_12F
!lstm/lstm_cell_1/ReadVariableOp_2!lstm/lstm_cell_1/ReadVariableOp_22F
!lstm/lstm_cell_1/ReadVariableOp_3!lstm/lstm_cell_1/ReadVariableOp_32N
%lstm/lstm_cell_1/split/ReadVariableOp%lstm/lstm_cell_1/split/ReadVariableOp2R
'lstm/lstm_cell_1/split_1/ReadVariableOp'lstm/lstm_cell_1/split_1/ReadVariableOp2

lstm/while
lstm/while:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
à	
Å
*__inference_sequential_layer_call_fn_11251

inputs
unknown:	Md
	unknown_0:	d
	unknown_1:	
	unknown_2:

	unknown_3:	@
	unknown_4:@
	unknown_5:	@M
	unknown_6:	M
identity¢StatefulPartitionedCall©
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿM**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_10629p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿM`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¯
¹
while_cond_9932
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_12
.while_while_cond_9932___redundant_placeholder02
.while_while_cond_9932___redundant_placeholder12
.while_while_cond_9932___redundant_placeholder22
.while_while_cond_9932___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:

Ý
?__inference_lstm_layer_call_and_return_conditional_losses_12262
inputs_0<
)lstm_cell_1_split_readvariableop_resource:	d:
+lstm_cell_1_split_1_readvariableop_resource:	7
#lstm_cell_1_readvariableop_resource:

identity¢lstm_cell_1/ReadVariableOp¢lstm_cell_1/ReadVariableOp_1¢lstm_cell_1/ReadVariableOp_2¢lstm_cell_1/ReadVariableOp_3¢ lstm_cell_1/split/ReadVariableOp¢"lstm_cell_1/split_1/ReadVariableOp¢while=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
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
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿdD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_maskc
lstm_cell_1/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
:`
lstm_cell_1/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
lstm_cell_1/ones_likeFill$lstm_cell_1/ones_like/Shape:output:0$lstm_cell_1/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd[
lstm_cell_1/ones_like_1/ShapeShapezeros:output:0*
T0*
_output_shapes
:b
lstm_cell_1/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?¢
lstm_cell_1/ones_like_1Fill&lstm_cell_1/ones_like_1/Shape:output:0&lstm_cell_1/ones_like_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_1/mulMulstrided_slice_2:output:0lstm_cell_1/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_cell_1/mul_1Mulstrided_slice_2:output:0lstm_cell_1/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_cell_1/mul_2Mulstrided_slice_2:output:0lstm_cell_1/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_cell_1/mul_3Mulstrided_slice_2:output:0lstm_cell_1/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd]
lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
 lstm_cell_1/split/ReadVariableOpReadVariableOp)lstm_cell_1_split_readvariableop_resource*
_output_shapes
:	d*
dtype0Æ
lstm_cell_1/splitSplit$lstm_cell_1/split/split_dim:output:0(lstm_cell_1/split/ReadVariableOp:value:0*
T0*@
_output_shapes.
,:	d:	d:	d:	d*
	num_split
lstm_cell_1/MatMulMatMullstm_cell_1/mul:z:0lstm_cell_1/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_1/MatMul_1MatMullstm_cell_1/mul_1:z:0lstm_cell_1/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_1/MatMul_2MatMullstm_cell_1/mul_2:z:0lstm_cell_1/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_1/MatMul_3MatMullstm_cell_1/mul_3:z:0lstm_cell_1/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
lstm_cell_1/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
"lstm_cell_1/split_1/ReadVariableOpReadVariableOp+lstm_cell_1_split_1_readvariableop_resource*
_output_shapes	
:*
dtype0¼
lstm_cell_1/split_1Split&lstm_cell_1/split_1/split_dim:output:0*lstm_cell_1/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
::::*
	num_split
lstm_cell_1/BiasAddBiasAddlstm_cell_1/MatMul:product:0lstm_cell_1/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_1/BiasAdd_1BiasAddlstm_cell_1/MatMul_1:product:0lstm_cell_1/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_1/BiasAdd_2BiasAddlstm_cell_1/MatMul_2:product:0lstm_cell_1/split_1:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_1/BiasAdd_3BiasAddlstm_cell_1/MatMul_3:product:0lstm_cell_1/split_1:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}
lstm_cell_1/mul_4Mulzeros:output:0 lstm_cell_1/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}
lstm_cell_1/mul_5Mulzeros:output:0 lstm_cell_1/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}
lstm_cell_1/mul_6Mulzeros:output:0 lstm_cell_1/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}
lstm_cell_1/mul_7Mulzeros:output:0 lstm_cell_1/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_1/ReadVariableOpReadVariableOp#lstm_cell_1_readvariableop_resource* 
_output_shapes
:
*
dtype0p
lstm_cell_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        r
!lstm_cell_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       r
!lstm_cell_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ©
lstm_cell_1/strided_sliceStridedSlice"lstm_cell_1/ReadVariableOp:value:0(lstm_cell_1/strided_slice/stack:output:0*lstm_cell_1/strided_slice/stack_1:output:0*lstm_cell_1/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask
lstm_cell_1/MatMul_4MatMullstm_cell_1/mul_4:z:0"lstm_cell_1/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_1/addAddV2lstm_cell_1/BiasAdd:output:0lstm_cell_1/MatMul_4:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿf
lstm_cell_1/SigmoidSigmoidlstm_cell_1/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_1/ReadVariableOp_1ReadVariableOp#lstm_cell_1_readvariableop_resource* 
_output_shapes
:
*
dtype0r
!lstm_cell_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       t
#lstm_cell_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       t
#lstm_cell_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ³
lstm_cell_1/strided_slice_1StridedSlice$lstm_cell_1/ReadVariableOp_1:value:0*lstm_cell_1/strided_slice_1/stack:output:0,lstm_cell_1/strided_slice_1/stack_1:output:0,lstm_cell_1/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask
lstm_cell_1/MatMul_5MatMullstm_cell_1/mul_5:z:0$lstm_cell_1/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_1/add_1AddV2lstm_cell_1/BiasAdd_1:output:0lstm_cell_1/MatMul_5:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿj
lstm_cell_1/Sigmoid_1Sigmoidlstm_cell_1/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
lstm_cell_1/mul_8Mullstm_cell_1/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_1/ReadVariableOp_2ReadVariableOp#lstm_cell_1_readvariableop_resource* 
_output_shapes
:
*
dtype0r
!lstm_cell_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       t
#lstm_cell_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      t
#lstm_cell_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ³
lstm_cell_1/strided_slice_2StridedSlice$lstm_cell_1/ReadVariableOp_2:value:0*lstm_cell_1/strided_slice_2/stack:output:0,lstm_cell_1/strided_slice_2/stack_1:output:0,lstm_cell_1/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask
lstm_cell_1/MatMul_6MatMullstm_cell_1/mul_6:z:0$lstm_cell_1/strided_slice_2:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_1/add_2AddV2lstm_cell_1/BiasAdd_2:output:0lstm_cell_1/MatMul_6:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿb
lstm_cell_1/TanhTanhlstm_cell_1/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿz
lstm_cell_1/mul_9Mullstm_cell_1/Sigmoid:y:0lstm_cell_1/Tanh:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ{
lstm_cell_1/add_3AddV2lstm_cell_1/mul_8:z:0lstm_cell_1/mul_9:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_1/ReadVariableOp_3ReadVariableOp#lstm_cell_1_readvariableop_resource* 
_output_shapes
:
*
dtype0r
!lstm_cell_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"      t
#lstm_cell_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        t
#lstm_cell_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ³
lstm_cell_1/strided_slice_3StridedSlice$lstm_cell_1/ReadVariableOp_3:value:0*lstm_cell_1/strided_slice_3/stack:output:0,lstm_cell_1/strided_slice_3/stack_1:output:0,lstm_cell_1/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask
lstm_cell_1/MatMul_7MatMullstm_cell_1/mul_7:z:0$lstm_cell_1/strided_slice_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_1/add_4AddV2lstm_cell_1/BiasAdd_3:output:0lstm_cell_1/MatMul_7:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿj
lstm_cell_1/Sigmoid_2Sigmoidlstm_cell_1/add_4:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_cell_1/Tanh_1Tanhlstm_cell_1/add_3:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_1/mul_10Mullstm_cell_1/Sigmoid_2:y:0lstm_cell_1/Tanh_1:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ÷
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)lstm_cell_1_split_readvariableop_resource+lstm_cell_1_split_1_readvariableop_resource#lstm_cell_1_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_12128*
condR
while_cond_12127*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Ì
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"           
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp^lstm_cell_1/ReadVariableOp^lstm_cell_1/ReadVariableOp_1^lstm_cell_1/ReadVariableOp_2^lstm_cell_1/ReadVariableOp_3!^lstm_cell_1/split/ReadVariableOp#^lstm_cell_1/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd: : : 28
lstm_cell_1/ReadVariableOplstm_cell_1/ReadVariableOp2<
lstm_cell_1/ReadVariableOp_1lstm_cell_1/ReadVariableOp_12<
lstm_cell_1/ReadVariableOp_2lstm_cell_1/ReadVariableOp_22<
lstm_cell_1/ReadVariableOp_3lstm_cell_1/ReadVariableOp_32D
 lstm_cell_1/split/ReadVariableOp lstm_cell_1/split/ReadVariableOp2H
"lstm_cell_1/split_1/ReadVariableOp"lstm_cell_1/split_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd
"
_user_specified_name
inputs/0
Ý	
¡
D__inference_embedding_layer_call_and_return_conditional_losses_10333

inputs)
embedding_lookup_10327:	Md
identity¢embedding_lookup^
CastCastinputs*

DstT0*

SrcT0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÂ
embedding_lookupResourceGatherembedding_lookup_10327Cast:y:0*
Tindices0*)
_class
loc:@embedding_lookup/10327*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd*
dtype0ª
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*)
_class
loc:@embedding_lookup/10327*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿdY
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: 2$
embedding_lookupembedding_lookup:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

²
$__inference_lstm_layer_call_fn_12019

inputs
unknown:	d
	unknown_0:	
	unknown_1:

identity¢StatefulPartitionedCallâ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_lstm_layer_call_and_return_conditional_losses_11075p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd: : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs
´
¾
while_cond_10237
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_10237___redundant_placeholder03
/while_while_cond_10237___redundant_placeholder13
/while_while_cond_10237___redundant_placeholder23
/while_while_cond_10237___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
´
¾
while_cond_12127
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_12127___redundant_placeholder03
/while_while_cond_12127___redundant_placeholder13
/while_while_cond_12127___redundant_placeholder23
/while_while_cond_12127___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
Õ
`
B__inference_dropout_layer_call_and_return_conditional_losses_13282

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
ùt
	
while_body_10445
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
1while_lstm_cell_1_split_readvariableop_resource_0:	dB
3while_lstm_cell_1_split_1_readvariableop_resource_0:	?
+while_lstm_cell_1_readvariableop_resource_0:

while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
/while_lstm_cell_1_split_readvariableop_resource:	d@
1while_lstm_cell_1_split_1_readvariableop_resource:	=
)while_lstm_cell_1_readvariableop_resource:
¢ while/lstm_cell_1/ReadVariableOp¢"while/lstm_cell_1/ReadVariableOp_1¢"while/lstm_cell_1/ReadVariableOp_2¢"while/lstm_cell_1/ReadVariableOp_3¢&while/lstm_cell_1/split/ReadVariableOp¢(while/lstm_cell_1/split_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype0
!while/lstm_cell_1/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:f
!while/lstm_cell_1/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?­
while/lstm_cell_1/ones_likeFill*while/lstm_cell_1/ones_like/Shape:output:0*while/lstm_cell_1/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdf
#while/lstm_cell_1/ones_like_1/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:h
#while/lstm_cell_1/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?´
while/lstm_cell_1/ones_like_1Fill,while/lstm_cell_1/ones_like_1/Shape:output:0,while/lstm_cell_1/ones_like_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦
while/lstm_cell_1/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0$while/lstm_cell_1/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd¨
while/lstm_cell_1/mul_1Mul0while/TensorArrayV2Read/TensorListGetItem:item:0$while/lstm_cell_1/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd¨
while/lstm_cell_1/mul_2Mul0while/TensorArrayV2Read/TensorListGetItem:item:0$while/lstm_cell_1/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd¨
while/lstm_cell_1/mul_3Mul0while/TensorArrayV2Read/TensorListGetItem:item:0$while/lstm_cell_1/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdc
!while/lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
&while/lstm_cell_1/split/ReadVariableOpReadVariableOp1while_lstm_cell_1_split_readvariableop_resource_0*
_output_shapes
:	d*
dtype0Ø
while/lstm_cell_1/splitSplit*while/lstm_cell_1/split/split_dim:output:0.while/lstm_cell_1/split/ReadVariableOp:value:0*
T0*@
_output_shapes.
,:	d:	d:	d:	d*
	num_split
while/lstm_cell_1/MatMulMatMulwhile/lstm_cell_1/mul:z:0 while/lstm_cell_1/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_1/MatMul_1MatMulwhile/lstm_cell_1/mul_1:z:0 while/lstm_cell_1/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_1/MatMul_2MatMulwhile/lstm_cell_1/mul_2:z:0 while/lstm_cell_1/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_1/MatMul_3MatMulwhile/lstm_cell_1/mul_3:z:0 while/lstm_cell_1/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
#while/lstm_cell_1/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
(while/lstm_cell_1/split_1/ReadVariableOpReadVariableOp3while_lstm_cell_1_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype0Î
while/lstm_cell_1/split_1Split,while/lstm_cell_1/split_1/split_dim:output:00while/lstm_cell_1/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
::::*
	num_split
while/lstm_cell_1/BiasAddBiasAdd"while/lstm_cell_1/MatMul:product:0"while/lstm_cell_1/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ£
while/lstm_cell_1/BiasAdd_1BiasAdd$while/lstm_cell_1/MatMul_1:product:0"while/lstm_cell_1/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ£
while/lstm_cell_1/BiasAdd_2BiasAdd$while/lstm_cell_1/MatMul_2:product:0"while/lstm_cell_1/split_1:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ£
while/lstm_cell_1/BiasAdd_3BiasAdd$while/lstm_cell_1/MatMul_3:product:0"while/lstm_cell_1/split_1:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_1/mul_4Mulwhile_placeholder_2&while/lstm_cell_1/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_1/mul_5Mulwhile_placeholder_2&while/lstm_cell_1/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_1/mul_6Mulwhile_placeholder_2&while/lstm_cell_1/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_1/mul_7Mulwhile_placeholder_2&while/lstm_cell_1/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 while/lstm_cell_1/ReadVariableOpReadVariableOp+while_lstm_cell_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0v
%while/lstm_cell_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'while/lstm_cell_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       x
'while/lstm_cell_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ç
while/lstm_cell_1/strided_sliceStridedSlice(while/lstm_cell_1/ReadVariableOp:value:0.while/lstm_cell_1/strided_slice/stack:output:00while/lstm_cell_1/strided_slice/stack_1:output:00while/lstm_cell_1/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask
while/lstm_cell_1/MatMul_4MatMulwhile/lstm_cell_1/mul_4:z:0(while/lstm_cell_1/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_1/addAddV2"while/lstm_cell_1/BiasAdd:output:0$while/lstm_cell_1/MatMul_4:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
while/lstm_cell_1/SigmoidSigmoidwhile/lstm_cell_1/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"while/lstm_cell_1/ReadVariableOp_1ReadVariableOp+while_lstm_cell_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0x
'while/lstm_cell_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       z
)while/lstm_cell_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       z
)while/lstm_cell_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ñ
!while/lstm_cell_1/strided_slice_1StridedSlice*while/lstm_cell_1/ReadVariableOp_1:value:00while/lstm_cell_1/strided_slice_1/stack:output:02while/lstm_cell_1/strided_slice_1/stack_1:output:02while/lstm_cell_1/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask 
while/lstm_cell_1/MatMul_5MatMulwhile/lstm_cell_1/mul_5:z:0*while/lstm_cell_1/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_1/add_1AddV2$while/lstm_cell_1/BiasAdd_1:output:0$while/lstm_cell_1/MatMul_5:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
while/lstm_cell_1/Sigmoid_1Sigmoidwhile/lstm_cell_1/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_1/mul_8Mulwhile/lstm_cell_1/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"while/lstm_cell_1/ReadVariableOp_2ReadVariableOp+while_lstm_cell_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0x
'while/lstm_cell_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       z
)while/lstm_cell_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      z
)while/lstm_cell_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ñ
!while/lstm_cell_1/strided_slice_2StridedSlice*while/lstm_cell_1/ReadVariableOp_2:value:00while/lstm_cell_1/strided_slice_2/stack:output:02while/lstm_cell_1/strided_slice_2/stack_1:output:02while/lstm_cell_1/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask 
while/lstm_cell_1/MatMul_6MatMulwhile/lstm_cell_1/mul_6:z:0*while/lstm_cell_1/strided_slice_2:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_1/add_2AddV2$while/lstm_cell_1/BiasAdd_2:output:0$while/lstm_cell_1/MatMul_6:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿn
while/lstm_cell_1/TanhTanhwhile/lstm_cell_1/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_1/mul_9Mulwhile/lstm_cell_1/Sigmoid:y:0while/lstm_cell_1/Tanh:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_1/add_3AddV2while/lstm_cell_1/mul_8:z:0while/lstm_cell_1/mul_9:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"while/lstm_cell_1/ReadVariableOp_3ReadVariableOp+while_lstm_cell_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0x
'while/lstm_cell_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"      z
)while/lstm_cell_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        z
)while/lstm_cell_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ñ
!while/lstm_cell_1/strided_slice_3StridedSlice*while/lstm_cell_1/ReadVariableOp_3:value:00while/lstm_cell_1/strided_slice_3/stack:output:02while/lstm_cell_1/strided_slice_3/stack_1:output:02while/lstm_cell_1/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask 
while/lstm_cell_1/MatMul_7MatMulwhile/lstm_cell_1/mul_7:z:0*while/lstm_cell_1/strided_slice_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_1/add_4AddV2$while/lstm_cell_1/BiasAdd_3:output:0$while/lstm_cell_1/MatMul_7:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
while/lstm_cell_1/Sigmoid_2Sigmoidwhile/lstm_cell_1/add_4:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
while/lstm_cell_1/Tanh_1Tanhwhile/lstm_cell_1/add_3:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_1/mul_10Mulwhile/lstm_cell_1/Sigmoid_2:y:0while/lstm_cell_1/Tanh_1:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÅ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_1/mul_10:z:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :éèÒz
while/Identity_4Identitywhile/lstm_cell_1/mul_10:z:0^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿy
while/Identity_5Identitywhile/lstm_cell_1/add_3:z:0^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ²

while/NoOpNoOp!^while/lstm_cell_1/ReadVariableOp#^while/lstm_cell_1/ReadVariableOp_1#^while/lstm_cell_1/ReadVariableOp_2#^while/lstm_cell_1/ReadVariableOp_3'^while/lstm_cell_1/split/ReadVariableOp)^while/lstm_cell_1/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"X
)while_lstm_cell_1_readvariableop_resource+while_lstm_cell_1_readvariableop_resource_0"h
1while_lstm_cell_1_split_1_readvariableop_resource3while_lstm_cell_1_split_1_readvariableop_resource_0"d
/while_lstm_cell_1_split_readvariableop_resource1while_lstm_cell_1_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2D
 while/lstm_cell_1/ReadVariableOp while/lstm_cell_1/ReadVariableOp2H
"while/lstm_cell_1/ReadVariableOp_1"while/lstm_cell_1/ReadVariableOp_12H
"while/lstm_cell_1/ReadVariableOp_2"while/lstm_cell_1/ReadVariableOp_22H
"while/lstm_cell_1/ReadVariableOp_3"while/lstm_cell_1/ReadVariableOp_32P
&while/lstm_cell_1/split/ReadVariableOp&while/lstm_cell_1/split/ReadVariableOp2T
(while/lstm_cell_1/split_1/ReadVariableOp(while/lstm_cell_1/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
½

%__inference_dense_layer_call_fn_13256

inputs
unknown:	@
	unknown_0:@
identity¢StatefulPartitionedCallÕ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_10598o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ð	
a
B__inference_dropout_layer_call_and_return_conditional_losses_13294

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?¦
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
±È
Û
?__inference_lstm_layer_call_and_return_conditional_losses_13247

inputs<
)lstm_cell_1_split_readvariableop_resource:	d:
+lstm_cell_1_split_1_readvariableop_resource:	7
#lstm_cell_1_readvariableop_resource:

identity¢lstm_cell_1/ReadVariableOp¢lstm_cell_1/ReadVariableOp_1¢lstm_cell_1/ReadVariableOp_2¢lstm_cell_1/ReadVariableOp_3¢ lstm_cell_1/split/ReadVariableOp¢"lstm_cell_1/split_1/ReadVariableOp¢while;
ShapeShapeinputs*
T0*
_output_shapes
:]
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
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿdD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_maskc
lstm_cell_1/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
:`
lstm_cell_1/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
lstm_cell_1/ones_likeFill$lstm_cell_1/ones_like/Shape:output:0$lstm_cell_1/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd^
lstm_cell_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?
lstm_cell_1/dropout/MulMullstm_cell_1/ones_like:output:0"lstm_cell_1/dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdg
lstm_cell_1/dropout/ShapeShapelstm_cell_1/ones_like:output:0*
T0*
_output_shapes
:¤
0lstm_cell_1/dropout/random_uniform/RandomUniformRandomUniform"lstm_cell_1/dropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
dtype0g
"lstm_cell_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=Ê
 lstm_cell_1/dropout/GreaterEqualGreaterEqual9lstm_cell_1/dropout/random_uniform/RandomUniform:output:0+lstm_cell_1/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_cell_1/dropout/CastCast$lstm_cell_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_cell_1/dropout/Mul_1Mullstm_cell_1/dropout/Mul:z:0lstm_cell_1/dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd`
lstm_cell_1/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?
lstm_cell_1/dropout_1/MulMullstm_cell_1/ones_like:output:0$lstm_cell_1/dropout_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdi
lstm_cell_1/dropout_1/ShapeShapelstm_cell_1/ones_like:output:0*
T0*
_output_shapes
:¨
2lstm_cell_1/dropout_1/random_uniform/RandomUniformRandomUniform$lstm_cell_1/dropout_1/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
dtype0i
$lstm_cell_1/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=Ð
"lstm_cell_1/dropout_1/GreaterEqualGreaterEqual;lstm_cell_1/dropout_1/random_uniform/RandomUniform:output:0-lstm_cell_1/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_cell_1/dropout_1/CastCast&lstm_cell_1/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_cell_1/dropout_1/Mul_1Mullstm_cell_1/dropout_1/Mul:z:0lstm_cell_1/dropout_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd`
lstm_cell_1/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?
lstm_cell_1/dropout_2/MulMullstm_cell_1/ones_like:output:0$lstm_cell_1/dropout_2/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdi
lstm_cell_1/dropout_2/ShapeShapelstm_cell_1/ones_like:output:0*
T0*
_output_shapes
:¨
2lstm_cell_1/dropout_2/random_uniform/RandomUniformRandomUniform$lstm_cell_1/dropout_2/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
dtype0i
$lstm_cell_1/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=Ð
"lstm_cell_1/dropout_2/GreaterEqualGreaterEqual;lstm_cell_1/dropout_2/random_uniform/RandomUniform:output:0-lstm_cell_1/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_cell_1/dropout_2/CastCast&lstm_cell_1/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_cell_1/dropout_2/Mul_1Mullstm_cell_1/dropout_2/Mul:z:0lstm_cell_1/dropout_2/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd`
lstm_cell_1/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?
lstm_cell_1/dropout_3/MulMullstm_cell_1/ones_like:output:0$lstm_cell_1/dropout_3/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdi
lstm_cell_1/dropout_3/ShapeShapelstm_cell_1/ones_like:output:0*
T0*
_output_shapes
:¨
2lstm_cell_1/dropout_3/random_uniform/RandomUniformRandomUniform$lstm_cell_1/dropout_3/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
dtype0i
$lstm_cell_1/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=Ð
"lstm_cell_1/dropout_3/GreaterEqualGreaterEqual;lstm_cell_1/dropout_3/random_uniform/RandomUniform:output:0-lstm_cell_1/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_cell_1/dropout_3/CastCast&lstm_cell_1/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_cell_1/dropout_3/Mul_1Mullstm_cell_1/dropout_3/Mul:z:0lstm_cell_1/dropout_3/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd[
lstm_cell_1/ones_like_1/ShapeShapezeros:output:0*
T0*
_output_shapes
:b
lstm_cell_1/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?¢
lstm_cell_1/ones_like_1Fill&lstm_cell_1/ones_like_1/Shape:output:0&lstm_cell_1/ones_like_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
lstm_cell_1/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?
lstm_cell_1/dropout_4/MulMul lstm_cell_1/ones_like_1:output:0$lstm_cell_1/dropout_4/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿk
lstm_cell_1/dropout_4/ShapeShape lstm_cell_1/ones_like_1:output:0*
T0*
_output_shapes
:©
2lstm_cell_1/dropout_4/random_uniform/RandomUniformRandomUniform$lstm_cell_1/dropout_4/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0i
$lstm_cell_1/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=Ñ
"lstm_cell_1/dropout_4/GreaterEqualGreaterEqual;lstm_cell_1/dropout_4/random_uniform/RandomUniform:output:0-lstm_cell_1/dropout_4/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_1/dropout_4/CastCast&lstm_cell_1/dropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_1/dropout_4/Mul_1Mullstm_cell_1/dropout_4/Mul:z:0lstm_cell_1/dropout_4/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
lstm_cell_1/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?
lstm_cell_1/dropout_5/MulMul lstm_cell_1/ones_like_1:output:0$lstm_cell_1/dropout_5/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿk
lstm_cell_1/dropout_5/ShapeShape lstm_cell_1/ones_like_1:output:0*
T0*
_output_shapes
:©
2lstm_cell_1/dropout_5/random_uniform/RandomUniformRandomUniform$lstm_cell_1/dropout_5/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0i
$lstm_cell_1/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=Ñ
"lstm_cell_1/dropout_5/GreaterEqualGreaterEqual;lstm_cell_1/dropout_5/random_uniform/RandomUniform:output:0-lstm_cell_1/dropout_5/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_1/dropout_5/CastCast&lstm_cell_1/dropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_1/dropout_5/Mul_1Mullstm_cell_1/dropout_5/Mul:z:0lstm_cell_1/dropout_5/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
lstm_cell_1/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?
lstm_cell_1/dropout_6/MulMul lstm_cell_1/ones_like_1:output:0$lstm_cell_1/dropout_6/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿk
lstm_cell_1/dropout_6/ShapeShape lstm_cell_1/ones_like_1:output:0*
T0*
_output_shapes
:©
2lstm_cell_1/dropout_6/random_uniform/RandomUniformRandomUniform$lstm_cell_1/dropout_6/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0i
$lstm_cell_1/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=Ñ
"lstm_cell_1/dropout_6/GreaterEqualGreaterEqual;lstm_cell_1/dropout_6/random_uniform/RandomUniform:output:0-lstm_cell_1/dropout_6/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_1/dropout_6/CastCast&lstm_cell_1/dropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_1/dropout_6/Mul_1Mullstm_cell_1/dropout_6/Mul:z:0lstm_cell_1/dropout_6/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
lstm_cell_1/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?
lstm_cell_1/dropout_7/MulMul lstm_cell_1/ones_like_1:output:0$lstm_cell_1/dropout_7/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿk
lstm_cell_1/dropout_7/ShapeShape lstm_cell_1/ones_like_1:output:0*
T0*
_output_shapes
:©
2lstm_cell_1/dropout_7/random_uniform/RandomUniformRandomUniform$lstm_cell_1/dropout_7/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0i
$lstm_cell_1/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=Ñ
"lstm_cell_1/dropout_7/GreaterEqualGreaterEqual;lstm_cell_1/dropout_7/random_uniform/RandomUniform:output:0-lstm_cell_1/dropout_7/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_1/dropout_7/CastCast&lstm_cell_1/dropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_1/dropout_7/Mul_1Mullstm_cell_1/dropout_7/Mul:z:0lstm_cell_1/dropout_7/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_1/mulMulstrided_slice_2:output:0lstm_cell_1/dropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_cell_1/mul_1Mulstrided_slice_2:output:0lstm_cell_1/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_cell_1/mul_2Mulstrided_slice_2:output:0lstm_cell_1/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_cell_1/mul_3Mulstrided_slice_2:output:0lstm_cell_1/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd]
lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
 lstm_cell_1/split/ReadVariableOpReadVariableOp)lstm_cell_1_split_readvariableop_resource*
_output_shapes
:	d*
dtype0Æ
lstm_cell_1/splitSplit$lstm_cell_1/split/split_dim:output:0(lstm_cell_1/split/ReadVariableOp:value:0*
T0*@
_output_shapes.
,:	d:	d:	d:	d*
	num_split
lstm_cell_1/MatMulMatMullstm_cell_1/mul:z:0lstm_cell_1/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_1/MatMul_1MatMullstm_cell_1/mul_1:z:0lstm_cell_1/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_1/MatMul_2MatMullstm_cell_1/mul_2:z:0lstm_cell_1/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_1/MatMul_3MatMullstm_cell_1/mul_3:z:0lstm_cell_1/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
lstm_cell_1/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
"lstm_cell_1/split_1/ReadVariableOpReadVariableOp+lstm_cell_1_split_1_readvariableop_resource*
_output_shapes	
:*
dtype0¼
lstm_cell_1/split_1Split&lstm_cell_1/split_1/split_dim:output:0*lstm_cell_1/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
::::*
	num_split
lstm_cell_1/BiasAddBiasAddlstm_cell_1/MatMul:product:0lstm_cell_1/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_1/BiasAdd_1BiasAddlstm_cell_1/MatMul_1:product:0lstm_cell_1/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_1/BiasAdd_2BiasAddlstm_cell_1/MatMul_2:product:0lstm_cell_1/split_1:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_1/BiasAdd_3BiasAddlstm_cell_1/MatMul_3:product:0lstm_cell_1/split_1:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|
lstm_cell_1/mul_4Mulzeros:output:0lstm_cell_1/dropout_4/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|
lstm_cell_1/mul_5Mulzeros:output:0lstm_cell_1/dropout_5/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|
lstm_cell_1/mul_6Mulzeros:output:0lstm_cell_1/dropout_6/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|
lstm_cell_1/mul_7Mulzeros:output:0lstm_cell_1/dropout_7/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_1/ReadVariableOpReadVariableOp#lstm_cell_1_readvariableop_resource* 
_output_shapes
:
*
dtype0p
lstm_cell_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        r
!lstm_cell_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       r
!lstm_cell_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ©
lstm_cell_1/strided_sliceStridedSlice"lstm_cell_1/ReadVariableOp:value:0(lstm_cell_1/strided_slice/stack:output:0*lstm_cell_1/strided_slice/stack_1:output:0*lstm_cell_1/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask
lstm_cell_1/MatMul_4MatMullstm_cell_1/mul_4:z:0"lstm_cell_1/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_1/addAddV2lstm_cell_1/BiasAdd:output:0lstm_cell_1/MatMul_4:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿf
lstm_cell_1/SigmoidSigmoidlstm_cell_1/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_1/ReadVariableOp_1ReadVariableOp#lstm_cell_1_readvariableop_resource* 
_output_shapes
:
*
dtype0r
!lstm_cell_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       t
#lstm_cell_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       t
#lstm_cell_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ³
lstm_cell_1/strided_slice_1StridedSlice$lstm_cell_1/ReadVariableOp_1:value:0*lstm_cell_1/strided_slice_1/stack:output:0,lstm_cell_1/strided_slice_1/stack_1:output:0,lstm_cell_1/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask
lstm_cell_1/MatMul_5MatMullstm_cell_1/mul_5:z:0$lstm_cell_1/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_1/add_1AddV2lstm_cell_1/BiasAdd_1:output:0lstm_cell_1/MatMul_5:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿj
lstm_cell_1/Sigmoid_1Sigmoidlstm_cell_1/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
lstm_cell_1/mul_8Mullstm_cell_1/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_1/ReadVariableOp_2ReadVariableOp#lstm_cell_1_readvariableop_resource* 
_output_shapes
:
*
dtype0r
!lstm_cell_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       t
#lstm_cell_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      t
#lstm_cell_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ³
lstm_cell_1/strided_slice_2StridedSlice$lstm_cell_1/ReadVariableOp_2:value:0*lstm_cell_1/strided_slice_2/stack:output:0,lstm_cell_1/strided_slice_2/stack_1:output:0,lstm_cell_1/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask
lstm_cell_1/MatMul_6MatMullstm_cell_1/mul_6:z:0$lstm_cell_1/strided_slice_2:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_1/add_2AddV2lstm_cell_1/BiasAdd_2:output:0lstm_cell_1/MatMul_6:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿb
lstm_cell_1/TanhTanhlstm_cell_1/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿz
lstm_cell_1/mul_9Mullstm_cell_1/Sigmoid:y:0lstm_cell_1/Tanh:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ{
lstm_cell_1/add_3AddV2lstm_cell_1/mul_8:z:0lstm_cell_1/mul_9:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_1/ReadVariableOp_3ReadVariableOp#lstm_cell_1_readvariableop_resource* 
_output_shapes
:
*
dtype0r
!lstm_cell_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"      t
#lstm_cell_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        t
#lstm_cell_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ³
lstm_cell_1/strided_slice_3StridedSlice$lstm_cell_1/ReadVariableOp_3:value:0*lstm_cell_1/strided_slice_3/stack:output:0,lstm_cell_1/strided_slice_3/stack_1:output:0,lstm_cell_1/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask
lstm_cell_1/MatMul_7MatMullstm_cell_1/mul_7:z:0$lstm_cell_1/strided_slice_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_1/add_4AddV2lstm_cell_1/BiasAdd_3:output:0lstm_cell_1/MatMul_7:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿj
lstm_cell_1/Sigmoid_2Sigmoidlstm_cell_1/add_4:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_cell_1/Tanh_1Tanhlstm_cell_1/add_3:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_1/mul_10Mullstm_cell_1/Sigmoid_2:y:0lstm_cell_1/Tanh_1:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ÷
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)lstm_cell_1_split_readvariableop_resource+lstm_cell_1_split_1_readvariableop_resource#lstm_cell_1_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_13049*
condR
while_cond_13048*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Ì
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"           
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp^lstm_cell_1/ReadVariableOp^lstm_cell_1/ReadVariableOp_1^lstm_cell_1/ReadVariableOp_2^lstm_cell_1/ReadVariableOp_3!^lstm_cell_1/split/ReadVariableOp#^lstm_cell_1/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd: : : 28
lstm_cell_1/ReadVariableOplstm_cell_1/ReadVariableOp2<
lstm_cell_1/ReadVariableOp_1lstm_cell_1/ReadVariableOp_12<
lstm_cell_1/ReadVariableOp_2lstm_cell_1/ReadVariableOp_22<
lstm_cell_1/ReadVariableOp_3lstm_cell_1/ReadVariableOp_32D
 lstm_cell_1/split/ReadVariableOp lstm_cell_1/split/ReadVariableOp2H
"lstm_cell_1/split_1/ReadVariableOp"lstm_cell_1/split_1/ReadVariableOp2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs
ü~
¨
F__inference_lstm_cell_1_layer_call_and_return_conditional_losses_10179

inputs

states
states_10
split_readvariableop_resource:	d.
split_1_readvariableop_resource:	+
readvariableop_resource:

identity

identity_1

identity_2¢ReadVariableOp¢ReadVariableOp_1¢ReadVariableOp_2¢ReadVariableOp_3¢split/ReadVariableOp¢split_1/ReadVariableOpE
ones_like/ShapeShapeinputs*
T0*
_output_shapes
:T
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?w
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?p
dropout/MulMulones_like:output:0dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdO
dropout/ShapeShapeones_like:output:0*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=¦
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdo
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdi
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdT
dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?t
dropout_1/MulMulones_like:output:0dropout_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdQ
dropout_1/ShapeShapeones_like:output:0*
T0*
_output_shapes
:
&dropout_1/random_uniform/RandomUniformRandomUniformdropout_1/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
dtype0]
dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=¬
dropout_1/GreaterEqualGreaterEqual/dropout_1/random_uniform/RandomUniform:output:0!dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿds
dropout_1/CastCastdropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdo
dropout_1/Mul_1Muldropout_1/Mul:z:0dropout_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdT
dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?t
dropout_2/MulMulones_like:output:0dropout_2/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdQ
dropout_2/ShapeShapeones_like:output:0*
T0*
_output_shapes
:
&dropout_2/random_uniform/RandomUniformRandomUniformdropout_2/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
dtype0]
dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=¬
dropout_2/GreaterEqualGreaterEqual/dropout_2/random_uniform/RandomUniform:output:0!dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿds
dropout_2/CastCastdropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdo
dropout_2/Mul_1Muldropout_2/Mul:z:0dropout_2/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdT
dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?t
dropout_3/MulMulones_like:output:0dropout_3/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdQ
dropout_3/ShapeShapeones_like:output:0*
T0*
_output_shapes
:
&dropout_3/random_uniform/RandomUniformRandomUniformdropout_3/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
dtype0]
dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=¬
dropout_3/GreaterEqualGreaterEqual/dropout_3/random_uniform/RandomUniform:output:0!dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿds
dropout_3/CastCastdropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdo
dropout_3/Mul_1Muldropout_3/Mul:z:0dropout_3/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdG
ones_like_1/ShapeShapestates*
T0*
_output_shapes
:V
ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?~
ones_like_1Fillones_like_1/Shape:output:0ones_like_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿT
dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?w
dropout_4/MulMulones_like_1:output:0dropout_4/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿS
dropout_4/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
:
&dropout_4/random_uniform/RandomUniformRandomUniformdropout_4/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0]
dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=­
dropout_4/GreaterEqualGreaterEqual/dropout_4/random_uniform/RandomUniform:output:0!dropout_4/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿt
dropout_4/CastCastdropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
dropout_4/Mul_1Muldropout_4/Mul:z:0dropout_4/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿT
dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?w
dropout_5/MulMulones_like_1:output:0dropout_5/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿS
dropout_5/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
:
&dropout_5/random_uniform/RandomUniformRandomUniformdropout_5/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0]
dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=­
dropout_5/GreaterEqualGreaterEqual/dropout_5/random_uniform/RandomUniform:output:0!dropout_5/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿt
dropout_5/CastCastdropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
dropout_5/Mul_1Muldropout_5/Mul:z:0dropout_5/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿT
dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?w
dropout_6/MulMulones_like_1:output:0dropout_6/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿS
dropout_6/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
:
&dropout_6/random_uniform/RandomUniformRandomUniformdropout_6/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0]
dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=­
dropout_6/GreaterEqualGreaterEqual/dropout_6/random_uniform/RandomUniform:output:0!dropout_6/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿt
dropout_6/CastCastdropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
dropout_6/Mul_1Muldropout_6/Mul:z:0dropout_6/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿT
dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?w
dropout_7/MulMulones_like_1:output:0dropout_7/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿS
dropout_7/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
:
&dropout_7/random_uniform/RandomUniformRandomUniformdropout_7/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0]
dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=­
dropout_7/GreaterEqualGreaterEqual/dropout_7/random_uniform/RandomUniform:output:0!dropout_7/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿt
dropout_7/CastCastdropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
dropout_7/Mul_1Muldropout_7/Mul:z:0dropout_7/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿW
mulMulinputsdropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd[
mul_1Mulinputsdropout_1/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd[
mul_2Mulinputsdropout_2/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd[
mul_3Mulinputsdropout_3/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :s
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource*
_output_shapes
:	d*
dtype0¢
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*@
_output_shapes.
,:	d:	d:	d:	d*
	num_split\
MatMulMatMulmul:z:0split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
MatMul_1MatMul	mul_1:z:0split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
MatMul_2MatMul	mul_2:z:0split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
MatMul_3MatMul	mul_3:z:0split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : s
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*
_output_shapes	
:*
dtype0
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
::::*
	num_spliti
BiasAddBiasAddMatMul:product:0split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿm
	BiasAdd_1BiasAddMatMul_1:product:0split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿm
	BiasAdd_2BiasAddMatMul_2:product:0split_1:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿm
	BiasAdd_3BiasAddMatMul_3:product:0split_1:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ\
mul_4Mulstatesdropout_4/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ\
mul_5Mulstatesdropout_5/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ\
mul_6Mulstatesdropout_6/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ\
mul_7Mulstatesdropout_7/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
ReadVariableOpReadVariableOpreadvariableop_resource* 
_output_shapes
:
*
dtype0d
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        f
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       f
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      í
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_maskh
MatMul_4MatMul	mul_4:z:0strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
addAddV2BiasAdd:output:0MatMul_4:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿN
SigmoidSigmoidadd:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿj
ReadVariableOp_1ReadVariableOpreadvariableop_resource* 
_output_shapes
:
*
dtype0f
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ÷
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_maskj
MatMul_5MatMul	mul_5:z:0strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿi
add_1AddV2BiasAdd_1:output:0MatMul_5:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿR
	Sigmoid_1Sigmoid	add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿX
mul_8MulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿj
ReadVariableOp_2ReadVariableOpreadvariableop_resource* 
_output_shapes
:
*
dtype0f
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      h
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ÷
strided_slice_2StridedSliceReadVariableOp_2:value:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_maskj
MatMul_6MatMul	mul_6:z:0strided_slice_2:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿi
add_2AddV2BiasAdd_2:output:0MatMul_6:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿJ
TanhTanh	add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿV
mul_9MulSigmoid:y:0Tanh:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿW
add_3AddV2	mul_8:z:0	mul_9:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿj
ReadVariableOp_3ReadVariableOpreadvariableop_resource* 
_output_shapes
:
*
dtype0f
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"      h
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ÷
strided_slice_3StridedSliceReadVariableOp_3:value:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_maskj
MatMul_7MatMul	mul_7:z:0strided_slice_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿi
add_4AddV2BiasAdd_3:output:0MatMul_7:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿR
	Sigmoid_2Sigmoid	add_4:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿL
Tanh_1Tanh	add_3:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ[
mul_10MulSigmoid_2:y:0
Tanh_1:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ
IdentityIdentity
mul_10:z:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ\

Identity_1Identity
mul_10:z:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ[

Identity_2Identity	add_3:z:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : 2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs:PL
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_namestates:PL
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_namestates
Â

'__inference_dense_1_layer_call_fn_13303

inputs
unknown:	@M
	unknown_0:	M
identity¢StatefulPartitionedCallØ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿM*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_10622p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿM`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
¹È
Ý
?__inference_lstm_layer_call_and_return_conditional_losses_12633
inputs_0<
)lstm_cell_1_split_readvariableop_resource:	d:
+lstm_cell_1_split_1_readvariableop_resource:	7
#lstm_cell_1_readvariableop_resource:

identity¢lstm_cell_1/ReadVariableOp¢lstm_cell_1/ReadVariableOp_1¢lstm_cell_1/ReadVariableOp_2¢lstm_cell_1/ReadVariableOp_3¢ lstm_cell_1/split/ReadVariableOp¢"lstm_cell_1/split_1/ReadVariableOp¢while=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
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
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿdD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_maskc
lstm_cell_1/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
:`
lstm_cell_1/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
lstm_cell_1/ones_likeFill$lstm_cell_1/ones_like/Shape:output:0$lstm_cell_1/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd^
lstm_cell_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?
lstm_cell_1/dropout/MulMullstm_cell_1/ones_like:output:0"lstm_cell_1/dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdg
lstm_cell_1/dropout/ShapeShapelstm_cell_1/ones_like:output:0*
T0*
_output_shapes
:¤
0lstm_cell_1/dropout/random_uniform/RandomUniformRandomUniform"lstm_cell_1/dropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
dtype0g
"lstm_cell_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=Ê
 lstm_cell_1/dropout/GreaterEqualGreaterEqual9lstm_cell_1/dropout/random_uniform/RandomUniform:output:0+lstm_cell_1/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_cell_1/dropout/CastCast$lstm_cell_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_cell_1/dropout/Mul_1Mullstm_cell_1/dropout/Mul:z:0lstm_cell_1/dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd`
lstm_cell_1/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?
lstm_cell_1/dropout_1/MulMullstm_cell_1/ones_like:output:0$lstm_cell_1/dropout_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdi
lstm_cell_1/dropout_1/ShapeShapelstm_cell_1/ones_like:output:0*
T0*
_output_shapes
:¨
2lstm_cell_1/dropout_1/random_uniform/RandomUniformRandomUniform$lstm_cell_1/dropout_1/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
dtype0i
$lstm_cell_1/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=Ð
"lstm_cell_1/dropout_1/GreaterEqualGreaterEqual;lstm_cell_1/dropout_1/random_uniform/RandomUniform:output:0-lstm_cell_1/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_cell_1/dropout_1/CastCast&lstm_cell_1/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_cell_1/dropout_1/Mul_1Mullstm_cell_1/dropout_1/Mul:z:0lstm_cell_1/dropout_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd`
lstm_cell_1/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?
lstm_cell_1/dropout_2/MulMullstm_cell_1/ones_like:output:0$lstm_cell_1/dropout_2/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdi
lstm_cell_1/dropout_2/ShapeShapelstm_cell_1/ones_like:output:0*
T0*
_output_shapes
:¨
2lstm_cell_1/dropout_2/random_uniform/RandomUniformRandomUniform$lstm_cell_1/dropout_2/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
dtype0i
$lstm_cell_1/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=Ð
"lstm_cell_1/dropout_2/GreaterEqualGreaterEqual;lstm_cell_1/dropout_2/random_uniform/RandomUniform:output:0-lstm_cell_1/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_cell_1/dropout_2/CastCast&lstm_cell_1/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_cell_1/dropout_2/Mul_1Mullstm_cell_1/dropout_2/Mul:z:0lstm_cell_1/dropout_2/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd`
lstm_cell_1/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?
lstm_cell_1/dropout_3/MulMullstm_cell_1/ones_like:output:0$lstm_cell_1/dropout_3/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdi
lstm_cell_1/dropout_3/ShapeShapelstm_cell_1/ones_like:output:0*
T0*
_output_shapes
:¨
2lstm_cell_1/dropout_3/random_uniform/RandomUniformRandomUniform$lstm_cell_1/dropout_3/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
dtype0i
$lstm_cell_1/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=Ð
"lstm_cell_1/dropout_3/GreaterEqualGreaterEqual;lstm_cell_1/dropout_3/random_uniform/RandomUniform:output:0-lstm_cell_1/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_cell_1/dropout_3/CastCast&lstm_cell_1/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_cell_1/dropout_3/Mul_1Mullstm_cell_1/dropout_3/Mul:z:0lstm_cell_1/dropout_3/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd[
lstm_cell_1/ones_like_1/ShapeShapezeros:output:0*
T0*
_output_shapes
:b
lstm_cell_1/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?¢
lstm_cell_1/ones_like_1Fill&lstm_cell_1/ones_like_1/Shape:output:0&lstm_cell_1/ones_like_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
lstm_cell_1/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?
lstm_cell_1/dropout_4/MulMul lstm_cell_1/ones_like_1:output:0$lstm_cell_1/dropout_4/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿk
lstm_cell_1/dropout_4/ShapeShape lstm_cell_1/ones_like_1:output:0*
T0*
_output_shapes
:©
2lstm_cell_1/dropout_4/random_uniform/RandomUniformRandomUniform$lstm_cell_1/dropout_4/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0i
$lstm_cell_1/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=Ñ
"lstm_cell_1/dropout_4/GreaterEqualGreaterEqual;lstm_cell_1/dropout_4/random_uniform/RandomUniform:output:0-lstm_cell_1/dropout_4/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_1/dropout_4/CastCast&lstm_cell_1/dropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_1/dropout_4/Mul_1Mullstm_cell_1/dropout_4/Mul:z:0lstm_cell_1/dropout_4/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
lstm_cell_1/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?
lstm_cell_1/dropout_5/MulMul lstm_cell_1/ones_like_1:output:0$lstm_cell_1/dropout_5/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿk
lstm_cell_1/dropout_5/ShapeShape lstm_cell_1/ones_like_1:output:0*
T0*
_output_shapes
:©
2lstm_cell_1/dropout_5/random_uniform/RandomUniformRandomUniform$lstm_cell_1/dropout_5/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0i
$lstm_cell_1/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=Ñ
"lstm_cell_1/dropout_5/GreaterEqualGreaterEqual;lstm_cell_1/dropout_5/random_uniform/RandomUniform:output:0-lstm_cell_1/dropout_5/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_1/dropout_5/CastCast&lstm_cell_1/dropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_1/dropout_5/Mul_1Mullstm_cell_1/dropout_5/Mul:z:0lstm_cell_1/dropout_5/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
lstm_cell_1/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?
lstm_cell_1/dropout_6/MulMul lstm_cell_1/ones_like_1:output:0$lstm_cell_1/dropout_6/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿk
lstm_cell_1/dropout_6/ShapeShape lstm_cell_1/ones_like_1:output:0*
T0*
_output_shapes
:©
2lstm_cell_1/dropout_6/random_uniform/RandomUniformRandomUniform$lstm_cell_1/dropout_6/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0i
$lstm_cell_1/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=Ñ
"lstm_cell_1/dropout_6/GreaterEqualGreaterEqual;lstm_cell_1/dropout_6/random_uniform/RandomUniform:output:0-lstm_cell_1/dropout_6/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_1/dropout_6/CastCast&lstm_cell_1/dropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_1/dropout_6/Mul_1Mullstm_cell_1/dropout_6/Mul:z:0lstm_cell_1/dropout_6/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
lstm_cell_1/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?
lstm_cell_1/dropout_7/MulMul lstm_cell_1/ones_like_1:output:0$lstm_cell_1/dropout_7/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿk
lstm_cell_1/dropout_7/ShapeShape lstm_cell_1/ones_like_1:output:0*
T0*
_output_shapes
:©
2lstm_cell_1/dropout_7/random_uniform/RandomUniformRandomUniform$lstm_cell_1/dropout_7/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0i
$lstm_cell_1/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=Ñ
"lstm_cell_1/dropout_7/GreaterEqualGreaterEqual;lstm_cell_1/dropout_7/random_uniform/RandomUniform:output:0-lstm_cell_1/dropout_7/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_1/dropout_7/CastCast&lstm_cell_1/dropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_1/dropout_7/Mul_1Mullstm_cell_1/dropout_7/Mul:z:0lstm_cell_1/dropout_7/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_1/mulMulstrided_slice_2:output:0lstm_cell_1/dropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_cell_1/mul_1Mulstrided_slice_2:output:0lstm_cell_1/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_cell_1/mul_2Mulstrided_slice_2:output:0lstm_cell_1/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_cell_1/mul_3Mulstrided_slice_2:output:0lstm_cell_1/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd]
lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
 lstm_cell_1/split/ReadVariableOpReadVariableOp)lstm_cell_1_split_readvariableop_resource*
_output_shapes
:	d*
dtype0Æ
lstm_cell_1/splitSplit$lstm_cell_1/split/split_dim:output:0(lstm_cell_1/split/ReadVariableOp:value:0*
T0*@
_output_shapes.
,:	d:	d:	d:	d*
	num_split
lstm_cell_1/MatMulMatMullstm_cell_1/mul:z:0lstm_cell_1/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_1/MatMul_1MatMullstm_cell_1/mul_1:z:0lstm_cell_1/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_1/MatMul_2MatMullstm_cell_1/mul_2:z:0lstm_cell_1/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_1/MatMul_3MatMullstm_cell_1/mul_3:z:0lstm_cell_1/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
lstm_cell_1/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
"lstm_cell_1/split_1/ReadVariableOpReadVariableOp+lstm_cell_1_split_1_readvariableop_resource*
_output_shapes	
:*
dtype0¼
lstm_cell_1/split_1Split&lstm_cell_1/split_1/split_dim:output:0*lstm_cell_1/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
::::*
	num_split
lstm_cell_1/BiasAddBiasAddlstm_cell_1/MatMul:product:0lstm_cell_1/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_1/BiasAdd_1BiasAddlstm_cell_1/MatMul_1:product:0lstm_cell_1/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_1/BiasAdd_2BiasAddlstm_cell_1/MatMul_2:product:0lstm_cell_1/split_1:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_1/BiasAdd_3BiasAddlstm_cell_1/MatMul_3:product:0lstm_cell_1/split_1:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|
lstm_cell_1/mul_4Mulzeros:output:0lstm_cell_1/dropout_4/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|
lstm_cell_1/mul_5Mulzeros:output:0lstm_cell_1/dropout_5/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|
lstm_cell_1/mul_6Mulzeros:output:0lstm_cell_1/dropout_6/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|
lstm_cell_1/mul_7Mulzeros:output:0lstm_cell_1/dropout_7/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_1/ReadVariableOpReadVariableOp#lstm_cell_1_readvariableop_resource* 
_output_shapes
:
*
dtype0p
lstm_cell_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        r
!lstm_cell_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       r
!lstm_cell_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ©
lstm_cell_1/strided_sliceStridedSlice"lstm_cell_1/ReadVariableOp:value:0(lstm_cell_1/strided_slice/stack:output:0*lstm_cell_1/strided_slice/stack_1:output:0*lstm_cell_1/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask
lstm_cell_1/MatMul_4MatMullstm_cell_1/mul_4:z:0"lstm_cell_1/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_1/addAddV2lstm_cell_1/BiasAdd:output:0lstm_cell_1/MatMul_4:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿf
lstm_cell_1/SigmoidSigmoidlstm_cell_1/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_1/ReadVariableOp_1ReadVariableOp#lstm_cell_1_readvariableop_resource* 
_output_shapes
:
*
dtype0r
!lstm_cell_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       t
#lstm_cell_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       t
#lstm_cell_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ³
lstm_cell_1/strided_slice_1StridedSlice$lstm_cell_1/ReadVariableOp_1:value:0*lstm_cell_1/strided_slice_1/stack:output:0,lstm_cell_1/strided_slice_1/stack_1:output:0,lstm_cell_1/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask
lstm_cell_1/MatMul_5MatMullstm_cell_1/mul_5:z:0$lstm_cell_1/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_1/add_1AddV2lstm_cell_1/BiasAdd_1:output:0lstm_cell_1/MatMul_5:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿj
lstm_cell_1/Sigmoid_1Sigmoidlstm_cell_1/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
lstm_cell_1/mul_8Mullstm_cell_1/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_1/ReadVariableOp_2ReadVariableOp#lstm_cell_1_readvariableop_resource* 
_output_shapes
:
*
dtype0r
!lstm_cell_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       t
#lstm_cell_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      t
#lstm_cell_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ³
lstm_cell_1/strided_slice_2StridedSlice$lstm_cell_1/ReadVariableOp_2:value:0*lstm_cell_1/strided_slice_2/stack:output:0,lstm_cell_1/strided_slice_2/stack_1:output:0,lstm_cell_1/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask
lstm_cell_1/MatMul_6MatMullstm_cell_1/mul_6:z:0$lstm_cell_1/strided_slice_2:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_1/add_2AddV2lstm_cell_1/BiasAdd_2:output:0lstm_cell_1/MatMul_6:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿb
lstm_cell_1/TanhTanhlstm_cell_1/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿz
lstm_cell_1/mul_9Mullstm_cell_1/Sigmoid:y:0lstm_cell_1/Tanh:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ{
lstm_cell_1/add_3AddV2lstm_cell_1/mul_8:z:0lstm_cell_1/mul_9:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_1/ReadVariableOp_3ReadVariableOp#lstm_cell_1_readvariableop_resource* 
_output_shapes
:
*
dtype0r
!lstm_cell_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"      t
#lstm_cell_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        t
#lstm_cell_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ³
lstm_cell_1/strided_slice_3StridedSlice$lstm_cell_1/ReadVariableOp_3:value:0*lstm_cell_1/strided_slice_3/stack:output:0,lstm_cell_1/strided_slice_3/stack_1:output:0,lstm_cell_1/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask
lstm_cell_1/MatMul_7MatMullstm_cell_1/mul_7:z:0$lstm_cell_1/strided_slice_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_1/add_4AddV2lstm_cell_1/BiasAdd_3:output:0lstm_cell_1/MatMul_7:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿj
lstm_cell_1/Sigmoid_2Sigmoidlstm_cell_1/add_4:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_cell_1/Tanh_1Tanhlstm_cell_1/add_3:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_1/mul_10Mullstm_cell_1/Sigmoid_2:y:0lstm_cell_1/Tanh_1:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ÷
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)lstm_cell_1_split_readvariableop_resource+lstm_cell_1_split_1_readvariableop_resource#lstm_cell_1_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_12435*
condR
while_cond_12434*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Ì
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"           
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp^lstm_cell_1/ReadVariableOp^lstm_cell_1/ReadVariableOp_1^lstm_cell_1/ReadVariableOp_2^lstm_cell_1/ReadVariableOp_3!^lstm_cell_1/split/ReadVariableOp#^lstm_cell_1/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd: : : 28
lstm_cell_1/ReadVariableOplstm_cell_1/ReadVariableOp2<
lstm_cell_1/ReadVariableOp_1lstm_cell_1/ReadVariableOp_12<
lstm_cell_1/ReadVariableOp_2lstm_cell_1/ReadVariableOp_22<
lstm_cell_1/ReadVariableOp_3lstm_cell_1/ReadVariableOp_32D
 lstm_cell_1/split/ReadVariableOp lstm_cell_1/split/ReadVariableOp2H
"lstm_cell_1/split_1/ReadVariableOp"lstm_cell_1/split_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd
"
_user_specified_name
inputs/0
ë
`
'__inference_dropout_layer_call_fn_13277

inputs
identity¢StatefulPartitionedCall½
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_10678o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
Ä"

__inference__traced_save_13635
file_prefix3
/savev2_embedding_embeddings_read_readvariableop+
'savev2_dense_kernel_read_readvariableop)
%savev2_dense_bias_read_readvariableop-
)savev2_dense_1_kernel_read_readvariableop+
'savev2_dense_1_bias_read_readvariableop4
0savev2_lstm_lstm_cell_kernel_read_readvariableop>
:savev2_lstm_lstm_cell_recurrent_kernel_read_readvariableop2
.savev2_lstm_lstm_cell_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop
savev2_const

identity_1¢MergeV2Checkpointsw
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
_temp/part
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
value	B : 
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ò
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*-
value$B"B B B B B B B B B B B B B »
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0/savev2_embedding_embeddings_read_readvariableop'savev2_dense_kernel_read_readvariableop%savev2_dense_bias_read_readvariableop)savev2_dense_1_kernel_read_readvariableop'savev2_dense_1_bias_read_readvariableop0savev2_lstm_lstm_cell_kernel_read_readvariableop:savev2_lstm_lstm_cell_recurrent_kernel_read_readvariableop.savev2_lstm_lstm_cell_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *
dtypes
2
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:
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

identity_1Identity_1:output:0*k
_input_shapesZ
X: :	Md:	@:@:	@M:M:	d:
:: : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:%!

_output_shapes
:	Md:%!

_output_shapes
:	@: 

_output_shapes
:@:%!

_output_shapes
:	@M:!

_output_shapes	
:M:%!

_output_shapes
:	d:&"
 
_output_shapes
:
:!

_output_shapes	
::	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
á
È

lstm_while_body_11387&
"lstm_while_lstm_while_loop_counter,
(lstm_while_lstm_while_maximum_iterations
lstm_while_placeholder
lstm_while_placeholder_1
lstm_while_placeholder_2
lstm_while_placeholder_3%
!lstm_while_lstm_strided_slice_1_0a
]lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensor_0I
6lstm_while_lstm_cell_1_split_readvariableop_resource_0:	dG
8lstm_while_lstm_cell_1_split_1_readvariableop_resource_0:	D
0lstm_while_lstm_cell_1_readvariableop_resource_0:

lstm_while_identity
lstm_while_identity_1
lstm_while_identity_2
lstm_while_identity_3
lstm_while_identity_4
lstm_while_identity_5#
lstm_while_lstm_strided_slice_1_
[lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensorG
4lstm_while_lstm_cell_1_split_readvariableop_resource:	dE
6lstm_while_lstm_cell_1_split_1_readvariableop_resource:	B
.lstm_while_lstm_cell_1_readvariableop_resource:
¢%lstm/while/lstm_cell_1/ReadVariableOp¢'lstm/while/lstm_cell_1/ReadVariableOp_1¢'lstm/while/lstm_cell_1/ReadVariableOp_2¢'lstm/while/lstm_cell_1/ReadVariableOp_3¢+lstm/while/lstm_cell_1/split/ReadVariableOp¢-lstm/while/lstm_cell_1/split_1/ReadVariableOp
<lstm/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   ¿
.lstm/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem]lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensor_0lstm_while_placeholderElstm/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype0
&lstm/while/lstm_cell_1/ones_like/ShapeShape5lstm/while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:k
&lstm/while/lstm_cell_1/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?¼
 lstm/while/lstm_cell_1/ones_likeFill/lstm/while/lstm_cell_1/ones_like/Shape:output:0/lstm/while/lstm_cell_1/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdp
(lstm/while/lstm_cell_1/ones_like_1/ShapeShapelstm_while_placeholder_2*
T0*
_output_shapes
:m
(lstm/while/lstm_cell_1/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Ã
"lstm/while/lstm_cell_1/ones_like_1Fill1lstm/while/lstm_cell_1/ones_like_1/Shape:output:01lstm/while/lstm_cell_1/ones_like_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿµ
lstm/while/lstm_cell_1/mulMul5lstm/while/TensorArrayV2Read/TensorListGetItem:item:0)lstm/while/lstm_cell_1/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd·
lstm/while/lstm_cell_1/mul_1Mul5lstm/while/TensorArrayV2Read/TensorListGetItem:item:0)lstm/while/lstm_cell_1/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd·
lstm/while/lstm_cell_1/mul_2Mul5lstm/while/TensorArrayV2Read/TensorListGetItem:item:0)lstm/while/lstm_cell_1/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd·
lstm/while/lstm_cell_1/mul_3Mul5lstm/while/TensorArrayV2Read/TensorListGetItem:item:0)lstm/while/lstm_cell_1/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdh
&lstm/while/lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :£
+lstm/while/lstm_cell_1/split/ReadVariableOpReadVariableOp6lstm_while_lstm_cell_1_split_readvariableop_resource_0*
_output_shapes
:	d*
dtype0ç
lstm/while/lstm_cell_1/splitSplit/lstm/while/lstm_cell_1/split/split_dim:output:03lstm/while/lstm_cell_1/split/ReadVariableOp:value:0*
T0*@
_output_shapes.
,:	d:	d:	d:	d*
	num_split¡
lstm/while/lstm_cell_1/MatMulMatMullstm/while/lstm_cell_1/mul:z:0%lstm/while/lstm_cell_1/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¥
lstm/while/lstm_cell_1/MatMul_1MatMul lstm/while/lstm_cell_1/mul_1:z:0%lstm/while/lstm_cell_1/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¥
lstm/while/lstm_cell_1/MatMul_2MatMul lstm/while/lstm_cell_1/mul_2:z:0%lstm/while/lstm_cell_1/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¥
lstm/while/lstm_cell_1/MatMul_3MatMul lstm/while/lstm_cell_1/mul_3:z:0%lstm/while/lstm_cell_1/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿj
(lstm/while/lstm_cell_1/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : £
-lstm/while/lstm_cell_1/split_1/ReadVariableOpReadVariableOp8lstm_while_lstm_cell_1_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype0Ý
lstm/while/lstm_cell_1/split_1Split1lstm/while/lstm_cell_1/split_1/split_dim:output:05lstm/while/lstm_cell_1/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
::::*
	num_split®
lstm/while/lstm_cell_1/BiasAddBiasAdd'lstm/while/lstm_cell_1/MatMul:product:0'lstm/while/lstm_cell_1/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ²
 lstm/while/lstm_cell_1/BiasAdd_1BiasAdd)lstm/while/lstm_cell_1/MatMul_1:product:0'lstm/while/lstm_cell_1/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ²
 lstm/while/lstm_cell_1/BiasAdd_2BiasAdd)lstm/while/lstm_cell_1/MatMul_2:product:0'lstm/while/lstm_cell_1/split_1:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ²
 lstm/while/lstm_cell_1/BiasAdd_3BiasAdd)lstm/while/lstm_cell_1/MatMul_3:product:0'lstm/while/lstm_cell_1/split_1:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm/while/lstm_cell_1/mul_4Mullstm_while_placeholder_2+lstm/while/lstm_cell_1/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm/while/lstm_cell_1/mul_5Mullstm_while_placeholder_2+lstm/while/lstm_cell_1/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm/while/lstm_cell_1/mul_6Mullstm_while_placeholder_2+lstm/while/lstm_cell_1/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm/while/lstm_cell_1/mul_7Mullstm_while_placeholder_2+lstm/while/lstm_cell_1/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%lstm/while/lstm_cell_1/ReadVariableOpReadVariableOp0lstm_while_lstm_cell_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0{
*lstm/while/lstm_cell_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        }
,lstm/while/lstm_cell_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       }
,lstm/while/lstm_cell_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      à
$lstm/while/lstm_cell_1/strided_sliceStridedSlice-lstm/while/lstm_cell_1/ReadVariableOp:value:03lstm/while/lstm_cell_1/strided_slice/stack:output:05lstm/while/lstm_cell_1/strided_slice/stack_1:output:05lstm/while/lstm_cell_1/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask­
lstm/while/lstm_cell_1/MatMul_4MatMul lstm/while/lstm_cell_1/mul_4:z:0-lstm/while/lstm_cell_1/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿª
lstm/while/lstm_cell_1/addAddV2'lstm/while/lstm_cell_1/BiasAdd:output:0)lstm/while/lstm_cell_1/MatMul_4:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|
lstm/while/lstm_cell_1/SigmoidSigmoidlstm/while/lstm_cell_1/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'lstm/while/lstm_cell_1/ReadVariableOp_1ReadVariableOp0lstm_while_lstm_cell_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0}
,lstm/while/lstm_cell_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       
.lstm/while/lstm_cell_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       
.lstm/while/lstm_cell_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ê
&lstm/while/lstm_cell_1/strided_slice_1StridedSlice/lstm/while/lstm_cell_1/ReadVariableOp_1:value:05lstm/while/lstm_cell_1/strided_slice_1/stack:output:07lstm/while/lstm_cell_1/strided_slice_1/stack_1:output:07lstm/while/lstm_cell_1/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask¯
lstm/while/lstm_cell_1/MatMul_5MatMul lstm/while/lstm_cell_1/mul_5:z:0/lstm/while/lstm_cell_1/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ®
lstm/while/lstm_cell_1/add_1AddV2)lstm/while/lstm_cell_1/BiasAdd_1:output:0)lstm/while/lstm_cell_1/MatMul_5:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 lstm/while/lstm_cell_1/Sigmoid_1Sigmoid lstm/while/lstm_cell_1/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm/while/lstm_cell_1/mul_8Mul$lstm/while/lstm_cell_1/Sigmoid_1:y:0lstm_while_placeholder_3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'lstm/while/lstm_cell_1/ReadVariableOp_2ReadVariableOp0lstm_while_lstm_cell_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0}
,lstm/while/lstm_cell_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       
.lstm/while/lstm_cell_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      
.lstm/while/lstm_cell_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ê
&lstm/while/lstm_cell_1/strided_slice_2StridedSlice/lstm/while/lstm_cell_1/ReadVariableOp_2:value:05lstm/while/lstm_cell_1/strided_slice_2/stack:output:07lstm/while/lstm_cell_1/strided_slice_2/stack_1:output:07lstm/while/lstm_cell_1/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask¯
lstm/while/lstm_cell_1/MatMul_6MatMul lstm/while/lstm_cell_1/mul_6:z:0/lstm/while/lstm_cell_1/strided_slice_2:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ®
lstm/while/lstm_cell_1/add_2AddV2)lstm/while/lstm_cell_1/BiasAdd_2:output:0)lstm/while/lstm_cell_1/MatMul_6:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
lstm/while/lstm_cell_1/TanhTanh lstm/while/lstm_cell_1/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm/while/lstm_cell_1/mul_9Mul"lstm/while/lstm_cell_1/Sigmoid:y:0lstm/while/lstm_cell_1/Tanh:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm/while/lstm_cell_1/add_3AddV2 lstm/while/lstm_cell_1/mul_8:z:0 lstm/while/lstm_cell_1/mul_9:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'lstm/while/lstm_cell_1/ReadVariableOp_3ReadVariableOp0lstm_while_lstm_cell_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0}
,lstm/while/lstm_cell_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"      
.lstm/while/lstm_cell_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        
.lstm/while/lstm_cell_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ê
&lstm/while/lstm_cell_1/strided_slice_3StridedSlice/lstm/while/lstm_cell_1/ReadVariableOp_3:value:05lstm/while/lstm_cell_1/strided_slice_3/stack:output:07lstm/while/lstm_cell_1/strided_slice_3/stack_1:output:07lstm/while/lstm_cell_1/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask¯
lstm/while/lstm_cell_1/MatMul_7MatMul lstm/while/lstm_cell_1/mul_7:z:0/lstm/while/lstm_cell_1/strided_slice_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ®
lstm/while/lstm_cell_1/add_4AddV2)lstm/while/lstm_cell_1/BiasAdd_3:output:0)lstm/while/lstm_cell_1/MatMul_7:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 lstm/while/lstm_cell_1/Sigmoid_2Sigmoid lstm/while/lstm_cell_1/add_4:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿz
lstm/while/lstm_cell_1/Tanh_1Tanh lstm/while/lstm_cell_1/add_3:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
lstm/while/lstm_cell_1/mul_10Mul$lstm/while/lstm_cell_1/Sigmoid_2:y:0!lstm/while/lstm_cell_1/Tanh_1:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÙ
/lstm/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_while_placeholder_1lstm_while_placeholder!lstm/while/lstm_cell_1/mul_10:z:0*
_output_shapes
: *
element_dtype0:éèÒR
lstm/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :k
lstm/while/addAddV2lstm_while_placeholderlstm/while/add/y:output:0*
T0*
_output_shapes
: T
lstm/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :{
lstm/while/add_1AddV2"lstm_while_lstm_while_loop_counterlstm/while/add_1/y:output:0*
T0*
_output_shapes
: h
lstm/while/IdentityIdentitylstm/while/add_1:z:0^lstm/while/NoOp*
T0*
_output_shapes
: ~
lstm/while/Identity_1Identity(lstm_while_lstm_while_maximum_iterations^lstm/while/NoOp*
T0*
_output_shapes
: h
lstm/while/Identity_2Identitylstm/while/add:z:0^lstm/while/NoOp*
T0*
_output_shapes
: ¨
lstm/while/Identity_3Identity?lstm/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm/while/NoOp*
T0*
_output_shapes
: :éèÒ
lstm/while/Identity_4Identity!lstm/while/lstm_cell_1/mul_10:z:0^lstm/while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm/while/Identity_5Identity lstm/while/lstm_cell_1/add_3:z:0^lstm/while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÕ
lstm/while/NoOpNoOp&^lstm/while/lstm_cell_1/ReadVariableOp(^lstm/while/lstm_cell_1/ReadVariableOp_1(^lstm/while/lstm_cell_1/ReadVariableOp_2(^lstm/while/lstm_cell_1/ReadVariableOp_3,^lstm/while/lstm_cell_1/split/ReadVariableOp.^lstm/while/lstm_cell_1/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "3
lstm_while_identitylstm/while/Identity:output:0"7
lstm_while_identity_1lstm/while/Identity_1:output:0"7
lstm_while_identity_2lstm/while/Identity_2:output:0"7
lstm_while_identity_3lstm/while/Identity_3:output:0"7
lstm_while_identity_4lstm/while/Identity_4:output:0"7
lstm_while_identity_5lstm/while/Identity_5:output:0"b
.lstm_while_lstm_cell_1_readvariableop_resource0lstm_while_lstm_cell_1_readvariableop_resource_0"r
6lstm_while_lstm_cell_1_split_1_readvariableop_resource8lstm_while_lstm_cell_1_split_1_readvariableop_resource_0"n
4lstm_while_lstm_cell_1_split_readvariableop_resource6lstm_while_lstm_cell_1_split_readvariableop_resource_0"D
lstm_while_lstm_strided_slice_1!lstm_while_lstm_strided_slice_1_0"¼
[lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensor]lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2N
%lstm/while/lstm_cell_1/ReadVariableOp%lstm/while/lstm_cell_1/ReadVariableOp2R
'lstm/while/lstm_cell_1/ReadVariableOp_1'lstm/while/lstm_cell_1/ReadVariableOp_12R
'lstm/while/lstm_cell_1/ReadVariableOp_2'lstm/while/lstm_cell_1/ReadVariableOp_22R
'lstm/while/lstm_cell_1/ReadVariableOp_3'lstm/while/lstm_cell_1/ReadVariableOp_32Z
+lstm/while/lstm_cell_1/split/ReadVariableOp+lstm/while/lstm_cell_1/split/ReadVariableOp2^
-lstm/while/lstm_cell_1/split_1/ReadVariableOp-lstm/while/lstm_cell_1/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
ð	
a
B__inference_dropout_layer_call_and_return_conditional_losses_10678

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?¦
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
ùt
	
while_body_12742
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
1while_lstm_cell_1_split_readvariableop_resource_0:	dB
3while_lstm_cell_1_split_1_readvariableop_resource_0:	?
+while_lstm_cell_1_readvariableop_resource_0:

while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
/while_lstm_cell_1_split_readvariableop_resource:	d@
1while_lstm_cell_1_split_1_readvariableop_resource:	=
)while_lstm_cell_1_readvariableop_resource:
¢ while/lstm_cell_1/ReadVariableOp¢"while/lstm_cell_1/ReadVariableOp_1¢"while/lstm_cell_1/ReadVariableOp_2¢"while/lstm_cell_1/ReadVariableOp_3¢&while/lstm_cell_1/split/ReadVariableOp¢(while/lstm_cell_1/split_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype0
!while/lstm_cell_1/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:f
!while/lstm_cell_1/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?­
while/lstm_cell_1/ones_likeFill*while/lstm_cell_1/ones_like/Shape:output:0*while/lstm_cell_1/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdf
#while/lstm_cell_1/ones_like_1/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:h
#while/lstm_cell_1/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?´
while/lstm_cell_1/ones_like_1Fill,while/lstm_cell_1/ones_like_1/Shape:output:0,while/lstm_cell_1/ones_like_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦
while/lstm_cell_1/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0$while/lstm_cell_1/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd¨
while/lstm_cell_1/mul_1Mul0while/TensorArrayV2Read/TensorListGetItem:item:0$while/lstm_cell_1/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd¨
while/lstm_cell_1/mul_2Mul0while/TensorArrayV2Read/TensorListGetItem:item:0$while/lstm_cell_1/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd¨
while/lstm_cell_1/mul_3Mul0while/TensorArrayV2Read/TensorListGetItem:item:0$while/lstm_cell_1/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdc
!while/lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
&while/lstm_cell_1/split/ReadVariableOpReadVariableOp1while_lstm_cell_1_split_readvariableop_resource_0*
_output_shapes
:	d*
dtype0Ø
while/lstm_cell_1/splitSplit*while/lstm_cell_1/split/split_dim:output:0.while/lstm_cell_1/split/ReadVariableOp:value:0*
T0*@
_output_shapes.
,:	d:	d:	d:	d*
	num_split
while/lstm_cell_1/MatMulMatMulwhile/lstm_cell_1/mul:z:0 while/lstm_cell_1/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_1/MatMul_1MatMulwhile/lstm_cell_1/mul_1:z:0 while/lstm_cell_1/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_1/MatMul_2MatMulwhile/lstm_cell_1/mul_2:z:0 while/lstm_cell_1/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_1/MatMul_3MatMulwhile/lstm_cell_1/mul_3:z:0 while/lstm_cell_1/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
#while/lstm_cell_1/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
(while/lstm_cell_1/split_1/ReadVariableOpReadVariableOp3while_lstm_cell_1_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype0Î
while/lstm_cell_1/split_1Split,while/lstm_cell_1/split_1/split_dim:output:00while/lstm_cell_1/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
::::*
	num_split
while/lstm_cell_1/BiasAddBiasAdd"while/lstm_cell_1/MatMul:product:0"while/lstm_cell_1/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ£
while/lstm_cell_1/BiasAdd_1BiasAdd$while/lstm_cell_1/MatMul_1:product:0"while/lstm_cell_1/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ£
while/lstm_cell_1/BiasAdd_2BiasAdd$while/lstm_cell_1/MatMul_2:product:0"while/lstm_cell_1/split_1:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ£
while/lstm_cell_1/BiasAdd_3BiasAdd$while/lstm_cell_1/MatMul_3:product:0"while/lstm_cell_1/split_1:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_1/mul_4Mulwhile_placeholder_2&while/lstm_cell_1/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_1/mul_5Mulwhile_placeholder_2&while/lstm_cell_1/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_1/mul_6Mulwhile_placeholder_2&while/lstm_cell_1/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_1/mul_7Mulwhile_placeholder_2&while/lstm_cell_1/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 while/lstm_cell_1/ReadVariableOpReadVariableOp+while_lstm_cell_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0v
%while/lstm_cell_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'while/lstm_cell_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       x
'while/lstm_cell_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ç
while/lstm_cell_1/strided_sliceStridedSlice(while/lstm_cell_1/ReadVariableOp:value:0.while/lstm_cell_1/strided_slice/stack:output:00while/lstm_cell_1/strided_slice/stack_1:output:00while/lstm_cell_1/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask
while/lstm_cell_1/MatMul_4MatMulwhile/lstm_cell_1/mul_4:z:0(while/lstm_cell_1/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_1/addAddV2"while/lstm_cell_1/BiasAdd:output:0$while/lstm_cell_1/MatMul_4:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
while/lstm_cell_1/SigmoidSigmoidwhile/lstm_cell_1/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"while/lstm_cell_1/ReadVariableOp_1ReadVariableOp+while_lstm_cell_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0x
'while/lstm_cell_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       z
)while/lstm_cell_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       z
)while/lstm_cell_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ñ
!while/lstm_cell_1/strided_slice_1StridedSlice*while/lstm_cell_1/ReadVariableOp_1:value:00while/lstm_cell_1/strided_slice_1/stack:output:02while/lstm_cell_1/strided_slice_1/stack_1:output:02while/lstm_cell_1/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask 
while/lstm_cell_1/MatMul_5MatMulwhile/lstm_cell_1/mul_5:z:0*while/lstm_cell_1/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_1/add_1AddV2$while/lstm_cell_1/BiasAdd_1:output:0$while/lstm_cell_1/MatMul_5:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
while/lstm_cell_1/Sigmoid_1Sigmoidwhile/lstm_cell_1/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_1/mul_8Mulwhile/lstm_cell_1/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"while/lstm_cell_1/ReadVariableOp_2ReadVariableOp+while_lstm_cell_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0x
'while/lstm_cell_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       z
)while/lstm_cell_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      z
)while/lstm_cell_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ñ
!while/lstm_cell_1/strided_slice_2StridedSlice*while/lstm_cell_1/ReadVariableOp_2:value:00while/lstm_cell_1/strided_slice_2/stack:output:02while/lstm_cell_1/strided_slice_2/stack_1:output:02while/lstm_cell_1/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask 
while/lstm_cell_1/MatMul_6MatMulwhile/lstm_cell_1/mul_6:z:0*while/lstm_cell_1/strided_slice_2:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_1/add_2AddV2$while/lstm_cell_1/BiasAdd_2:output:0$while/lstm_cell_1/MatMul_6:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿn
while/lstm_cell_1/TanhTanhwhile/lstm_cell_1/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_1/mul_9Mulwhile/lstm_cell_1/Sigmoid:y:0while/lstm_cell_1/Tanh:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_1/add_3AddV2while/lstm_cell_1/mul_8:z:0while/lstm_cell_1/mul_9:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"while/lstm_cell_1/ReadVariableOp_3ReadVariableOp+while_lstm_cell_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0x
'while/lstm_cell_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"      z
)while/lstm_cell_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        z
)while/lstm_cell_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ñ
!while/lstm_cell_1/strided_slice_3StridedSlice*while/lstm_cell_1/ReadVariableOp_3:value:00while/lstm_cell_1/strided_slice_3/stack:output:02while/lstm_cell_1/strided_slice_3/stack_1:output:02while/lstm_cell_1/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask 
while/lstm_cell_1/MatMul_7MatMulwhile/lstm_cell_1/mul_7:z:0*while/lstm_cell_1/strided_slice_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_1/add_4AddV2$while/lstm_cell_1/BiasAdd_3:output:0$while/lstm_cell_1/MatMul_7:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
while/lstm_cell_1/Sigmoid_2Sigmoidwhile/lstm_cell_1/add_4:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
while/lstm_cell_1/Tanh_1Tanhwhile/lstm_cell_1/add_3:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_1/mul_10Mulwhile/lstm_cell_1/Sigmoid_2:y:0while/lstm_cell_1/Tanh_1:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÅ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_1/mul_10:z:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :éèÒz
while/Identity_4Identitywhile/lstm_cell_1/mul_10:z:0^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿy
while/Identity_5Identitywhile/lstm_cell_1/add_3:z:0^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ²

while/NoOpNoOp!^while/lstm_cell_1/ReadVariableOp#^while/lstm_cell_1/ReadVariableOp_1#^while/lstm_cell_1/ReadVariableOp_2#^while/lstm_cell_1/ReadVariableOp_3'^while/lstm_cell_1/split/ReadVariableOp)^while/lstm_cell_1/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"X
)while_lstm_cell_1_readvariableop_resource+while_lstm_cell_1_readvariableop_resource_0"h
1while_lstm_cell_1_split_1_readvariableop_resource3while_lstm_cell_1_split_1_readvariableop_resource_0"d
/while_lstm_cell_1_split_readvariableop_resource1while_lstm_cell_1_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2D
 while/lstm_cell_1/ReadVariableOp while/lstm_cell_1/ReadVariableOp2H
"while/lstm_cell_1/ReadVariableOp_1"while/lstm_cell_1/ReadVariableOp_12H
"while/lstm_cell_1/ReadVariableOp_2"while/lstm_cell_1/ReadVariableOp_22H
"while/lstm_cell_1/ReadVariableOp_3"while/lstm_cell_1/ReadVariableOp_32P
&while/lstm_cell_1/split/ReadVariableOp&while/lstm_cell_1/split/ReadVariableOp2T
(while/lstm_cell_1/split_1/ReadVariableOp(while/lstm_cell_1/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
´
¾
while_cond_13048
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_13
/while_while_cond_13048___redundant_placeholder03
/while_while_cond_13048___redundant_placeholder13
/while_while_cond_13048___redundant_placeholder23
/while_while_cond_13048___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
¹

E__inference_sequential_layer_call_and_return_conditional_losses_11230
embedding_input"
embedding_11208:	Md

lstm_11211:	d

lstm_11213:	

lstm_11215:

dense_11218:	@
dense_11220:@ 
dense_1_11224:	@M
dense_1_11226:	M
identity¢dense/StatefulPartitionedCall¢dense_1/StatefulPartitionedCall¢dropout/StatefulPartitionedCall¢!embedding/StatefulPartitionedCall¢lstm/StatefulPartitionedCallô
!embedding/StatefulPartitionedCallStatefulPartitionedCallembedding_inputembedding_11208*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_embedding_layer_call_and_return_conditional_losses_10333
lstm/StatefulPartitionedCallStatefulPartitionedCall*embedding/StatefulPartitionedCall:output:0
lstm_11211
lstm_11213
lstm_11215*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_lstm_layer_call_and_return_conditional_losses_11075
dense/StatefulPartitionedCallStatefulPartitionedCall%lstm/StatefulPartitionedCall:output:0dense_11218dense_11220*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_10598å
dropout/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_10678
dense_1/StatefulPartitionedCallStatefulPartitionedCall(dropout/StatefulPartitionedCall:output:0dense_1_11224dense_1_11226*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿM*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_10622x
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿMí
NoOpNoOp^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dropout/StatefulPartitionedCall"^embedding/StatefulPartitionedCall^lstm/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2<
lstm/StatefulPartitionedCalllstm/StatefulPartitionedCall:a ]
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
)
_user_specified_nameembedding_input
û	
Î
*__inference_sequential_layer_call_fn_10648
embedding_input
unknown:	Md
	unknown_0:	d
	unknown_1:	
	unknown_2:

	unknown_3:	@
	unknown_4:@
	unknown_5:	@M
	unknown_6:	M
identity¢StatefulPartitionedCall²
StatefulPartitionedCallStatefulPartitionedCallembedding_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿM**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_10629p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿM`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:a ]
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
)
_user_specified_nameembedding_input


ò
@__inference_dense_layer_call_and_return_conditional_losses_10598

inputs1
matmul_readvariableop_resource:	@-
biasadd_readvariableop_resource:@
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
À	
¢
lstm_while_cond_11714&
"lstm_while_lstm_while_loop_counter,
(lstm_while_lstm_while_maximum_iterations
lstm_while_placeholder
lstm_while_placeholder_1
lstm_while_placeholder_2
lstm_while_placeholder_3(
$lstm_while_less_lstm_strided_slice_1=
9lstm_while_lstm_while_cond_11714___redundant_placeholder0=
9lstm_while_lstm_while_cond_11714___redundant_placeholder1=
9lstm_while_lstm_while_cond_11714___redundant_placeholder2=
9lstm_while_lstm_while_cond_11714___redundant_placeholder3
lstm_while_identity
v
lstm/while/LessLesslstm_while_placeholder$lstm_while_less_lstm_strided_slice_1*
T0*
_output_shapes
: U
lstm/while/IdentityIdentitylstm/while/Less:z:0*
T0
*
_output_shapes
: "3
lstm_while_identitylstm/while/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:

´
$__inference_lstm_layer_call_fn_11997
inputs_0
unknown:	d
	unknown_0:	
	unknown_1:

identity¢StatefulPartitionedCallä
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_lstm_layer_call_and_return_conditional_losses_10307p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd
"
_user_specified_name
inputs/0

²
$__inference_lstm_layer_call_fn_12008

inputs
unknown:	d
	unknown_0:	
	unknown_1:

identity¢StatefulPartitionedCallâ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_lstm_layer_call_and_return_conditional_losses_10579p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd: : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs
û	
Î
*__inference_sequential_layer_call_fn_11180
embedding_input
unknown:	Md
	unknown_0:	d
	unknown_1:	
	unknown_2:

	unknown_3:	@
	unknown_4:@
	unknown_5:	@M
	unknown_6:	M
identity¢StatefulPartitionedCall²
StatefulPartitionedCallStatefulPartitionedCallembedding_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿM**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_11140p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿM`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:a ]
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
)
_user_specified_nameembedding_input
2

!__inference__traced_restore_13681
file_prefix8
%assignvariableop_embedding_embeddings:	Md2
assignvariableop_1_dense_kernel:	@+
assignvariableop_2_dense_bias:@4
!assignvariableop_3_dense_1_kernel:	@M.
assignvariableop_4_dense_1_bias:	M;
(assignvariableop_5_lstm_lstm_cell_kernel:	dF
2assignvariableop_6_lstm_lstm_cell_recurrent_kernel:
5
&assignvariableop_7_lstm_lstm_cell_bias:	"
assignvariableop_8_total: "
assignvariableop_9_count: %
assignvariableop_10_total_1: %
assignvariableop_11_count_1: 
identity_13¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_2¢AssignVariableOp_3¢AssignVariableOp_4¢AssignVariableOp_5¢AssignVariableOp_6¢AssignVariableOp_7¢AssignVariableOp_8¢AssignVariableOp_9õ
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*-
value$B"B B B B B B B B B B B B B ß
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*H
_output_shapes6
4:::::::::::::*
dtypes
2[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOpAssignVariableOp%assignvariableop_embedding_embeddingsIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_kernelIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_2AssignVariableOpassignvariableop_2_dense_biasIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_3AssignVariableOp!assignvariableop_3_dense_1_kernelIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_4AssignVariableOpassignvariableop_4_dense_1_biasIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_5AssignVariableOp(assignvariableop_5_lstm_lstm_cell_kernelIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:¡
AssignVariableOp_6AssignVariableOp2assignvariableop_6_lstm_lstm_cell_recurrent_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_7AssignVariableOp&assignvariableop_7_lstm_lstm_cell_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_8AssignVariableOpassignvariableop_8_totalIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_9AssignVariableOpassignvariableop_9_countIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_10AssignVariableOpassignvariableop_10_total_1Identity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_11AssignVariableOpassignvariableop_11_count_1Identity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ×
Identity_12Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_13IdentityIdentity_12:output:0^NoOp_1*
T0*
_output_shapes
: Ä
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_13Identity_13:output:0*-
_input_shapes
: : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
ò
õ
+__inference_lstm_cell_1_layer_call_fn_13348

inputs
states_0
states_1
unknown:	d
	unknown_0:	
	unknown_1:

identity

identity_1

identity_2¢StatefulPartitionedCall©
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_lstm_cell_1_layer_call_and_return_conditional_losses_10179p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿr

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿr

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/0:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/1
ÕÂ
	
while_body_13049
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
1while_lstm_cell_1_split_readvariableop_resource_0:	dB
3while_lstm_cell_1_split_1_readvariableop_resource_0:	?
+while_lstm_cell_1_readvariableop_resource_0:

while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
/while_lstm_cell_1_split_readvariableop_resource:	d@
1while_lstm_cell_1_split_1_readvariableop_resource:	=
)while_lstm_cell_1_readvariableop_resource:
¢ while/lstm_cell_1/ReadVariableOp¢"while/lstm_cell_1/ReadVariableOp_1¢"while/lstm_cell_1/ReadVariableOp_2¢"while/lstm_cell_1/ReadVariableOp_3¢&while/lstm_cell_1/split/ReadVariableOp¢(while/lstm_cell_1/split_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype0
!while/lstm_cell_1/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:f
!while/lstm_cell_1/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?­
while/lstm_cell_1/ones_likeFill*while/lstm_cell_1/ones_like/Shape:output:0*while/lstm_cell_1/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd
while/lstm_cell_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?¦
while/lstm_cell_1/dropout/MulMul$while/lstm_cell_1/ones_like:output:0(while/lstm_cell_1/dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿds
while/lstm_cell_1/dropout/ShapeShape$while/lstm_cell_1/ones_like:output:0*
T0*
_output_shapes
:°
6while/lstm_cell_1/dropout/random_uniform/RandomUniformRandomUniform(while/lstm_cell_1/dropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
dtype0m
(while/lstm_cell_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=Ü
&while/lstm_cell_1/dropout/GreaterEqualGreaterEqual?while/lstm_cell_1/dropout/random_uniform/RandomUniform:output:01while/lstm_cell_1/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_1/dropout/CastCast*while/lstm_cell_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_1/dropout/Mul_1Mul!while/lstm_cell_1/dropout/Mul:z:0"while/lstm_cell_1/dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdf
!while/lstm_cell_1/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?ª
while/lstm_cell_1/dropout_1/MulMul$while/lstm_cell_1/ones_like:output:0*while/lstm_cell_1/dropout_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdu
!while/lstm_cell_1/dropout_1/ShapeShape$while/lstm_cell_1/ones_like:output:0*
T0*
_output_shapes
:´
8while/lstm_cell_1/dropout_1/random_uniform/RandomUniformRandomUniform*while/lstm_cell_1/dropout_1/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
dtype0o
*while/lstm_cell_1/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=â
(while/lstm_cell_1/dropout_1/GreaterEqualGreaterEqualAwhile/lstm_cell_1/dropout_1/random_uniform/RandomUniform:output:03while/lstm_cell_1/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 while/lstm_cell_1/dropout_1/CastCast,while/lstm_cell_1/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd¥
!while/lstm_cell_1/dropout_1/Mul_1Mul#while/lstm_cell_1/dropout_1/Mul:z:0$while/lstm_cell_1/dropout_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdf
!while/lstm_cell_1/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?ª
while/lstm_cell_1/dropout_2/MulMul$while/lstm_cell_1/ones_like:output:0*while/lstm_cell_1/dropout_2/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdu
!while/lstm_cell_1/dropout_2/ShapeShape$while/lstm_cell_1/ones_like:output:0*
T0*
_output_shapes
:´
8while/lstm_cell_1/dropout_2/random_uniform/RandomUniformRandomUniform*while/lstm_cell_1/dropout_2/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
dtype0o
*while/lstm_cell_1/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=â
(while/lstm_cell_1/dropout_2/GreaterEqualGreaterEqualAwhile/lstm_cell_1/dropout_2/random_uniform/RandomUniform:output:03while/lstm_cell_1/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 while/lstm_cell_1/dropout_2/CastCast,while/lstm_cell_1/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd¥
!while/lstm_cell_1/dropout_2/Mul_1Mul#while/lstm_cell_1/dropout_2/Mul:z:0$while/lstm_cell_1/dropout_2/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdf
!while/lstm_cell_1/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?ª
while/lstm_cell_1/dropout_3/MulMul$while/lstm_cell_1/ones_like:output:0*while/lstm_cell_1/dropout_3/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdu
!while/lstm_cell_1/dropout_3/ShapeShape$while/lstm_cell_1/ones_like:output:0*
T0*
_output_shapes
:´
8while/lstm_cell_1/dropout_3/random_uniform/RandomUniformRandomUniform*while/lstm_cell_1/dropout_3/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
dtype0o
*while/lstm_cell_1/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=â
(while/lstm_cell_1/dropout_3/GreaterEqualGreaterEqualAwhile/lstm_cell_1/dropout_3/random_uniform/RandomUniform:output:03while/lstm_cell_1/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 while/lstm_cell_1/dropout_3/CastCast,while/lstm_cell_1/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd¥
!while/lstm_cell_1/dropout_3/Mul_1Mul#while/lstm_cell_1/dropout_3/Mul:z:0$while/lstm_cell_1/dropout_3/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdf
#while/lstm_cell_1/ones_like_1/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:h
#while/lstm_cell_1/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?´
while/lstm_cell_1/ones_like_1Fill,while/lstm_cell_1/ones_like_1/Shape:output:0,while/lstm_cell_1/ones_like_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿf
!while/lstm_cell_1/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?­
while/lstm_cell_1/dropout_4/MulMul&while/lstm_cell_1/ones_like_1:output:0*while/lstm_cell_1/dropout_4/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
!while/lstm_cell_1/dropout_4/ShapeShape&while/lstm_cell_1/ones_like_1:output:0*
T0*
_output_shapes
:µ
8while/lstm_cell_1/dropout_4/random_uniform/RandomUniformRandomUniform*while/lstm_cell_1/dropout_4/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0o
*while/lstm_cell_1/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=ã
(while/lstm_cell_1/dropout_4/GreaterEqualGreaterEqualAwhile/lstm_cell_1/dropout_4/random_uniform/RandomUniform:output:03while/lstm_cell_1/dropout_4/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 while/lstm_cell_1/dropout_4/CastCast,while/lstm_cell_1/dropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦
!while/lstm_cell_1/dropout_4/Mul_1Mul#while/lstm_cell_1/dropout_4/Mul:z:0$while/lstm_cell_1/dropout_4/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿf
!while/lstm_cell_1/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?­
while/lstm_cell_1/dropout_5/MulMul&while/lstm_cell_1/ones_like_1:output:0*while/lstm_cell_1/dropout_5/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
!while/lstm_cell_1/dropout_5/ShapeShape&while/lstm_cell_1/ones_like_1:output:0*
T0*
_output_shapes
:µ
8while/lstm_cell_1/dropout_5/random_uniform/RandomUniformRandomUniform*while/lstm_cell_1/dropout_5/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0o
*while/lstm_cell_1/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=ã
(while/lstm_cell_1/dropout_5/GreaterEqualGreaterEqualAwhile/lstm_cell_1/dropout_5/random_uniform/RandomUniform:output:03while/lstm_cell_1/dropout_5/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 while/lstm_cell_1/dropout_5/CastCast,while/lstm_cell_1/dropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦
!while/lstm_cell_1/dropout_5/Mul_1Mul#while/lstm_cell_1/dropout_5/Mul:z:0$while/lstm_cell_1/dropout_5/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿf
!while/lstm_cell_1/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?­
while/lstm_cell_1/dropout_6/MulMul&while/lstm_cell_1/ones_like_1:output:0*while/lstm_cell_1/dropout_6/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
!while/lstm_cell_1/dropout_6/ShapeShape&while/lstm_cell_1/ones_like_1:output:0*
T0*
_output_shapes
:µ
8while/lstm_cell_1/dropout_6/random_uniform/RandomUniformRandomUniform*while/lstm_cell_1/dropout_6/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0o
*while/lstm_cell_1/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=ã
(while/lstm_cell_1/dropout_6/GreaterEqualGreaterEqualAwhile/lstm_cell_1/dropout_6/random_uniform/RandomUniform:output:03while/lstm_cell_1/dropout_6/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 while/lstm_cell_1/dropout_6/CastCast,while/lstm_cell_1/dropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦
!while/lstm_cell_1/dropout_6/Mul_1Mul#while/lstm_cell_1/dropout_6/Mul:z:0$while/lstm_cell_1/dropout_6/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿf
!while/lstm_cell_1/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?­
while/lstm_cell_1/dropout_7/MulMul&while/lstm_cell_1/ones_like_1:output:0*while/lstm_cell_1/dropout_7/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
!while/lstm_cell_1/dropout_7/ShapeShape&while/lstm_cell_1/ones_like_1:output:0*
T0*
_output_shapes
:µ
8while/lstm_cell_1/dropout_7/random_uniform/RandomUniformRandomUniform*while/lstm_cell_1/dropout_7/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0o
*while/lstm_cell_1/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=ã
(while/lstm_cell_1/dropout_7/GreaterEqualGreaterEqualAwhile/lstm_cell_1/dropout_7/random_uniform/RandomUniform:output:03while/lstm_cell_1/dropout_7/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 while/lstm_cell_1/dropout_7/CastCast,while/lstm_cell_1/dropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦
!while/lstm_cell_1/dropout_7/Mul_1Mul#while/lstm_cell_1/dropout_7/Mul:z:0$while/lstm_cell_1/dropout_7/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¥
while/lstm_cell_1/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0#while/lstm_cell_1/dropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd©
while/lstm_cell_1/mul_1Mul0while/TensorArrayV2Read/TensorListGetItem:item:0%while/lstm_cell_1/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd©
while/lstm_cell_1/mul_2Mul0while/TensorArrayV2Read/TensorListGetItem:item:0%while/lstm_cell_1/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd©
while/lstm_cell_1/mul_3Mul0while/TensorArrayV2Read/TensorListGetItem:item:0%while/lstm_cell_1/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdc
!while/lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
&while/lstm_cell_1/split/ReadVariableOpReadVariableOp1while_lstm_cell_1_split_readvariableop_resource_0*
_output_shapes
:	d*
dtype0Ø
while/lstm_cell_1/splitSplit*while/lstm_cell_1/split/split_dim:output:0.while/lstm_cell_1/split/ReadVariableOp:value:0*
T0*@
_output_shapes.
,:	d:	d:	d:	d*
	num_split
while/lstm_cell_1/MatMulMatMulwhile/lstm_cell_1/mul:z:0 while/lstm_cell_1/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_1/MatMul_1MatMulwhile/lstm_cell_1/mul_1:z:0 while/lstm_cell_1/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_1/MatMul_2MatMulwhile/lstm_cell_1/mul_2:z:0 while/lstm_cell_1/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_1/MatMul_3MatMulwhile/lstm_cell_1/mul_3:z:0 while/lstm_cell_1/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
#while/lstm_cell_1/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
(while/lstm_cell_1/split_1/ReadVariableOpReadVariableOp3while_lstm_cell_1_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype0Î
while/lstm_cell_1/split_1Split,while/lstm_cell_1/split_1/split_dim:output:00while/lstm_cell_1/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
::::*
	num_split
while/lstm_cell_1/BiasAddBiasAdd"while/lstm_cell_1/MatMul:product:0"while/lstm_cell_1/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ£
while/lstm_cell_1/BiasAdd_1BiasAdd$while/lstm_cell_1/MatMul_1:product:0"while/lstm_cell_1/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ£
while/lstm_cell_1/BiasAdd_2BiasAdd$while/lstm_cell_1/MatMul_2:product:0"while/lstm_cell_1/split_1:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ£
while/lstm_cell_1/BiasAdd_3BiasAdd$while/lstm_cell_1/MatMul_3:product:0"while/lstm_cell_1/split_1:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_1/mul_4Mulwhile_placeholder_2%while/lstm_cell_1/dropout_4/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_1/mul_5Mulwhile_placeholder_2%while/lstm_cell_1/dropout_5/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_1/mul_6Mulwhile_placeholder_2%while/lstm_cell_1/dropout_6/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_1/mul_7Mulwhile_placeholder_2%while/lstm_cell_1/dropout_7/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 while/lstm_cell_1/ReadVariableOpReadVariableOp+while_lstm_cell_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0v
%while/lstm_cell_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'while/lstm_cell_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       x
'while/lstm_cell_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ç
while/lstm_cell_1/strided_sliceStridedSlice(while/lstm_cell_1/ReadVariableOp:value:0.while/lstm_cell_1/strided_slice/stack:output:00while/lstm_cell_1/strided_slice/stack_1:output:00while/lstm_cell_1/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask
while/lstm_cell_1/MatMul_4MatMulwhile/lstm_cell_1/mul_4:z:0(while/lstm_cell_1/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_1/addAddV2"while/lstm_cell_1/BiasAdd:output:0$while/lstm_cell_1/MatMul_4:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
while/lstm_cell_1/SigmoidSigmoidwhile/lstm_cell_1/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"while/lstm_cell_1/ReadVariableOp_1ReadVariableOp+while_lstm_cell_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0x
'while/lstm_cell_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       z
)while/lstm_cell_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       z
)while/lstm_cell_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ñ
!while/lstm_cell_1/strided_slice_1StridedSlice*while/lstm_cell_1/ReadVariableOp_1:value:00while/lstm_cell_1/strided_slice_1/stack:output:02while/lstm_cell_1/strided_slice_1/stack_1:output:02while/lstm_cell_1/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask 
while/lstm_cell_1/MatMul_5MatMulwhile/lstm_cell_1/mul_5:z:0*while/lstm_cell_1/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_1/add_1AddV2$while/lstm_cell_1/BiasAdd_1:output:0$while/lstm_cell_1/MatMul_5:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
while/lstm_cell_1/Sigmoid_1Sigmoidwhile/lstm_cell_1/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_1/mul_8Mulwhile/lstm_cell_1/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"while/lstm_cell_1/ReadVariableOp_2ReadVariableOp+while_lstm_cell_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0x
'while/lstm_cell_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       z
)while/lstm_cell_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      z
)while/lstm_cell_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ñ
!while/lstm_cell_1/strided_slice_2StridedSlice*while/lstm_cell_1/ReadVariableOp_2:value:00while/lstm_cell_1/strided_slice_2/stack:output:02while/lstm_cell_1/strided_slice_2/stack_1:output:02while/lstm_cell_1/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask 
while/lstm_cell_1/MatMul_6MatMulwhile/lstm_cell_1/mul_6:z:0*while/lstm_cell_1/strided_slice_2:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_1/add_2AddV2$while/lstm_cell_1/BiasAdd_2:output:0$while/lstm_cell_1/MatMul_6:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿn
while/lstm_cell_1/TanhTanhwhile/lstm_cell_1/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_1/mul_9Mulwhile/lstm_cell_1/Sigmoid:y:0while/lstm_cell_1/Tanh:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_1/add_3AddV2while/lstm_cell_1/mul_8:z:0while/lstm_cell_1/mul_9:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"while/lstm_cell_1/ReadVariableOp_3ReadVariableOp+while_lstm_cell_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0x
'while/lstm_cell_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"      z
)while/lstm_cell_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        z
)while/lstm_cell_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ñ
!while/lstm_cell_1/strided_slice_3StridedSlice*while/lstm_cell_1/ReadVariableOp_3:value:00while/lstm_cell_1/strided_slice_3/stack:output:02while/lstm_cell_1/strided_slice_3/stack_1:output:02while/lstm_cell_1/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask 
while/lstm_cell_1/MatMul_7MatMulwhile/lstm_cell_1/mul_7:z:0*while/lstm_cell_1/strided_slice_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_1/add_4AddV2$while/lstm_cell_1/BiasAdd_3:output:0$while/lstm_cell_1/MatMul_7:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
while/lstm_cell_1/Sigmoid_2Sigmoidwhile/lstm_cell_1/add_4:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
while/lstm_cell_1/Tanh_1Tanhwhile/lstm_cell_1/add_3:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_1/mul_10Mulwhile/lstm_cell_1/Sigmoid_2:y:0while/lstm_cell_1/Tanh_1:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÅ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_1/mul_10:z:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :éèÒz
while/Identity_4Identitywhile/lstm_cell_1/mul_10:z:0^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿy
while/Identity_5Identitywhile/lstm_cell_1/add_3:z:0^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ²

while/NoOpNoOp!^while/lstm_cell_1/ReadVariableOp#^while/lstm_cell_1/ReadVariableOp_1#^while/lstm_cell_1/ReadVariableOp_2#^while/lstm_cell_1/ReadVariableOp_3'^while/lstm_cell_1/split/ReadVariableOp)^while/lstm_cell_1/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"X
)while_lstm_cell_1_readvariableop_resource+while_lstm_cell_1_readvariableop_resource_0"h
1while_lstm_cell_1_split_1_readvariableop_resource3while_lstm_cell_1_split_1_readvariableop_resource_0"d
/while_lstm_cell_1_split_readvariableop_resource1while_lstm_cell_1_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2D
 while/lstm_cell_1/ReadVariableOp while/lstm_cell_1/ReadVariableOp2H
"while/lstm_cell_1/ReadVariableOp_1"while/lstm_cell_1/ReadVariableOp_12H
"while/lstm_cell_1/ReadVariableOp_2"while/lstm_cell_1/ReadVariableOp_22H
"while/lstm_cell_1/ReadVariableOp_3"while/lstm_cell_1/ReadVariableOp_32P
&while/lstm_cell_1/split/ReadVariableOp&while/lstm_cell_1/split/ReadVariableOp2T
(while/lstm_cell_1/split_1/ReadVariableOp(while/lstm_cell_1/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
éÒ
È

lstm_while_body_11715&
"lstm_while_lstm_while_loop_counter,
(lstm_while_lstm_while_maximum_iterations
lstm_while_placeholder
lstm_while_placeholder_1
lstm_while_placeholder_2
lstm_while_placeholder_3%
!lstm_while_lstm_strided_slice_1_0a
]lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensor_0I
6lstm_while_lstm_cell_1_split_readvariableop_resource_0:	dG
8lstm_while_lstm_cell_1_split_1_readvariableop_resource_0:	D
0lstm_while_lstm_cell_1_readvariableop_resource_0:

lstm_while_identity
lstm_while_identity_1
lstm_while_identity_2
lstm_while_identity_3
lstm_while_identity_4
lstm_while_identity_5#
lstm_while_lstm_strided_slice_1_
[lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensorG
4lstm_while_lstm_cell_1_split_readvariableop_resource:	dE
6lstm_while_lstm_cell_1_split_1_readvariableop_resource:	B
.lstm_while_lstm_cell_1_readvariableop_resource:
¢%lstm/while/lstm_cell_1/ReadVariableOp¢'lstm/while/lstm_cell_1/ReadVariableOp_1¢'lstm/while/lstm_cell_1/ReadVariableOp_2¢'lstm/while/lstm_cell_1/ReadVariableOp_3¢+lstm/while/lstm_cell_1/split/ReadVariableOp¢-lstm/while/lstm_cell_1/split_1/ReadVariableOp
<lstm/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   ¿
.lstm/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem]lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensor_0lstm_while_placeholderElstm/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype0
&lstm/while/lstm_cell_1/ones_like/ShapeShape5lstm/while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:k
&lstm/while/lstm_cell_1/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?¼
 lstm/while/lstm_cell_1/ones_likeFill/lstm/while/lstm_cell_1/ones_like/Shape:output:0/lstm/while/lstm_cell_1/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdi
$lstm/while/lstm_cell_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?µ
"lstm/while/lstm_cell_1/dropout/MulMul)lstm/while/lstm_cell_1/ones_like:output:0-lstm/while/lstm_cell_1/dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd}
$lstm/while/lstm_cell_1/dropout/ShapeShape)lstm/while/lstm_cell_1/ones_like:output:0*
T0*
_output_shapes
:º
;lstm/while/lstm_cell_1/dropout/random_uniform/RandomUniformRandomUniform-lstm/while/lstm_cell_1/dropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
dtype0r
-lstm/while/lstm_cell_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=ë
+lstm/while/lstm_cell_1/dropout/GreaterEqualGreaterEqualDlstm/while/lstm_cell_1/dropout/random_uniform/RandomUniform:output:06lstm/while/lstm_cell_1/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
#lstm/while/lstm_cell_1/dropout/CastCast/lstm/while/lstm_cell_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd®
$lstm/while/lstm_cell_1/dropout/Mul_1Mul&lstm/while/lstm_cell_1/dropout/Mul:z:0'lstm/while/lstm_cell_1/dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdk
&lstm/while/lstm_cell_1/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?¹
$lstm/while/lstm_cell_1/dropout_1/MulMul)lstm/while/lstm_cell_1/ones_like:output:0/lstm/while/lstm_cell_1/dropout_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
&lstm/while/lstm_cell_1/dropout_1/ShapeShape)lstm/while/lstm_cell_1/ones_like:output:0*
T0*
_output_shapes
:¾
=lstm/while/lstm_cell_1/dropout_1/random_uniform/RandomUniformRandomUniform/lstm/while/lstm_cell_1/dropout_1/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
dtype0t
/lstm/while/lstm_cell_1/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=ñ
-lstm/while/lstm_cell_1/dropout_1/GreaterEqualGreaterEqualFlstm/while/lstm_cell_1/dropout_1/random_uniform/RandomUniform:output:08lstm/while/lstm_cell_1/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd¡
%lstm/while/lstm_cell_1/dropout_1/CastCast1lstm/while/lstm_cell_1/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd´
&lstm/while/lstm_cell_1/dropout_1/Mul_1Mul(lstm/while/lstm_cell_1/dropout_1/Mul:z:0)lstm/while/lstm_cell_1/dropout_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdk
&lstm/while/lstm_cell_1/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?¹
$lstm/while/lstm_cell_1/dropout_2/MulMul)lstm/while/lstm_cell_1/ones_like:output:0/lstm/while/lstm_cell_1/dropout_2/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
&lstm/while/lstm_cell_1/dropout_2/ShapeShape)lstm/while/lstm_cell_1/ones_like:output:0*
T0*
_output_shapes
:¾
=lstm/while/lstm_cell_1/dropout_2/random_uniform/RandomUniformRandomUniform/lstm/while/lstm_cell_1/dropout_2/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
dtype0t
/lstm/while/lstm_cell_1/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=ñ
-lstm/while/lstm_cell_1/dropout_2/GreaterEqualGreaterEqualFlstm/while/lstm_cell_1/dropout_2/random_uniform/RandomUniform:output:08lstm/while/lstm_cell_1/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd¡
%lstm/while/lstm_cell_1/dropout_2/CastCast1lstm/while/lstm_cell_1/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd´
&lstm/while/lstm_cell_1/dropout_2/Mul_1Mul(lstm/while/lstm_cell_1/dropout_2/Mul:z:0)lstm/while/lstm_cell_1/dropout_2/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdk
&lstm/while/lstm_cell_1/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?¹
$lstm/while/lstm_cell_1/dropout_3/MulMul)lstm/while/lstm_cell_1/ones_like:output:0/lstm/while/lstm_cell_1/dropout_3/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
&lstm/while/lstm_cell_1/dropout_3/ShapeShape)lstm/while/lstm_cell_1/ones_like:output:0*
T0*
_output_shapes
:¾
=lstm/while/lstm_cell_1/dropout_3/random_uniform/RandomUniformRandomUniform/lstm/while/lstm_cell_1/dropout_3/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
dtype0t
/lstm/while/lstm_cell_1/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=ñ
-lstm/while/lstm_cell_1/dropout_3/GreaterEqualGreaterEqualFlstm/while/lstm_cell_1/dropout_3/random_uniform/RandomUniform:output:08lstm/while/lstm_cell_1/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd¡
%lstm/while/lstm_cell_1/dropout_3/CastCast1lstm/while/lstm_cell_1/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd´
&lstm/while/lstm_cell_1/dropout_3/Mul_1Mul(lstm/while/lstm_cell_1/dropout_3/Mul:z:0)lstm/while/lstm_cell_1/dropout_3/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdp
(lstm/while/lstm_cell_1/ones_like_1/ShapeShapelstm_while_placeholder_2*
T0*
_output_shapes
:m
(lstm/while/lstm_cell_1/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Ã
"lstm/while/lstm_cell_1/ones_like_1Fill1lstm/while/lstm_cell_1/ones_like_1/Shape:output:01lstm/while/lstm_cell_1/ones_like_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿk
&lstm/while/lstm_cell_1/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?¼
$lstm/while/lstm_cell_1/dropout_4/MulMul+lstm/while/lstm_cell_1/ones_like_1:output:0/lstm/while/lstm_cell_1/dropout_4/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
&lstm/while/lstm_cell_1/dropout_4/ShapeShape+lstm/while/lstm_cell_1/ones_like_1:output:0*
T0*
_output_shapes
:¿
=lstm/while/lstm_cell_1/dropout_4/random_uniform/RandomUniformRandomUniform/lstm/while/lstm_cell_1/dropout_4/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0t
/lstm/while/lstm_cell_1/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=ò
-lstm/while/lstm_cell_1/dropout_4/GreaterEqualGreaterEqualFlstm/while/lstm_cell_1/dropout_4/random_uniform/RandomUniform:output:08lstm/while/lstm_cell_1/dropout_4/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¢
%lstm/while/lstm_cell_1/dropout_4/CastCast1lstm/while/lstm_cell_1/dropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿµ
&lstm/while/lstm_cell_1/dropout_4/Mul_1Mul(lstm/while/lstm_cell_1/dropout_4/Mul:z:0)lstm/while/lstm_cell_1/dropout_4/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿk
&lstm/while/lstm_cell_1/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?¼
$lstm/while/lstm_cell_1/dropout_5/MulMul+lstm/while/lstm_cell_1/ones_like_1:output:0/lstm/while/lstm_cell_1/dropout_5/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
&lstm/while/lstm_cell_1/dropout_5/ShapeShape+lstm/while/lstm_cell_1/ones_like_1:output:0*
T0*
_output_shapes
:¿
=lstm/while/lstm_cell_1/dropout_5/random_uniform/RandomUniformRandomUniform/lstm/while/lstm_cell_1/dropout_5/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0t
/lstm/while/lstm_cell_1/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=ò
-lstm/while/lstm_cell_1/dropout_5/GreaterEqualGreaterEqualFlstm/while/lstm_cell_1/dropout_5/random_uniform/RandomUniform:output:08lstm/while/lstm_cell_1/dropout_5/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¢
%lstm/while/lstm_cell_1/dropout_5/CastCast1lstm/while/lstm_cell_1/dropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿµ
&lstm/while/lstm_cell_1/dropout_5/Mul_1Mul(lstm/while/lstm_cell_1/dropout_5/Mul:z:0)lstm/while/lstm_cell_1/dropout_5/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿk
&lstm/while/lstm_cell_1/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?¼
$lstm/while/lstm_cell_1/dropout_6/MulMul+lstm/while/lstm_cell_1/ones_like_1:output:0/lstm/while/lstm_cell_1/dropout_6/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
&lstm/while/lstm_cell_1/dropout_6/ShapeShape+lstm/while/lstm_cell_1/ones_like_1:output:0*
T0*
_output_shapes
:¿
=lstm/while/lstm_cell_1/dropout_6/random_uniform/RandomUniformRandomUniform/lstm/while/lstm_cell_1/dropout_6/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0t
/lstm/while/lstm_cell_1/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=ò
-lstm/while/lstm_cell_1/dropout_6/GreaterEqualGreaterEqualFlstm/while/lstm_cell_1/dropout_6/random_uniform/RandomUniform:output:08lstm/while/lstm_cell_1/dropout_6/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¢
%lstm/while/lstm_cell_1/dropout_6/CastCast1lstm/while/lstm_cell_1/dropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿµ
&lstm/while/lstm_cell_1/dropout_6/Mul_1Mul(lstm/while/lstm_cell_1/dropout_6/Mul:z:0)lstm/while/lstm_cell_1/dropout_6/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿk
&lstm/while/lstm_cell_1/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?¼
$lstm/while/lstm_cell_1/dropout_7/MulMul+lstm/while/lstm_cell_1/ones_like_1:output:0/lstm/while/lstm_cell_1/dropout_7/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
&lstm/while/lstm_cell_1/dropout_7/ShapeShape+lstm/while/lstm_cell_1/ones_like_1:output:0*
T0*
_output_shapes
:¿
=lstm/while/lstm_cell_1/dropout_7/random_uniform/RandomUniformRandomUniform/lstm/while/lstm_cell_1/dropout_7/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0t
/lstm/while/lstm_cell_1/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=ò
-lstm/while/lstm_cell_1/dropout_7/GreaterEqualGreaterEqualFlstm/while/lstm_cell_1/dropout_7/random_uniform/RandomUniform:output:08lstm/while/lstm_cell_1/dropout_7/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¢
%lstm/while/lstm_cell_1/dropout_7/CastCast1lstm/while/lstm_cell_1/dropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿµ
&lstm/while/lstm_cell_1/dropout_7/Mul_1Mul(lstm/while/lstm_cell_1/dropout_7/Mul:z:0)lstm/while/lstm_cell_1/dropout_7/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´
lstm/while/lstm_cell_1/mulMul5lstm/while/TensorArrayV2Read/TensorListGetItem:item:0(lstm/while/lstm_cell_1/dropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd¸
lstm/while/lstm_cell_1/mul_1Mul5lstm/while/TensorArrayV2Read/TensorListGetItem:item:0*lstm/while/lstm_cell_1/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd¸
lstm/while/lstm_cell_1/mul_2Mul5lstm/while/TensorArrayV2Read/TensorListGetItem:item:0*lstm/while/lstm_cell_1/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd¸
lstm/while/lstm_cell_1/mul_3Mul5lstm/while/TensorArrayV2Read/TensorListGetItem:item:0*lstm/while/lstm_cell_1/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdh
&lstm/while/lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :£
+lstm/while/lstm_cell_1/split/ReadVariableOpReadVariableOp6lstm_while_lstm_cell_1_split_readvariableop_resource_0*
_output_shapes
:	d*
dtype0ç
lstm/while/lstm_cell_1/splitSplit/lstm/while/lstm_cell_1/split/split_dim:output:03lstm/while/lstm_cell_1/split/ReadVariableOp:value:0*
T0*@
_output_shapes.
,:	d:	d:	d:	d*
	num_split¡
lstm/while/lstm_cell_1/MatMulMatMullstm/while/lstm_cell_1/mul:z:0%lstm/while/lstm_cell_1/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¥
lstm/while/lstm_cell_1/MatMul_1MatMul lstm/while/lstm_cell_1/mul_1:z:0%lstm/while/lstm_cell_1/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¥
lstm/while/lstm_cell_1/MatMul_2MatMul lstm/while/lstm_cell_1/mul_2:z:0%lstm/while/lstm_cell_1/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¥
lstm/while/lstm_cell_1/MatMul_3MatMul lstm/while/lstm_cell_1/mul_3:z:0%lstm/while/lstm_cell_1/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿj
(lstm/while/lstm_cell_1/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : £
-lstm/while/lstm_cell_1/split_1/ReadVariableOpReadVariableOp8lstm_while_lstm_cell_1_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype0Ý
lstm/while/lstm_cell_1/split_1Split1lstm/while/lstm_cell_1/split_1/split_dim:output:05lstm/while/lstm_cell_1/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
::::*
	num_split®
lstm/while/lstm_cell_1/BiasAddBiasAdd'lstm/while/lstm_cell_1/MatMul:product:0'lstm/while/lstm_cell_1/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ²
 lstm/while/lstm_cell_1/BiasAdd_1BiasAdd)lstm/while/lstm_cell_1/MatMul_1:product:0'lstm/while/lstm_cell_1/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ²
 lstm/while/lstm_cell_1/BiasAdd_2BiasAdd)lstm/while/lstm_cell_1/MatMul_2:product:0'lstm/while/lstm_cell_1/split_1:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ²
 lstm/while/lstm_cell_1/BiasAdd_3BiasAdd)lstm/while/lstm_cell_1/MatMul_3:product:0'lstm/while/lstm_cell_1/split_1:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm/while/lstm_cell_1/mul_4Mullstm_while_placeholder_2*lstm/while/lstm_cell_1/dropout_4/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm/while/lstm_cell_1/mul_5Mullstm_while_placeholder_2*lstm/while/lstm_cell_1/dropout_5/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm/while/lstm_cell_1/mul_6Mullstm_while_placeholder_2*lstm/while/lstm_cell_1/dropout_6/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm/while/lstm_cell_1/mul_7Mullstm_while_placeholder_2*lstm/while/lstm_cell_1/dropout_7/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%lstm/while/lstm_cell_1/ReadVariableOpReadVariableOp0lstm_while_lstm_cell_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0{
*lstm/while/lstm_cell_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        }
,lstm/while/lstm_cell_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       }
,lstm/while/lstm_cell_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      à
$lstm/while/lstm_cell_1/strided_sliceStridedSlice-lstm/while/lstm_cell_1/ReadVariableOp:value:03lstm/while/lstm_cell_1/strided_slice/stack:output:05lstm/while/lstm_cell_1/strided_slice/stack_1:output:05lstm/while/lstm_cell_1/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask­
lstm/while/lstm_cell_1/MatMul_4MatMul lstm/while/lstm_cell_1/mul_4:z:0-lstm/while/lstm_cell_1/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿª
lstm/while/lstm_cell_1/addAddV2'lstm/while/lstm_cell_1/BiasAdd:output:0)lstm/while/lstm_cell_1/MatMul_4:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|
lstm/while/lstm_cell_1/SigmoidSigmoidlstm/while/lstm_cell_1/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'lstm/while/lstm_cell_1/ReadVariableOp_1ReadVariableOp0lstm_while_lstm_cell_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0}
,lstm/while/lstm_cell_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       
.lstm/while/lstm_cell_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       
.lstm/while/lstm_cell_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ê
&lstm/while/lstm_cell_1/strided_slice_1StridedSlice/lstm/while/lstm_cell_1/ReadVariableOp_1:value:05lstm/while/lstm_cell_1/strided_slice_1/stack:output:07lstm/while/lstm_cell_1/strided_slice_1/stack_1:output:07lstm/while/lstm_cell_1/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask¯
lstm/while/lstm_cell_1/MatMul_5MatMul lstm/while/lstm_cell_1/mul_5:z:0/lstm/while/lstm_cell_1/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ®
lstm/while/lstm_cell_1/add_1AddV2)lstm/while/lstm_cell_1/BiasAdd_1:output:0)lstm/while/lstm_cell_1/MatMul_5:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 lstm/while/lstm_cell_1/Sigmoid_1Sigmoid lstm/while/lstm_cell_1/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm/while/lstm_cell_1/mul_8Mul$lstm/while/lstm_cell_1/Sigmoid_1:y:0lstm_while_placeholder_3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'lstm/while/lstm_cell_1/ReadVariableOp_2ReadVariableOp0lstm_while_lstm_cell_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0}
,lstm/while/lstm_cell_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       
.lstm/while/lstm_cell_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      
.lstm/while/lstm_cell_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ê
&lstm/while/lstm_cell_1/strided_slice_2StridedSlice/lstm/while/lstm_cell_1/ReadVariableOp_2:value:05lstm/while/lstm_cell_1/strided_slice_2/stack:output:07lstm/while/lstm_cell_1/strided_slice_2/stack_1:output:07lstm/while/lstm_cell_1/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask¯
lstm/while/lstm_cell_1/MatMul_6MatMul lstm/while/lstm_cell_1/mul_6:z:0/lstm/while/lstm_cell_1/strided_slice_2:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ®
lstm/while/lstm_cell_1/add_2AddV2)lstm/while/lstm_cell_1/BiasAdd_2:output:0)lstm/while/lstm_cell_1/MatMul_6:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
lstm/while/lstm_cell_1/TanhTanh lstm/while/lstm_cell_1/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm/while/lstm_cell_1/mul_9Mul"lstm/while/lstm_cell_1/Sigmoid:y:0lstm/while/lstm_cell_1/Tanh:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm/while/lstm_cell_1/add_3AddV2 lstm/while/lstm_cell_1/mul_8:z:0 lstm/while/lstm_cell_1/mul_9:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'lstm/while/lstm_cell_1/ReadVariableOp_3ReadVariableOp0lstm_while_lstm_cell_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0}
,lstm/while/lstm_cell_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"      
.lstm/while/lstm_cell_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        
.lstm/while/lstm_cell_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ê
&lstm/while/lstm_cell_1/strided_slice_3StridedSlice/lstm/while/lstm_cell_1/ReadVariableOp_3:value:05lstm/while/lstm_cell_1/strided_slice_3/stack:output:07lstm/while/lstm_cell_1/strided_slice_3/stack_1:output:07lstm/while/lstm_cell_1/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask¯
lstm/while/lstm_cell_1/MatMul_7MatMul lstm/while/lstm_cell_1/mul_7:z:0/lstm/while/lstm_cell_1/strided_slice_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ®
lstm/while/lstm_cell_1/add_4AddV2)lstm/while/lstm_cell_1/BiasAdd_3:output:0)lstm/while/lstm_cell_1/MatMul_7:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 lstm/while/lstm_cell_1/Sigmoid_2Sigmoid lstm/while/lstm_cell_1/add_4:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿz
lstm/while/lstm_cell_1/Tanh_1Tanh lstm/while/lstm_cell_1/add_3:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
lstm/while/lstm_cell_1/mul_10Mul$lstm/while/lstm_cell_1/Sigmoid_2:y:0!lstm/while/lstm_cell_1/Tanh_1:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÙ
/lstm/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_while_placeholder_1lstm_while_placeholder!lstm/while/lstm_cell_1/mul_10:z:0*
_output_shapes
: *
element_dtype0:éèÒR
lstm/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :k
lstm/while/addAddV2lstm_while_placeholderlstm/while/add/y:output:0*
T0*
_output_shapes
: T
lstm/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :{
lstm/while/add_1AddV2"lstm_while_lstm_while_loop_counterlstm/while/add_1/y:output:0*
T0*
_output_shapes
: h
lstm/while/IdentityIdentitylstm/while/add_1:z:0^lstm/while/NoOp*
T0*
_output_shapes
: ~
lstm/while/Identity_1Identity(lstm_while_lstm_while_maximum_iterations^lstm/while/NoOp*
T0*
_output_shapes
: h
lstm/while/Identity_2Identitylstm/while/add:z:0^lstm/while/NoOp*
T0*
_output_shapes
: ¨
lstm/while/Identity_3Identity?lstm/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm/while/NoOp*
T0*
_output_shapes
: :éèÒ
lstm/while/Identity_4Identity!lstm/while/lstm_cell_1/mul_10:z:0^lstm/while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm/while/Identity_5Identity lstm/while/lstm_cell_1/add_3:z:0^lstm/while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÕ
lstm/while/NoOpNoOp&^lstm/while/lstm_cell_1/ReadVariableOp(^lstm/while/lstm_cell_1/ReadVariableOp_1(^lstm/while/lstm_cell_1/ReadVariableOp_2(^lstm/while/lstm_cell_1/ReadVariableOp_3,^lstm/while/lstm_cell_1/split/ReadVariableOp.^lstm/while/lstm_cell_1/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "3
lstm_while_identitylstm/while/Identity:output:0"7
lstm_while_identity_1lstm/while/Identity_1:output:0"7
lstm_while_identity_2lstm/while/Identity_2:output:0"7
lstm_while_identity_3lstm/while/Identity_3:output:0"7
lstm_while_identity_4lstm/while/Identity_4:output:0"7
lstm_while_identity_5lstm/while/Identity_5:output:0"b
.lstm_while_lstm_cell_1_readvariableop_resource0lstm_while_lstm_cell_1_readvariableop_resource_0"r
6lstm_while_lstm_cell_1_split_1_readvariableop_resource8lstm_while_lstm_cell_1_split_1_readvariableop_resource_0"n
4lstm_while_lstm_cell_1_split_readvariableop_resource6lstm_while_lstm_cell_1_split_readvariableop_resource_0"D
lstm_while_lstm_strided_slice_1!lstm_while_lstm_strided_slice_1_0"¼
[lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensor]lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2N
%lstm/while/lstm_cell_1/ReadVariableOp%lstm/while/lstm_cell_1/ReadVariableOp2R
'lstm/while/lstm_cell_1/ReadVariableOp_1'lstm/while/lstm_cell_1/ReadVariableOp_12R
'lstm/while/lstm_cell_1/ReadVariableOp_2'lstm/while/lstm_cell_1/ReadVariableOp_22R
'lstm/while/lstm_cell_1/ReadVariableOp_3'lstm/while/lstm_cell_1/ReadVariableOp_32Z
+lstm/while/lstm_cell_1/split/ReadVariableOp+lstm/while/lstm_cell_1/split/ReadVariableOp2^
-lstm/while/lstm_cell_1/split_1/ReadVariableOp-lstm/while/lstm_cell_1/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 


E__inference_sequential_layer_call_and_return_conditional_losses_11140

inputs"
embedding_11118:	Md

lstm_11121:	d

lstm_11123:	

lstm_11125:

dense_11128:	@
dense_11130:@ 
dense_1_11134:	@M
dense_1_11136:	M
identity¢dense/StatefulPartitionedCall¢dense_1/StatefulPartitionedCall¢dropout/StatefulPartitionedCall¢!embedding/StatefulPartitionedCall¢lstm/StatefulPartitionedCallë
!embedding/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_11118*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_embedding_layer_call_and_return_conditional_losses_10333
lstm/StatefulPartitionedCallStatefulPartitionedCall*embedding/StatefulPartitionedCall:output:0
lstm_11121
lstm_11123
lstm_11125*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_lstm_layer_call_and_return_conditional_losses_11075
dense/StatefulPartitionedCallStatefulPartitionedCall%lstm/StatefulPartitionedCall:output:0dense_11128dense_11130*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_10598å
dropout/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_10678
dense_1/StatefulPartitionedCallStatefulPartitionedCall(dropout/StatefulPartitionedCall:output:0dense_1_11134dense_1_11136*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿM*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_10622x
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿMí
NoOpNoOp^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dropout/StatefulPartitionedCall"^embedding/StatefulPartitionedCall^lstm/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2<
lstm/StatefulPartitionedCalllstm/StatefulPartitionedCall:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

Û
?__inference_lstm_layer_call_and_return_conditional_losses_10579

inputs<
)lstm_cell_1_split_readvariableop_resource:	d:
+lstm_cell_1_split_1_readvariableop_resource:	7
#lstm_cell_1_readvariableop_resource:

identity¢lstm_cell_1/ReadVariableOp¢lstm_cell_1/ReadVariableOp_1¢lstm_cell_1/ReadVariableOp_2¢lstm_cell_1/ReadVariableOp_3¢ lstm_cell_1/split/ReadVariableOp¢"lstm_cell_1/split_1/ReadVariableOp¢while;
ShapeShapeinputs*
T0*
_output_shapes
:]
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
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿdD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_maskc
lstm_cell_1/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
:`
lstm_cell_1/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
lstm_cell_1/ones_likeFill$lstm_cell_1/ones_like/Shape:output:0$lstm_cell_1/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd[
lstm_cell_1/ones_like_1/ShapeShapezeros:output:0*
T0*
_output_shapes
:b
lstm_cell_1/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?¢
lstm_cell_1/ones_like_1Fill&lstm_cell_1/ones_like_1/Shape:output:0&lstm_cell_1/ones_like_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_1/mulMulstrided_slice_2:output:0lstm_cell_1/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_cell_1/mul_1Mulstrided_slice_2:output:0lstm_cell_1/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_cell_1/mul_2Mulstrided_slice_2:output:0lstm_cell_1/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_cell_1/mul_3Mulstrided_slice_2:output:0lstm_cell_1/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd]
lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
 lstm_cell_1/split/ReadVariableOpReadVariableOp)lstm_cell_1_split_readvariableop_resource*
_output_shapes
:	d*
dtype0Æ
lstm_cell_1/splitSplit$lstm_cell_1/split/split_dim:output:0(lstm_cell_1/split/ReadVariableOp:value:0*
T0*@
_output_shapes.
,:	d:	d:	d:	d*
	num_split
lstm_cell_1/MatMulMatMullstm_cell_1/mul:z:0lstm_cell_1/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_1/MatMul_1MatMullstm_cell_1/mul_1:z:0lstm_cell_1/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_1/MatMul_2MatMullstm_cell_1/mul_2:z:0lstm_cell_1/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_1/MatMul_3MatMullstm_cell_1/mul_3:z:0lstm_cell_1/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
lstm_cell_1/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
"lstm_cell_1/split_1/ReadVariableOpReadVariableOp+lstm_cell_1_split_1_readvariableop_resource*
_output_shapes	
:*
dtype0¼
lstm_cell_1/split_1Split&lstm_cell_1/split_1/split_dim:output:0*lstm_cell_1/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
::::*
	num_split
lstm_cell_1/BiasAddBiasAddlstm_cell_1/MatMul:product:0lstm_cell_1/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_1/BiasAdd_1BiasAddlstm_cell_1/MatMul_1:product:0lstm_cell_1/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_1/BiasAdd_2BiasAddlstm_cell_1/MatMul_2:product:0lstm_cell_1/split_1:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_1/BiasAdd_3BiasAddlstm_cell_1/MatMul_3:product:0lstm_cell_1/split_1:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}
lstm_cell_1/mul_4Mulzeros:output:0 lstm_cell_1/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}
lstm_cell_1/mul_5Mulzeros:output:0 lstm_cell_1/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}
lstm_cell_1/mul_6Mulzeros:output:0 lstm_cell_1/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}
lstm_cell_1/mul_7Mulzeros:output:0 lstm_cell_1/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_1/ReadVariableOpReadVariableOp#lstm_cell_1_readvariableop_resource* 
_output_shapes
:
*
dtype0p
lstm_cell_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        r
!lstm_cell_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       r
!lstm_cell_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ©
lstm_cell_1/strided_sliceStridedSlice"lstm_cell_1/ReadVariableOp:value:0(lstm_cell_1/strided_slice/stack:output:0*lstm_cell_1/strided_slice/stack_1:output:0*lstm_cell_1/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask
lstm_cell_1/MatMul_4MatMullstm_cell_1/mul_4:z:0"lstm_cell_1/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_1/addAddV2lstm_cell_1/BiasAdd:output:0lstm_cell_1/MatMul_4:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿf
lstm_cell_1/SigmoidSigmoidlstm_cell_1/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_1/ReadVariableOp_1ReadVariableOp#lstm_cell_1_readvariableop_resource* 
_output_shapes
:
*
dtype0r
!lstm_cell_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       t
#lstm_cell_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       t
#lstm_cell_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ³
lstm_cell_1/strided_slice_1StridedSlice$lstm_cell_1/ReadVariableOp_1:value:0*lstm_cell_1/strided_slice_1/stack:output:0,lstm_cell_1/strided_slice_1/stack_1:output:0,lstm_cell_1/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask
lstm_cell_1/MatMul_5MatMullstm_cell_1/mul_5:z:0$lstm_cell_1/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_1/add_1AddV2lstm_cell_1/BiasAdd_1:output:0lstm_cell_1/MatMul_5:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿj
lstm_cell_1/Sigmoid_1Sigmoidlstm_cell_1/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
lstm_cell_1/mul_8Mullstm_cell_1/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_1/ReadVariableOp_2ReadVariableOp#lstm_cell_1_readvariableop_resource* 
_output_shapes
:
*
dtype0r
!lstm_cell_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       t
#lstm_cell_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      t
#lstm_cell_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ³
lstm_cell_1/strided_slice_2StridedSlice$lstm_cell_1/ReadVariableOp_2:value:0*lstm_cell_1/strided_slice_2/stack:output:0,lstm_cell_1/strided_slice_2/stack_1:output:0,lstm_cell_1/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask
lstm_cell_1/MatMul_6MatMullstm_cell_1/mul_6:z:0$lstm_cell_1/strided_slice_2:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_1/add_2AddV2lstm_cell_1/BiasAdd_2:output:0lstm_cell_1/MatMul_6:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿb
lstm_cell_1/TanhTanhlstm_cell_1/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿz
lstm_cell_1/mul_9Mullstm_cell_1/Sigmoid:y:0lstm_cell_1/Tanh:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ{
lstm_cell_1/add_3AddV2lstm_cell_1/mul_8:z:0lstm_cell_1/mul_9:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_1/ReadVariableOp_3ReadVariableOp#lstm_cell_1_readvariableop_resource* 
_output_shapes
:
*
dtype0r
!lstm_cell_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"      t
#lstm_cell_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        t
#lstm_cell_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ³
lstm_cell_1/strided_slice_3StridedSlice$lstm_cell_1/ReadVariableOp_3:value:0*lstm_cell_1/strided_slice_3/stack:output:0,lstm_cell_1/strided_slice_3/stack_1:output:0,lstm_cell_1/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask
lstm_cell_1/MatMul_7MatMullstm_cell_1/mul_7:z:0$lstm_cell_1/strided_slice_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_1/add_4AddV2lstm_cell_1/BiasAdd_3:output:0lstm_cell_1/MatMul_7:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿj
lstm_cell_1/Sigmoid_2Sigmoidlstm_cell_1/add_4:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_cell_1/Tanh_1Tanhlstm_cell_1/add_3:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_1/mul_10Mullstm_cell_1/Sigmoid_2:y:0lstm_cell_1/Tanh_1:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ÷
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)lstm_cell_1_split_readvariableop_resource+lstm_cell_1_split_1_readvariableop_resource#lstm_cell_1_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_10445*
condR
while_cond_10444*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Ì
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"           
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp^lstm_cell_1/ReadVariableOp^lstm_cell_1/ReadVariableOp_1^lstm_cell_1/ReadVariableOp_2^lstm_cell_1/ReadVariableOp_3!^lstm_cell_1/split/ReadVariableOp#^lstm_cell_1/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd: : : 28
lstm_cell_1/ReadVariableOplstm_cell_1/ReadVariableOp2<
lstm_cell_1/ReadVariableOp_1lstm_cell_1/ReadVariableOp_12<
lstm_cell_1/ReadVariableOp_2lstm_cell_1/ReadVariableOp_22<
lstm_cell_1/ReadVariableOp_3lstm_cell_1/ReadVariableOp_32D
 lstm_cell_1/split/ReadVariableOp lstm_cell_1/split/ReadVariableOp2H
"lstm_cell_1/split_1/ReadVariableOp"lstm_cell_1/split_1/ReadVariableOp2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs
À	
¢
lstm_while_cond_11386&
"lstm_while_lstm_while_loop_counter,
(lstm_while_lstm_while_maximum_iterations
lstm_while_placeholder
lstm_while_placeholder_1
lstm_while_placeholder_2
lstm_while_placeholder_3(
$lstm_while_less_lstm_strided_slice_1=
9lstm_while_lstm_while_cond_11386___redundant_placeholder0=
9lstm_while_lstm_while_cond_11386___redundant_placeholder1=
9lstm_while_lstm_while_cond_11386___redundant_placeholder2=
9lstm_while_lstm_while_cond_11386___redundant_placeholder3
lstm_while_identity
v
lstm/while/LessLesslstm_while_placeholder$lstm_while_less_lstm_strided_slice_1*
T0*
_output_shapes
: U
lstm/while/IdentityIdentitylstm/while/Less:z:0*
T0
*
_output_shapes
: "3
lstm_while_identitylstm/while/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
ó7
ø
?__inference_lstm_layer_call_and_return_conditional_losses_10002

inputs#
lstm_cell_1_9920:	d
lstm_cell_1_9922:	$
lstm_cell_1_9924:

identity¢#lstm_cell_1/StatefulPartitionedCall¢while;
ShapeShapeinputs*
T0*
_output_shapes
:]
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
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿdD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_maskë
#lstm_cell_1/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_1_9920lstm_cell_1_9922lstm_cell_1_9924*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_lstm_cell_1_layer_call_and_return_conditional_losses_9919n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ®
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_1_9920lstm_cell_1_9922lstm_cell_1_9924*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_9933*
condR
while_cond_9932*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Ì
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"           
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿt
NoOpNoOp$^lstm_cell_1/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd: : : 2J
#lstm_cell_1/StatefulPartitionedCall#lstm_cell_1/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs
¦

õ
B__inference_dense_1_layer_call_and_return_conditional_losses_13314

inputs1
matmul_readvariableop_resource:	@M.
biasadd_readvariableop_resource:	M
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@M*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿMs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:M*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿMW
SoftmaxSoftmaxBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿMa
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿMw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
Û"
×
while_body_10238
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0,
while_lstm_cell_1_10262_0:	d(
while_lstm_cell_1_10264_0:	-
while_lstm_cell_1_10266_0:

while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor*
while_lstm_cell_1_10262:	d&
while_lstm_cell_1_10264:	+
while_lstm_cell_1_10266:
¢)while/lstm_cell_1/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿd   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype0­
)while/lstm_cell_1/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_1_10262_0while_lstm_cell_1_10264_0while_lstm_cell_1_10266_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_lstm_cell_1_layer_call_and_return_conditional_losses_10179Û
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder2while/lstm_cell_1/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :éèÒ
while/Identity_4Identity2while/lstm_cell_1/StatefulPartitionedCall:output:1^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/Identity_5Identity2while/lstm_cell_1/StatefulPartitionedCall:output:2^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿx

while/NoOpNoOp*^while/lstm_cell_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"4
while_lstm_cell_1_10262while_lstm_cell_1_10262_0"4
while_lstm_cell_1_10264while_lstm_cell_1_10264_0"4
while_lstm_cell_1_10266while_lstm_cell_1_10266_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2V
)while/lstm_cell_1/StatefulPartitionedCall)while/lstm_cell_1/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
à	
Å
*__inference_sequential_layer_call_fn_11272

inputs
unknown:	Md
	unknown_0:	d
	unknown_1:	
	unknown_2:

	unknown_3:	@
	unknown_4:@
	unknown_5:	@M
	unknown_6:	M
identity¢StatefulPartitionedCall©
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿM**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_11140p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿM`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs"ÛL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*Ä
serving_default°
T
embedding_inputA
!serving_default_embedding_input:0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ<
dense_11
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿMtensorflow/serving/predict:
´
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer-3
layer_with_weights-3
layer-4
	optimizer

signatures
#_self_saveable_object_factories
		variables

trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature"
_tf_keras_sequential
Ú

embeddings
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
ÿ
cell

state_spec
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
_random_generator
 __call__
*!&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
à

"kernel
#bias
#$_self_saveable_object_factories
%	variables
&trainable_variables
'regularization_losses
(	keras_api
)__call__
**&call_and_return_all_conditional_losses"
_tf_keras_layer
á
#+_self_saveable_object_factories
,	variables
-trainable_variables
.regularization_losses
/	keras_api
0_random_generator
1__call__
*2&call_and_return_all_conditional_losses"
_tf_keras_layer
à

3kernel
4bias
#5_self_saveable_object_factories
6	variables
7trainable_variables
8regularization_losses
9	keras_api
:__call__
*;&call_and_return_all_conditional_losses"
_tf_keras_layer
"
	optimizer
,
<serving_default"
signature_map
 "
trackable_dict_wrapper
X
0
=1
>2
?3
"4
#5
36
47"
trackable_list_wrapper
X
0
=1
>2
?3
"4
#5
36
47"
trackable_list_wrapper
 "
trackable_list_wrapper
Ê
@non_trainable_variables

Alayers
Bmetrics
Clayer_regularization_losses
Dlayer_metrics
		variables

trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
ö2ó
*__inference_sequential_layer_call_fn_10648
*__inference_sequential_layer_call_fn_11251
*__inference_sequential_layer_call_fn_11272
*__inference_sequential_layer_call_fn_11180À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
â2ß
E__inference_sequential_layer_call_and_return_conditional_losses_11536
E__inference_sequential_layer_call_and_return_conditional_losses_11935
E__inference_sequential_layer_call_and_return_conditional_losses_11205
E__inference_sequential_layer_call_and_return_conditional_losses_11230À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ÒBÏ
__inference__wrapped_model_9802embedding_input"
²
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
':%	Md2embedding/embeddings
 "
trackable_dict_wrapper
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
­
Enon_trainable_variables

Flayers
Gmetrics
Hlayer_regularization_losses
Ilayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
Ó2Ð
)__inference_embedding_layer_call_fn_11965¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
î2ë
D__inference_embedding_layer_call_and_return_conditional_losses_11975¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 

J
state_size

=kernel
>recurrent_kernel
?bias
#K_self_saveable_object_factories
L	variables
Mtrainable_variables
Nregularization_losses
O	keras_api
P_random_generator
Q__call__
*R&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
5
=0
>1
?2"
trackable_list_wrapper
5
=0
>1
?2"
trackable_list_wrapper
 "
trackable_list_wrapper
¹

Sstates
Tnon_trainable_variables

Ulayers
Vmetrics
Wlayer_regularization_losses
Xlayer_metrics
	variables
trainable_variables
regularization_losses
 __call__
*!&call_and_return_all_conditional_losses
&!"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
ó2ð
$__inference_lstm_layer_call_fn_11986
$__inference_lstm_layer_call_fn_11997
$__inference_lstm_layer_call_fn_12008
$__inference_lstm_layer_call_fn_12019Õ
Ì²È
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ß2Ü
?__inference_lstm_layer_call_and_return_conditional_losses_12262
?__inference_lstm_layer_call_and_return_conditional_losses_12633
?__inference_lstm_layer_call_and_return_conditional_losses_12876
?__inference_lstm_layer_call_and_return_conditional_losses_13247Õ
Ì²È
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
:	@2dense/kernel
:@2
dense/bias
 "
trackable_dict_wrapper
.
"0
#1"
trackable_list_wrapper
.
"0
#1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
Ynon_trainable_variables

Zlayers
[metrics
\layer_regularization_losses
]layer_metrics
%	variables
&trainable_variables
'regularization_losses
)__call__
**&call_and_return_all_conditional_losses
&*"call_and_return_conditional_losses"
_generic_user_object
Ï2Ì
%__inference_dense_layer_call_fn_13256¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ê2ç
@__inference_dense_layer_call_and_return_conditional_losses_13267¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
­
^non_trainable_variables

_layers
`metrics
alayer_regularization_losses
blayer_metrics
,	variables
-trainable_variables
.regularization_losses
1__call__
*2&call_and_return_all_conditional_losses
&2"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
2
'__inference_dropout_layer_call_fn_13272
'__inference_dropout_layer_call_fn_13277´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Â2¿
B__inference_dropout_layer_call_and_return_conditional_losses_13282
B__inference_dropout_layer_call_and_return_conditional_losses_13294´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
!:	@M2dense_1/kernel
:M2dense_1/bias
 "
trackable_dict_wrapper
.
30
41"
trackable_list_wrapper
.
30
41"
trackable_list_wrapper
 "
trackable_list_wrapper
­
cnon_trainable_variables

dlayers
emetrics
flayer_regularization_losses
glayer_metrics
6	variables
7trainable_variables
8regularization_losses
:__call__
*;&call_and_return_all_conditional_losses
&;"call_and_return_conditional_losses"
_generic_user_object
Ñ2Î
'__inference_dense_1_layer_call_fn_13303¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ì2é
B__inference_dense_1_layer_call_and_return_conditional_losses_13314¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ÒBÏ
#__inference_signature_wrapper_11958embedding_input"
²
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
(:&	d2lstm/lstm_cell/kernel
3:1
2lstm/lstm_cell/recurrent_kernel
": 2lstm/lstm_cell/bias
 "
trackable_list_wrapper
C
0
1
2
3
4"
trackable_list_wrapper
.
h0
i1"
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
trackable_dict_wrapper
5
=0
>1
?2"
trackable_list_wrapper
5
=0
>1
?2"
trackable_list_wrapper
 "
trackable_list_wrapper
­
jnon_trainable_variables

klayers
lmetrics
mlayer_regularization_losses
nlayer_metrics
L	variables
Mtrainable_variables
Nregularization_losses
Q__call__
*R&call_and_return_all_conditional_losses
&R"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
2
+__inference_lstm_cell_1_layer_call_fn_13331
+__inference_lstm_cell_1_layer_call_fn_13348¾
µ²±
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Ô2Ñ
F__inference_lstm_cell_1_layer_call_and_return_conditional_losses_13430
F__inference_lstm_cell_1_layer_call_and_return_conditional_losses_13576¾
µ²±
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
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
N
	ototal
	pcount
q	variables
r	keras_api"
_tf_keras_metric
^
	stotal
	tcount
u
_fn_kwargs
v	variables
w	keras_api"
_tf_keras_metric
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
:  (2total
:  (2count
.
o0
p1"
trackable_list_wrapper
-
q	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
s0
t1"
trackable_list_wrapper
-
v	variables"
_generic_user_object¥
__inference__wrapped_model_9802=?>"#34A¢>
7¢4
2/
embedding_inputÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "2ª/
-
dense_1"
dense_1ÿÿÿÿÿÿÿÿÿM£
B__inference_dense_1_layer_call_and_return_conditional_losses_13314]34/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ@
ª "&¢#

0ÿÿÿÿÿÿÿÿÿM
 {
'__inference_dense_1_layer_call_fn_13303P34/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ@
ª "ÿÿÿÿÿÿÿÿÿM¡
@__inference_dense_layer_call_and_return_conditional_losses_13267]"#0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ@
 y
%__inference_dense_layer_call_fn_13256P"#0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ@¢
B__inference_dropout_layer_call_and_return_conditional_losses_13282\3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ@
p 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ@
 ¢
B__inference_dropout_layer_call_and_return_conditional_losses_13294\3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ@
p
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ@
 z
'__inference_dropout_layer_call_fn_13272O3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ@
p 
ª "ÿÿÿÿÿÿÿÿÿ@z
'__inference_dropout_layer_call_fn_13277O3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ@
p
ª "ÿÿÿÿÿÿÿÿÿ@¹
D__inference_embedding_layer_call_and_return_conditional_losses_11975q8¢5
.¢+
)&
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "2¢/
(%
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd
 
)__inference_embedding_layer_call_fn_11965d8¢5
.¢+
)&
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "%"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿdÍ
F__inference_lstm_cell_1_layer_call_and_return_conditional_losses_13430=?>¢
x¢u
 
inputsÿÿÿÿÿÿÿÿÿd
M¢J
# 
states/0ÿÿÿÿÿÿÿÿÿ
# 
states/1ÿÿÿÿÿÿÿÿÿ
p 
ª "v¢s
l¢i

0/0ÿÿÿÿÿÿÿÿÿ
GD
 
0/1/0ÿÿÿÿÿÿÿÿÿ
 
0/1/1ÿÿÿÿÿÿÿÿÿ
 Í
F__inference_lstm_cell_1_layer_call_and_return_conditional_losses_13576=?>¢
x¢u
 
inputsÿÿÿÿÿÿÿÿÿd
M¢J
# 
states/0ÿÿÿÿÿÿÿÿÿ
# 
states/1ÿÿÿÿÿÿÿÿÿ
p
ª "v¢s
l¢i

0/0ÿÿÿÿÿÿÿÿÿ
GD
 
0/1/0ÿÿÿÿÿÿÿÿÿ
 
0/1/1ÿÿÿÿÿÿÿÿÿ
 ¢
+__inference_lstm_cell_1_layer_call_fn_13331ò=?>¢
x¢u
 
inputsÿÿÿÿÿÿÿÿÿd
M¢J
# 
states/0ÿÿÿÿÿÿÿÿÿ
# 
states/1ÿÿÿÿÿÿÿÿÿ
p 
ª "f¢c

0ÿÿÿÿÿÿÿÿÿ
C@

1/0ÿÿÿÿÿÿÿÿÿ

1/1ÿÿÿÿÿÿÿÿÿ¢
+__inference_lstm_cell_1_layer_call_fn_13348ò=?>¢
x¢u
 
inputsÿÿÿÿÿÿÿÿÿd
M¢J
# 
states/0ÿÿÿÿÿÿÿÿÿ
# 
states/1ÿÿÿÿÿÿÿÿÿ
p
ª "f¢c

0ÿÿÿÿÿÿÿÿÿ
C@

1/0ÿÿÿÿÿÿÿÿÿ

1/1ÿÿÿÿÿÿÿÿÿÁ
?__inference_lstm_layer_call_and_return_conditional_losses_12262~=?>O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd

 
p 

 
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 Á
?__inference_lstm_layer_call_and_return_conditional_losses_12633~=?>O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd

 
p

 
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 º
?__inference_lstm_layer_call_and_return_conditional_losses_12876w=?>H¢E
>¢;
-*
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd

 
p 

 
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 º
?__inference_lstm_layer_call_and_return_conditional_losses_13247w=?>H¢E
>¢;
-*
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd

 
p

 
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 
$__inference_lstm_layer_call_fn_11986q=?>O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd

 
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
$__inference_lstm_layer_call_fn_11997q=?>O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd

 
p

 
ª "ÿÿÿÿÿÿÿÿÿ
$__inference_lstm_layer_call_fn_12008j=?>H¢E
>¢;
-*
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd

 
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
$__inference_lstm_layer_call_fn_12019j=?>H¢E
>¢;
-*
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd

 
p

 
ª "ÿÿÿÿÿÿÿÿÿÆ
E__inference_sequential_layer_call_and_return_conditional_losses_11205}=?>"#34I¢F
?¢<
2/
embedding_inputÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p 

 
ª "&¢#

0ÿÿÿÿÿÿÿÿÿM
 Æ
E__inference_sequential_layer_call_and_return_conditional_losses_11230}=?>"#34I¢F
?¢<
2/
embedding_inputÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p

 
ª "&¢#

0ÿÿÿÿÿÿÿÿÿM
 ½
E__inference_sequential_layer_call_and_return_conditional_losses_11536t=?>"#34@¢=
6¢3
)&
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p 

 
ª "&¢#

0ÿÿÿÿÿÿÿÿÿM
 ½
E__inference_sequential_layer_call_and_return_conditional_losses_11935t=?>"#34@¢=
6¢3
)&
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p

 
ª "&¢#

0ÿÿÿÿÿÿÿÿÿM
 
*__inference_sequential_layer_call_fn_10648p=?>"#34I¢F
?¢<
2/
embedding_inputÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿM
*__inference_sequential_layer_call_fn_11180p=?>"#34I¢F
?¢<
2/
embedding_inputÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿM
*__inference_sequential_layer_call_fn_11251g=?>"#34@¢=
6¢3
)&
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿM
*__inference_sequential_layer_call_fn_11272g=?>"#34@¢=
6¢3
)&
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿM¼
#__inference_signature_wrapper_11958=?>"#34T¢Q
¢ 
JªG
E
embedding_input2/
embedding_inputÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"2ª/
-
dense_1"
dense_1ÿÿÿÿÿÿÿÿÿM