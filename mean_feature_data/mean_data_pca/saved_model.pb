
Ç
B
AssignVariableOp
resource
value"dtype"
dtypetype
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
.
Identity

input"T
output"T"	
Ttype
º
	MLCMatMul
a"T
b"T

unique_key"T*num_args
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
2"
num_argsint ("

input_rankint(0
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
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
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2
¾
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
executor_typestring 
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*	2.4.0-rc02&tf_macos-v0.1-alpha2-AS-67-gf3595294ab8î³
{
dense_21/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	9* 
shared_namedense_21/kernel
t
#dense_21/kernel/Read/ReadVariableOpReadVariableOpdense_21/kernel*
_output_shapes
:	9*
dtype0
s
dense_21/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_21/bias
l
!dense_21/bias/Read/ReadVariableOpReadVariableOpdense_21/bias*
_output_shapes	
:*
dtype0
|
dense_22/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
´* 
shared_namedense_22/kernel
u
#dense_22/kernel/Read/ReadVariableOpReadVariableOpdense_22/kernel* 
_output_shapes
:
´*
dtype0
s
dense_22/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:´*
shared_namedense_22/bias
l
!dense_22/bias/Read/ReadVariableOpReadVariableOpdense_22/bias*
_output_shapes	
:´*
dtype0
{
dense_23/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	´
* 
shared_namedense_23/kernel
t
#dense_23/kernel/Read/ReadVariableOpReadVariableOpdense_23/kernel*
_output_shapes
:	´
*
dtype0
r
dense_23/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_namedense_23/bias
k
!dense_23/bias/Read/ReadVariableOpReadVariableOpdense_23/bias*
_output_shapes
:
*
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

Adam/dense_21/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	9*'
shared_nameAdam/dense_21/kernel/m

*Adam/dense_21/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_21/kernel/m*
_output_shapes
:	9*
dtype0

Adam/dense_21/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_21/bias/m
z
(Adam/dense_21/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_21/bias/m*
_output_shapes	
:*
dtype0

Adam/dense_22/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
´*'
shared_nameAdam/dense_22/kernel/m

*Adam/dense_22/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_22/kernel/m* 
_output_shapes
:
´*
dtype0

Adam/dense_22/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:´*%
shared_nameAdam/dense_22/bias/m
z
(Adam/dense_22/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_22/bias/m*
_output_shapes	
:´*
dtype0

Adam/dense_23/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	´
*'
shared_nameAdam/dense_23/kernel/m

*Adam/dense_23/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_23/kernel/m*
_output_shapes
:	´
*
dtype0

Adam/dense_23/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*%
shared_nameAdam/dense_23/bias/m
y
(Adam/dense_23/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_23/bias/m*
_output_shapes
:
*
dtype0

Adam/dense_21/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	9*'
shared_nameAdam/dense_21/kernel/v

*Adam/dense_21/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_21/kernel/v*
_output_shapes
:	9*
dtype0

Adam/dense_21/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_21/bias/v
z
(Adam/dense_21/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_21/bias/v*
_output_shapes	
:*
dtype0

Adam/dense_22/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
´*'
shared_nameAdam/dense_22/kernel/v

*Adam/dense_22/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_22/kernel/v* 
_output_shapes
:
´*
dtype0

Adam/dense_22/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:´*%
shared_nameAdam/dense_22/bias/v
z
(Adam/dense_22/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_22/bias/v*
_output_shapes	
:´*
dtype0

Adam/dense_23/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	´
*'
shared_nameAdam/dense_23/kernel/v

*Adam/dense_23/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_23/kernel/v*
_output_shapes
:	´
*
dtype0

Adam/dense_23/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*%
shared_nameAdam/dense_23/bias/v
y
(Adam/dense_23/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_23/bias/v*
_output_shapes
:
*
dtype0

NoOpNoOp
¼.
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*÷-
valueí-Bê- Bã-

layer_with_weights-0
layer-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer-4
layer-5
layer_with_weights-2
layer-6
	optimizer
	trainable_variables

regularization_losses
	variables
	keras_api

signatures
h

kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api
R
trainable_variables
regularization_losses
	variables
	keras_api
R
trainable_variables
regularization_losses
	variables
	keras_api
h

kernel
bias
trainable_variables
regularization_losses
 	variables
!	keras_api
R
"trainable_variables
#regularization_losses
$	variables
%	keras_api
R
&trainable_variables
'regularization_losses
(	variables
)	keras_api
h

*kernel
+bias
,trainable_variables
-regularization_losses
.	variables
/	keras_api
¬
0iter

1beta_1

2beta_2
	3decay
4learning_ratemhmimjmk*ml+mmvnvovpvq*vr+vs
*
0
1
2
3
*4
+5
 
*
0
1
2
3
*4
+5
­
5layer_regularization_losses
	trainable_variables
6layer_metrics

7layers

regularization_losses
8non_trainable_variables
9metrics
	variables
 
[Y
VARIABLE_VALUEdense_21/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_21/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
­
:layer_regularization_losses
trainable_variables

;layers
<layer_metrics
regularization_losses
=non_trainable_variables
>metrics
	variables
 
 
 
­
?layer_regularization_losses
trainable_variables

@layers
Alayer_metrics
regularization_losses
Bnon_trainable_variables
Cmetrics
	variables
 
 
 
­
Dlayer_regularization_losses
trainable_variables

Elayers
Flayer_metrics
regularization_losses
Gnon_trainable_variables
Hmetrics
	variables
[Y
VARIABLE_VALUEdense_22/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_22/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
­
Ilayer_regularization_losses
trainable_variables

Jlayers
Klayer_metrics
regularization_losses
Lnon_trainable_variables
Mmetrics
 	variables
 
 
 
­
Nlayer_regularization_losses
"trainable_variables

Olayers
Player_metrics
#regularization_losses
Qnon_trainable_variables
Rmetrics
$	variables
 
 
 
­
Slayer_regularization_losses
&trainable_variables

Tlayers
Ulayer_metrics
'regularization_losses
Vnon_trainable_variables
Wmetrics
(	variables
[Y
VARIABLE_VALUEdense_23/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_23/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

*0
+1
 

*0
+1
­
Xlayer_regularization_losses
,trainable_variables

Ylayers
Zlayer_metrics
-regularization_losses
[non_trainable_variables
\metrics
.	variables
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
 
 
1
0
1
2
3
4
5
6
 

]0
^1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
4
	_total
	`count
a	variables
b	keras_api
D
	ctotal
	dcount
e
_fn_kwargs
f	variables
g	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

_0
`1

a	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

c0
d1

f	variables
~|
VARIABLE_VALUEAdam/dense_21/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_21/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_22/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_22/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_23/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_23/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_21/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_21/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_22/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_22/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_23/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_23/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
z
serving_default_input_8Placeholder*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ9*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ9

StatefulPartitionedCallStatefulPartitionedCallserving_default_input_8dense_21/kerneldense_21/biasdense_22/kerneldense_22/biasdense_23/kerneldense_23/bias*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *.
f)R'
%__inference_signature_wrapper_1384484
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
¬

StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_21/kernel/Read/ReadVariableOp!dense_21/bias/Read/ReadVariableOp#dense_22/kernel/Read/ReadVariableOp!dense_22/bias/Read/ReadVariableOp#dense_23/kernel/Read/ReadVariableOp!dense_23/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp*Adam/dense_21/kernel/m/Read/ReadVariableOp(Adam/dense_21/bias/m/Read/ReadVariableOp*Adam/dense_22/kernel/m/Read/ReadVariableOp(Adam/dense_22/bias/m/Read/ReadVariableOp*Adam/dense_23/kernel/m/Read/ReadVariableOp(Adam/dense_23/bias/m/Read/ReadVariableOp*Adam/dense_21/kernel/v/Read/ReadVariableOp(Adam/dense_21/bias/v/Read/ReadVariableOp*Adam/dense_22/kernel/v/Read/ReadVariableOp(Adam/dense_22/bias/v/Read/ReadVariableOp*Adam/dense_23/kernel/v/Read/ReadVariableOp(Adam/dense_23/bias/v/Read/ReadVariableOpConst*(
Tin!
2	*
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
GPU 2J 8 *)
f$R"
 __inference__traced_save_1384856

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_21/kerneldense_21/biasdense_22/kerneldense_22/biasdense_23/kerneldense_23/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1Adam/dense_21/kernel/mAdam/dense_21/bias/mAdam/dense_22/kernel/mAdam/dense_22/bias/mAdam/dense_23/kernel/mAdam/dense_23/bias/mAdam/dense_21/kernel/vAdam/dense_21/bias/vAdam/dense_22/kernel/vAdam/dense_22/bias/vAdam/dense_23/kernel/vAdam/dense_23/bias/v*'
Tin 
2*
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
GPU 2J 8 *,
f'R%
#__inference__traced_restore_1384947é½
?
Ô
I__inference_sequential_7_layer_call_and_return_conditional_losses_1384533

inputs.
*dense_21_mlcmatmul_readvariableop_resource,
(dense_21_biasadd_readvariableop_resource.
*dense_22_mlcmatmul_readvariableop_resource,
(dense_22_biasadd_readvariableop_resource.
*dense_23_mlcmatmul_readvariableop_resource,
(dense_23_biasadd_readvariableop_resource
identity¢dense_21/BiasAdd/ReadVariableOp¢!dense_21/MLCMatMul/ReadVariableOp¢dense_22/BiasAdd/ReadVariableOp¢!dense_22/MLCMatMul/ReadVariableOp¢dense_23/BiasAdd/ReadVariableOp¢!dense_23/MLCMatMul/ReadVariableOp²
!dense_21/MLCMatMul/ReadVariableOpReadVariableOp*dense_21_mlcmatmul_readvariableop_resource*
_output_shapes
:	9*
dtype02#
!dense_21/MLCMatMul/ReadVariableOp
dense_21/MLCMatMul	MLCMatMulinputs)dense_21/MLCMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_21/MLCMatMul¨
dense_21/BiasAdd/ReadVariableOpReadVariableOp(dense_21_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02!
dense_21/BiasAdd/ReadVariableOp©
dense_21/BiasAddBiasAdddense_21/MLCMatMul:product:0'dense_21/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_21/BiasAddt
dense_21/ReluReludense_21/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_21/Relu}
gaussian_noise_14/ShapeShapedense_21/Relu:activations:0*
T0*
_output_shapes
:2
gaussian_noise_14/Shape
$gaussian_noise_14/random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    2&
$gaussian_noise_14/random_normal/mean
&gaussian_noise_14/random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *i*[@2(
&gaussian_noise_14/random_normal/stddev
4gaussian_noise_14/random_normal/RandomStandardNormalRandomStandardNormal gaussian_noise_14/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
seed±ÿå)*
seed2àÒ26
4gaussian_noise_14/random_normal/RandomStandardNormalô
#gaussian_noise_14/random_normal/mulMul=gaussian_noise_14/random_normal/RandomStandardNormal:output:0/gaussian_noise_14/random_normal/stddev:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2%
#gaussian_noise_14/random_normal/mulÔ
gaussian_noise_14/random_normalAdd'gaussian_noise_14/random_normal/mul:z:0-gaussian_noise_14/random_normal/mean:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
gaussian_noise_14/random_normal¬
gaussian_noise_14/addAddV2dense_21/Relu:activations:0#gaussian_noise_14/random_normal:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gaussian_noise_14/addy
dropout_14/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout_14/dropout/Const¨
dropout_14/dropout/MulMulgaussian_noise_14/add:z:0!dropout_14/dropout/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout_14/dropout/Mulw
dropout_14/dropout/rateConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2
dropout_14/dropout/ratet
dropout_14/dropout/seedConst*
_output_shapes
: *
dtype0*
value	B : 2
dropout_14/dropout/seedÈ
dropout_14/dropout
MLCDropoutgaussian_noise_14/add:z:0 dropout_14/dropout/rate:output:0 dropout_14/dropout/seed:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout_14/dropout³
!dense_22/MLCMatMul/ReadVariableOpReadVariableOp*dense_22_mlcmatmul_readvariableop_resource* 
_output_shapes
:
´*
dtype02#
!dense_22/MLCMatMul/ReadVariableOp°
dense_22/MLCMatMul	MLCMatMuldropout_14/dropout:output:0)dense_22/MLCMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´2
dense_22/MLCMatMul¨
dense_22/BiasAdd/ReadVariableOpReadVariableOp(dense_22_biasadd_readvariableop_resource*
_output_shapes	
:´*
dtype02!
dense_22/BiasAdd/ReadVariableOp©
dense_22/BiasAddBiasAdddense_22/MLCMatMul:product:0'dense_22/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´2
dense_22/BiasAddt
dense_22/ReluReludense_22/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´2
dense_22/Relu}
gaussian_noise_15/ShapeShapedense_22/Relu:activations:0*
T0*
_output_shapes
:2
gaussian_noise_15/Shape
$gaussian_noise_15/random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    2&
$gaussian_noise_15/random_normal/mean
&gaussian_noise_15/random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *i*[@2(
&gaussian_noise_15/random_normal/stddev
4gaussian_noise_15/random_normal/RandomStandardNormalRandomStandardNormal gaussian_noise_15/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´*
dtype0*
seed±ÿå)*
seed2ìº26
4gaussian_noise_15/random_normal/RandomStandardNormalô
#gaussian_noise_15/random_normal/mulMul=gaussian_noise_15/random_normal/RandomStandardNormal:output:0/gaussian_noise_15/random_normal/stddev:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´2%
#gaussian_noise_15/random_normal/mulÔ
gaussian_noise_15/random_normalAdd'gaussian_noise_15/random_normal/mul:z:0-gaussian_noise_15/random_normal/mean:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´2!
gaussian_noise_15/random_normal¬
gaussian_noise_15/addAddV2dense_22/Relu:activations:0#gaussian_noise_15/random_normal:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´2
gaussian_noise_15/addy
dropout_15/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?2
dropout_15/dropout/Const¨
dropout_15/dropout/MulMulgaussian_noise_15/add:z:0!dropout_15/dropout/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´2
dropout_15/dropout/Mulw
dropout_15/dropout/rateConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=2
dropout_15/dropout/ratet
dropout_15/dropout/seedConst*
_output_shapes
: *
dtype0*
value	B : 2
dropout_15/dropout/seedÈ
dropout_15/dropout
MLCDropoutgaussian_noise_15/add:z:0 dropout_15/dropout/rate:output:0 dropout_15/dropout/seed:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´2
dropout_15/dropout²
!dense_23/MLCMatMul/ReadVariableOpReadVariableOp*dense_23_mlcmatmul_readvariableop_resource*
_output_shapes
:	´
*
dtype02#
!dense_23/MLCMatMul/ReadVariableOp¯
dense_23/MLCMatMul	MLCMatMuldropout_15/dropout:output:0)dense_23/MLCMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
dense_23/MLCMatMul§
dense_23/BiasAdd/ReadVariableOpReadVariableOp(dense_23_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02!
dense_23/BiasAdd/ReadVariableOp¨
dense_23/BiasAddBiasAdddense_23/MLCMatMul:product:0'dense_23/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
dense_23/BiasAdd|
dense_23/SoftmaxSoftmaxdense_23/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
dense_23/SoftmaxÀ
IdentityIdentitydense_23/Softmax:softmax:0 ^dense_21/BiasAdd/ReadVariableOp"^dense_21/MLCMatMul/ReadVariableOp ^dense_22/BiasAdd/ReadVariableOp"^dense_22/MLCMatMul/ReadVariableOp ^dense_23/BiasAdd/ReadVariableOp"^dense_23/MLCMatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿ9::::::2B
dense_21/BiasAdd/ReadVariableOpdense_21/BiasAdd/ReadVariableOp2F
!dense_21/MLCMatMul/ReadVariableOp!dense_21/MLCMatMul/ReadVariableOp2B
dense_22/BiasAdd/ReadVariableOpdense_22/BiasAdd/ReadVariableOp2F
!dense_22/MLCMatMul/ReadVariableOp!dense_22/MLCMatMul/ReadVariableOp2B
dense_23/BiasAdd/ReadVariableOpdense_23/BiasAdd/ReadVariableOp2F
!dense_23/MLCMatMul/ReadVariableOp!dense_23/MLCMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ9
 
_user_specified_nameinputs

c
G__inference_dropout_14_layer_call_and_return_conditional_losses_1384648

inputs
identityc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout/Constt
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout/Mula
dropout/rateConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2
dropout/rate^
dropout/seedConst*
_output_shapes
: *
dtype0*
value	B : 2
dropout/seed
dropout
MLCDropoutinputsdropout/rate:output:0dropout/seed:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
dropoute
IdentityIdentitydropout:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
 

ä
E__inference_dense_22_layer_call_and_return_conditional_losses_1384674

inputs%
!mlcmatmul_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢MLCMatMul/ReadVariableOp
MLCMatMul/ReadVariableOpReadVariableOp!mlcmatmul_readvariableop_resource* 
_output_shapes
:
´*
dtype02
MLCMatMul/ReadVariableOp
	MLCMatMul	MLCMatMulinputs MLCMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´2
	MLCMatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:´*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMLCMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MLCMatMul/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´2

Identity"
identityIdentity:output:0*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
MLCMatMul/ReadVariableOpMLCMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ã
j
N__inference_gaussian_noise_14_layer_call_and_return_conditional_losses_1384203

inputs
identity[
IdentityIdentityinputs*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Å=

 __inference__traced_save_1384856
file_prefix.
*savev2_dense_21_kernel_read_readvariableop,
(savev2_dense_21_bias_read_readvariableop.
*savev2_dense_22_kernel_read_readvariableop,
(savev2_dense_22_bias_read_readvariableop.
*savev2_dense_23_kernel_read_readvariableop,
(savev2_dense_23_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop5
1savev2_adam_dense_21_kernel_m_read_readvariableop3
/savev2_adam_dense_21_bias_m_read_readvariableop5
1savev2_adam_dense_22_kernel_m_read_readvariableop3
/savev2_adam_dense_22_bias_m_read_readvariableop5
1savev2_adam_dense_23_kernel_m_read_readvariableop3
/savev2_adam_dense_23_bias_m_read_readvariableop5
1savev2_adam_dense_21_kernel_v_read_readvariableop3
/savev2_adam_dense_21_bias_v_read_readvariableop5
1savev2_adam_dense_22_kernel_v_read_readvariableop3
/savev2_adam_dense_22_bias_v_read_readvariableop5
1savev2_adam_dense_23_kernel_v_read_readvariableop3
/savev2_adam_dense_23_bias_v_read_readvariableop
savev2_const

identity_1¢MergeV2Checkpoints
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard¦
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_namesÀ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*K
valueBB@B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_21_kernel_read_readvariableop(savev2_dense_21_bias_read_readvariableop*savev2_dense_22_kernel_read_readvariableop(savev2_dense_22_bias_read_readvariableop*savev2_dense_23_kernel_read_readvariableop(savev2_dense_23_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop1savev2_adam_dense_21_kernel_m_read_readvariableop/savev2_adam_dense_21_bias_m_read_readvariableop1savev2_adam_dense_22_kernel_m_read_readvariableop/savev2_adam_dense_22_bias_m_read_readvariableop1savev2_adam_dense_23_kernel_m_read_readvariableop/savev2_adam_dense_23_bias_m_read_readvariableop1savev2_adam_dense_21_kernel_v_read_readvariableop/savev2_adam_dense_21_bias_v_read_readvariableop1savev2_adam_dense_22_kernel_v_read_readvariableop/savev2_adam_dense_22_bias_v_read_readvariableop1savev2_adam_dense_23_kernel_v_read_readvariableop/savev2_adam_dense_23_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 **
dtypes 
2	2
SaveV2º
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes¡
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*Í
_input_shapes»
¸: :	9::
´:´:	´
:
: : : : : : : : : :	9::
´:´:	´
:
:	9::
´:´:	´
:
: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:%!

_output_shapes
:	9:!

_output_shapes	
::&"
 
_output_shapes
:
´:!

_output_shapes	
:´:%!

_output_shapes
:	´
: 

_output_shapes
:
:

_output_shapes
: :

_output_shapes
: :	
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
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	9:!

_output_shapes	
::&"
 
_output_shapes
:
´:!

_output_shapes	
:´:%!

_output_shapes
:	´
: 

_output_shapes
:
:%!

_output_shapes
:	9:!

_output_shapes	
::&"
 
_output_shapes
:
´:!

_output_shapes	
:´:%!

_output_shapes
:	´
: 

_output_shapes
:
:

_output_shapes
: 


m
N__inference_gaussian_noise_14_layer_call_and_return_conditional_losses_1384199

inputs
identityD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapem
random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    2
random_normal/meanq
random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *i*[@2
random_normal/stddevÏ
"random_normal/RandomStandardNormalRandomStandardNormalShape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
seed±ÿå)*
seed2îï2$
"random_normal/RandomStandardNormal¬
random_normal/mulMul+random_normal/RandomStandardNormal:output:0random_normal/stddev:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
random_normal/mul
random_normalAddrandom_normal/mul:z:0random_normal/mean:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
random_normala
addAddV2inputsrandom_normal:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
add\
IdentityIdentityadd:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Î
e
G__inference_dropout_15_layer_call_and_return_conditional_losses_1384312

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´2

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´2

Identity_1"!

identity_1Identity_1:output:0*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ´:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´
 
_user_specified_nameinputs
õr
å
#__inference__traced_restore_1384947
file_prefix$
 assignvariableop_dense_21_kernel$
 assignvariableop_1_dense_21_bias&
"assignvariableop_2_dense_22_kernel$
 assignvariableop_3_dense_22_bias&
"assignvariableop_4_dense_23_kernel$
 assignvariableop_5_dense_23_bias 
assignvariableop_6_adam_iter"
assignvariableop_7_adam_beta_1"
assignvariableop_8_adam_beta_2!
assignvariableop_9_adam_decay*
&assignvariableop_10_adam_learning_rate
assignvariableop_11_total
assignvariableop_12_count
assignvariableop_13_total_1
assignvariableop_14_count_1.
*assignvariableop_15_adam_dense_21_kernel_m,
(assignvariableop_16_adam_dense_21_bias_m.
*assignvariableop_17_adam_dense_22_kernel_m,
(assignvariableop_18_adam_dense_22_bias_m.
*assignvariableop_19_adam_dense_23_kernel_m,
(assignvariableop_20_adam_dense_23_bias_m.
*assignvariableop_21_adam_dense_21_kernel_v,
(assignvariableop_22_adam_dense_21_bias_v.
*assignvariableop_23_adam_dense_22_kernel_v,
(assignvariableop_24_adam_dense_22_bias_v.
*assignvariableop_25_adam_dense_23_kernel_v,
(assignvariableop_26_adam_dense_23_bias_v
identity_28¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_15¢AssignVariableOp_16¢AssignVariableOp_17¢AssignVariableOp_18¢AssignVariableOp_19¢AssignVariableOp_2¢AssignVariableOp_20¢AssignVariableOp_21¢AssignVariableOp_22¢AssignVariableOp_23¢AssignVariableOp_24¢AssignVariableOp_25¢AssignVariableOp_26¢AssignVariableOp_3¢AssignVariableOp_4¢AssignVariableOp_5¢AssignVariableOp_6¢AssignVariableOp_7¢AssignVariableOp_8¢AssignVariableOp_9
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_namesÆ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*K
valueBB@B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices¸
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*
_output_shapesr
p::::::::::::::::::::::::::::**
dtypes 
2	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity
AssignVariableOpAssignVariableOp assignvariableop_dense_21_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1¥
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_21_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2§
AssignVariableOp_2AssignVariableOp"assignvariableop_2_dense_22_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3¥
AssignVariableOp_3AssignVariableOp assignvariableop_3_dense_22_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4§
AssignVariableOp_4AssignVariableOp"assignvariableop_4_dense_23_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5¥
AssignVariableOp_5AssignVariableOp assignvariableop_5_dense_23_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_6¡
AssignVariableOp_6AssignVariableOpassignvariableop_6_adam_iterIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7£
AssignVariableOp_7AssignVariableOpassignvariableop_7_adam_beta_1Identity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8£
AssignVariableOp_8AssignVariableOpassignvariableop_8_adam_beta_2Identity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9¢
AssignVariableOp_9AssignVariableOpassignvariableop_9_adam_decayIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10®
AssignVariableOp_10AssignVariableOp&assignvariableop_10_adam_learning_rateIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11¡
AssignVariableOp_11AssignVariableOpassignvariableop_11_totalIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12¡
AssignVariableOp_12AssignVariableOpassignvariableop_12_countIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13£
AssignVariableOp_13AssignVariableOpassignvariableop_13_total_1Identity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14£
AssignVariableOp_14AssignVariableOpassignvariableop_14_count_1Identity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15²
AssignVariableOp_15AssignVariableOp*assignvariableop_15_adam_dense_21_kernel_mIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16°
AssignVariableOp_16AssignVariableOp(assignvariableop_16_adam_dense_21_bias_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17²
AssignVariableOp_17AssignVariableOp*assignvariableop_17_adam_dense_22_kernel_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18°
AssignVariableOp_18AssignVariableOp(assignvariableop_18_adam_dense_22_bias_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19²
AssignVariableOp_19AssignVariableOp*assignvariableop_19_adam_dense_23_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20°
AssignVariableOp_20AssignVariableOp(assignvariableop_20_adam_dense_23_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21²
AssignVariableOp_21AssignVariableOp*assignvariableop_21_adam_dense_21_kernel_vIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22°
AssignVariableOp_22AssignVariableOp(assignvariableop_22_adam_dense_21_bias_vIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23²
AssignVariableOp_23AssignVariableOp*assignvariableop_23_adam_dense_22_kernel_vIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24°
AssignVariableOp_24AssignVariableOp(assignvariableop_24_adam_dense_22_bias_vIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25²
AssignVariableOp_25AssignVariableOp*assignvariableop_25_adam_dense_23_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26°
AssignVariableOp_26AssignVariableOp(assignvariableop_26_adam_dense_23_bias_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_269
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp°
Identity_27Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_27£
Identity_28IdentityIdentity_27:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_28"#
identity_28Identity_28:output:0*
_input_shapesp
n: :::::::::::::::::::::::::::2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262(
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
Ð!
®
I__inference_sequential_7_layer_call_and_return_conditional_losses_1384353
input_8
dense_21_1384183
dense_21_1384185
dense_22_1384265
dense_22_1384267
dense_23_1384347
dense_23_1384349
identity¢ dense_21/StatefulPartitionedCall¢ dense_22/StatefulPartitionedCall¢ dense_23/StatefulPartitionedCall¢)gaussian_noise_14/StatefulPartitionedCall¢)gaussian_noise_15/StatefulPartitionedCall
 dense_21/StatefulPartitionedCallStatefulPartitionedCallinput_8dense_21_1384183dense_21_1384185*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_21_layer_call_and_return_conditional_losses_13841722"
 dense_21/StatefulPartitionedCall¬
)gaussian_noise_14/StatefulPartitionedCallStatefulPartitionedCall)dense_21/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_gaussian_noise_14_layer_call_and_return_conditional_losses_13841992+
)gaussian_noise_14/StatefulPartitionedCall
dropout_14/PartitionedCallPartitionedCall2gaussian_noise_14/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_dropout_14_layer_call_and_return_conditional_losses_13842252
dropout_14/PartitionedCallµ
 dense_22/StatefulPartitionedCallStatefulPartitionedCall#dropout_14/PartitionedCall:output:0dense_22_1384265dense_22_1384267*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_22_layer_call_and_return_conditional_losses_13842542"
 dense_22/StatefulPartitionedCallØ
)gaussian_noise_15/StatefulPartitionedCallStatefulPartitionedCall)dense_22/StatefulPartitionedCall:output:0*^gaussian_noise_14/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_gaussian_noise_15_layer_call_and_return_conditional_losses_13842812+
)gaussian_noise_15/StatefulPartitionedCall
dropout_15/PartitionedCallPartitionedCall2gaussian_noise_15/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_dropout_15_layer_call_and_return_conditional_losses_13843072
dropout_15/PartitionedCall´
 dense_23/StatefulPartitionedCallStatefulPartitionedCall#dropout_15/PartitionedCall:output:0dense_23_1384347dense_23_1384349*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_23_layer_call_and_return_conditional_losses_13843362"
 dense_23/StatefulPartitionedCall¾
IdentityIdentity)dense_23/StatefulPartitionedCall:output:0!^dense_21/StatefulPartitionedCall!^dense_22/StatefulPartitionedCall!^dense_23/StatefulPartitionedCall*^gaussian_noise_14/StatefulPartitionedCall*^gaussian_noise_15/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿ9::::::2D
 dense_21/StatefulPartitionedCall dense_21/StatefulPartitionedCall2D
 dense_22/StatefulPartitionedCall dense_22/StatefulPartitionedCall2D
 dense_23/StatefulPartitionedCall dense_23/StatefulPartitionedCall2V
)gaussian_noise_14/StatefulPartitionedCall)gaussian_noise_14/StatefulPartitionedCall2V
)gaussian_noise_15/StatefulPartitionedCall)gaussian_noise_15/StatefulPartitionedCall:P L
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ9
!
_user_specified_name	input_8
ê
À
.__inference_sequential_7_layer_call_fn_1384457
input_8
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
identity¢StatefulPartitionedCall®
StatefulPartitionedCallStatefulPartitionedCallinput_8unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_sequential_7_layer_call_and_return_conditional_losses_13844422
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿ9::::::22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ9
!
_user_specified_name	input_8
¡

ä
E__inference_dense_23_layer_call_and_return_conditional_losses_1384336

inputs%
!mlcmatmul_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢MLCMatMul/ReadVariableOp
MLCMatMul/ReadVariableOpReadVariableOp!mlcmatmul_readvariableop_resource*
_output_shapes
:	´
*
dtype02
MLCMatMul/ReadVariableOp
	MLCMatMul	MLCMatMulinputs MLCMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
	MLCMatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMLCMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2	
Softmax
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^MLCMatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity"
identityIdentity:output:0*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ´::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
MLCMatMul/ReadVariableOpMLCMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´
 
_user_specified_nameinputs
 

ä
E__inference_dense_22_layer_call_and_return_conditional_losses_1384254

inputs%
!mlcmatmul_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢MLCMatMul/ReadVariableOp
MLCMatMul/ReadVariableOpReadVariableOp!mlcmatmul_readvariableop_resource* 
_output_shapes
:
´*
dtype02
MLCMatMul/ReadVariableOp
	MLCMatMul	MLCMatMulinputs MLCMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´2
	MLCMatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:´*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMLCMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MLCMatMul/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´2

Identity"
identityIdentity:output:0*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
MLCMatMul/ReadVariableOpMLCMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


ä
E__inference_dense_21_layer_call_and_return_conditional_losses_1384605

inputs%
!mlcmatmul_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢MLCMatMul/ReadVariableOp
MLCMatMul/ReadVariableOpReadVariableOp!mlcmatmul_readvariableop_resource*
_output_shapes
:	9*
dtype02
MLCMatMul/ReadVariableOp
	MLCMatMul	MLCMatMulinputs MLCMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	MLCMatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMLCMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MLCMatMul/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ9::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
MLCMatMul/ReadVariableOpMLCMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ9
 
_user_specified_nameinputs


m
N__inference_gaussian_noise_15_layer_call_and_return_conditional_losses_1384281

inputs
identityD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapem
random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    2
random_normal/meanq
random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *i*[@2
random_normal/stddevÎ
"random_normal/RandomStandardNormalRandomStandardNormalShape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´*
dtype0*
seed±ÿå)*
seed2¤52$
"random_normal/RandomStandardNormal¬
random_normal/mulMul+random_normal/RandomStandardNormal:output:0random_normal/stddev:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´2
random_normal/mul
random_normalAddrandom_normal/mul:z:0random_normal/mean:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´2
random_normala
addAddV2inputsrandom_normal:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´2
add\
IdentityIdentityadd:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´2

Identity"
identityIdentity:output:0*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ´:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´
 
_user_specified_nameinputs
!
Ô
I__inference_sequential_7_layer_call_and_return_conditional_losses_1384560

inputs.
*dense_21_mlcmatmul_readvariableop_resource,
(dense_21_biasadd_readvariableop_resource.
*dense_22_mlcmatmul_readvariableop_resource,
(dense_22_biasadd_readvariableop_resource.
*dense_23_mlcmatmul_readvariableop_resource,
(dense_23_biasadd_readvariableop_resource
identity¢dense_21/BiasAdd/ReadVariableOp¢!dense_21/MLCMatMul/ReadVariableOp¢dense_22/BiasAdd/ReadVariableOp¢!dense_22/MLCMatMul/ReadVariableOp¢dense_23/BiasAdd/ReadVariableOp¢!dense_23/MLCMatMul/ReadVariableOp²
!dense_21/MLCMatMul/ReadVariableOpReadVariableOp*dense_21_mlcmatmul_readvariableop_resource*
_output_shapes
:	9*
dtype02#
!dense_21/MLCMatMul/ReadVariableOp
dense_21/MLCMatMul	MLCMatMulinputs)dense_21/MLCMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_21/MLCMatMul¨
dense_21/BiasAdd/ReadVariableOpReadVariableOp(dense_21_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02!
dense_21/BiasAdd/ReadVariableOp©
dense_21/BiasAddBiasAdddense_21/MLCMatMul:product:0'dense_21/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_21/BiasAddt
dense_21/ReluReludense_21/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_21/Relu
dropout_14/IdentityIdentitydense_21/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout_14/Identity³
!dense_22/MLCMatMul/ReadVariableOpReadVariableOp*dense_22_mlcmatmul_readvariableop_resource* 
_output_shapes
:
´*
dtype02#
!dense_22/MLCMatMul/ReadVariableOp±
dense_22/MLCMatMul	MLCMatMuldropout_14/Identity:output:0)dense_22/MLCMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´2
dense_22/MLCMatMul¨
dense_22/BiasAdd/ReadVariableOpReadVariableOp(dense_22_biasadd_readvariableop_resource*
_output_shapes	
:´*
dtype02!
dense_22/BiasAdd/ReadVariableOp©
dense_22/BiasAddBiasAdddense_22/MLCMatMul:product:0'dense_22/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´2
dense_22/BiasAddt
dense_22/ReluReludense_22/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´2
dense_22/Relu
dropout_15/IdentityIdentitydense_22/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´2
dropout_15/Identity²
!dense_23/MLCMatMul/ReadVariableOpReadVariableOp*dense_23_mlcmatmul_readvariableop_resource*
_output_shapes
:	´
*
dtype02#
!dense_23/MLCMatMul/ReadVariableOp°
dense_23/MLCMatMul	MLCMatMuldropout_15/Identity:output:0)dense_23/MLCMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
dense_23/MLCMatMul§
dense_23/BiasAdd/ReadVariableOpReadVariableOp(dense_23_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02!
dense_23/BiasAdd/ReadVariableOp¨
dense_23/BiasAddBiasAdddense_23/MLCMatMul:product:0'dense_23/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
dense_23/BiasAdd|
dense_23/SoftmaxSoftmaxdense_23/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
dense_23/SoftmaxÀ
IdentityIdentitydense_23/Softmax:softmax:0 ^dense_21/BiasAdd/ReadVariableOp"^dense_21/MLCMatMul/ReadVariableOp ^dense_22/BiasAdd/ReadVariableOp"^dense_22/MLCMatMul/ReadVariableOp ^dense_23/BiasAdd/ReadVariableOp"^dense_23/MLCMatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿ9::::::2B
dense_21/BiasAdd/ReadVariableOpdense_21/BiasAdd/ReadVariableOp2F
!dense_21/MLCMatMul/ReadVariableOp!dense_21/MLCMatMul/ReadVariableOp2B
dense_22/BiasAdd/ReadVariableOpdense_22/BiasAdd/ReadVariableOp2F
!dense_22/MLCMatMul/ReadVariableOp!dense_22/MLCMatMul/ReadVariableOp2B
dense_23/BiasAdd/ReadVariableOpdense_23/BiasAdd/ReadVariableOp2F
!dense_23/MLCMatMul/ReadVariableOp!dense_23/MLCMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ9
 
_user_specified_nameinputs
Ü)
Ê
"__inference__wrapped_model_1384157
input_8;
7sequential_7_dense_21_mlcmatmul_readvariableop_resource9
5sequential_7_dense_21_biasadd_readvariableop_resource;
7sequential_7_dense_22_mlcmatmul_readvariableop_resource9
5sequential_7_dense_22_biasadd_readvariableop_resource;
7sequential_7_dense_23_mlcmatmul_readvariableop_resource9
5sequential_7_dense_23_biasadd_readvariableop_resource
identity¢,sequential_7/dense_21/BiasAdd/ReadVariableOp¢.sequential_7/dense_21/MLCMatMul/ReadVariableOp¢,sequential_7/dense_22/BiasAdd/ReadVariableOp¢.sequential_7/dense_22/MLCMatMul/ReadVariableOp¢,sequential_7/dense_23/BiasAdd/ReadVariableOp¢.sequential_7/dense_23/MLCMatMul/ReadVariableOpÙ
.sequential_7/dense_21/MLCMatMul/ReadVariableOpReadVariableOp7sequential_7_dense_21_mlcmatmul_readvariableop_resource*
_output_shapes
:	9*
dtype020
.sequential_7/dense_21/MLCMatMul/ReadVariableOpÃ
sequential_7/dense_21/MLCMatMul	MLCMatMulinput_86sequential_7/dense_21/MLCMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
sequential_7/dense_21/MLCMatMulÏ
,sequential_7/dense_21/BiasAdd/ReadVariableOpReadVariableOp5sequential_7_dense_21_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02.
,sequential_7/dense_21/BiasAdd/ReadVariableOpÝ
sequential_7/dense_21/BiasAddBiasAdd)sequential_7/dense_21/MLCMatMul:product:04sequential_7/dense_21/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_7/dense_21/BiasAdd
sequential_7/dense_21/ReluRelu&sequential_7/dense_21/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_7/dense_21/Relu­
 sequential_7/dropout_14/IdentityIdentity(sequential_7/dense_21/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 sequential_7/dropout_14/IdentityÚ
.sequential_7/dense_22/MLCMatMul/ReadVariableOpReadVariableOp7sequential_7_dense_22_mlcmatmul_readvariableop_resource* 
_output_shapes
:
´*
dtype020
.sequential_7/dense_22/MLCMatMul/ReadVariableOpå
sequential_7/dense_22/MLCMatMul	MLCMatMul)sequential_7/dropout_14/Identity:output:06sequential_7/dense_22/MLCMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´2!
sequential_7/dense_22/MLCMatMulÏ
,sequential_7/dense_22/BiasAdd/ReadVariableOpReadVariableOp5sequential_7_dense_22_biasadd_readvariableop_resource*
_output_shapes	
:´*
dtype02.
,sequential_7/dense_22/BiasAdd/ReadVariableOpÝ
sequential_7/dense_22/BiasAddBiasAdd)sequential_7/dense_22/MLCMatMul:product:04sequential_7/dense_22/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´2
sequential_7/dense_22/BiasAdd
sequential_7/dense_22/ReluRelu&sequential_7/dense_22/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´2
sequential_7/dense_22/Relu­
 sequential_7/dropout_15/IdentityIdentity(sequential_7/dense_22/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´2"
 sequential_7/dropout_15/IdentityÙ
.sequential_7/dense_23/MLCMatMul/ReadVariableOpReadVariableOp7sequential_7_dense_23_mlcmatmul_readvariableop_resource*
_output_shapes
:	´
*
dtype020
.sequential_7/dense_23/MLCMatMul/ReadVariableOpä
sequential_7/dense_23/MLCMatMul	MLCMatMul)sequential_7/dropout_15/Identity:output:06sequential_7/dense_23/MLCMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2!
sequential_7/dense_23/MLCMatMulÎ
,sequential_7/dense_23/BiasAdd/ReadVariableOpReadVariableOp5sequential_7_dense_23_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02.
,sequential_7/dense_23/BiasAdd/ReadVariableOpÜ
sequential_7/dense_23/BiasAddBiasAdd)sequential_7/dense_23/MLCMatMul:product:04sequential_7/dense_23/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
sequential_7/dense_23/BiasAdd£
sequential_7/dense_23/SoftmaxSoftmax&sequential_7/dense_23/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
sequential_7/dense_23/Softmax
IdentityIdentity'sequential_7/dense_23/Softmax:softmax:0-^sequential_7/dense_21/BiasAdd/ReadVariableOp/^sequential_7/dense_21/MLCMatMul/ReadVariableOp-^sequential_7/dense_22/BiasAdd/ReadVariableOp/^sequential_7/dense_22/MLCMatMul/ReadVariableOp-^sequential_7/dense_23/BiasAdd/ReadVariableOp/^sequential_7/dense_23/MLCMatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿ9::::::2\
,sequential_7/dense_21/BiasAdd/ReadVariableOp,sequential_7/dense_21/BiasAdd/ReadVariableOp2`
.sequential_7/dense_21/MLCMatMul/ReadVariableOp.sequential_7/dense_21/MLCMatMul/ReadVariableOp2\
,sequential_7/dense_22/BiasAdd/ReadVariableOp,sequential_7/dense_22/BiasAdd/ReadVariableOp2`
.sequential_7/dense_22/MLCMatMul/ReadVariableOp.sequential_7/dense_22/MLCMatMul/ReadVariableOp2\
,sequential_7/dense_23/BiasAdd/ReadVariableOp,sequential_7/dense_23/BiasAdd/ReadVariableOp2`
.sequential_7/dense_23/MLCMatMul/ReadVariableOp.sequential_7/dense_23/MLCMatMul/ReadVariableOp:P L
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ9
!
_user_specified_name	input_8
Î
e
G__inference_dropout_14_layer_call_and_return_conditional_losses_1384653

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1"!

identity_1Identity_1:output:0*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

H
,__inference_dropout_15_layer_call_fn_1384732

inputs
identityÆ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_dropout_15_layer_call_and_return_conditional_losses_13843122
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´2

Identity"
identityIdentity:output:0*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ´:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´
 
_user_specified_nameinputs
ã
j
N__inference_gaussian_noise_14_layer_call_and_return_conditional_losses_1384629

inputs
identity[
IdentityIdentityinputs*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

H
,__inference_dropout_14_layer_call_fn_1384663

inputs
identityÆ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_dropout_14_layer_call_and_return_conditional_losses_13842302
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


m
N__inference_gaussian_noise_14_layer_call_and_return_conditional_losses_1384625

inputs
identityD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapem
random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    2
random_normal/meanq
random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *i*[@2
random_normal/stddevÏ
"random_normal/RandomStandardNormalRandomStandardNormalShape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
seed±ÿå)*
seed2¬µÇ2$
"random_normal/RandomStandardNormal¬
random_normal/mulMul+random_normal/RandomStandardNormal:output:0random_normal/stddev:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
random_normal/mul
random_normalAddrandom_normal/mul:z:0random_normal/mean:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
random_normala
addAddV2inputsrandom_normal:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
add\
IdentityIdentityadd:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Î
e
G__inference_dropout_15_layer_call_and_return_conditional_losses_1384722

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´2

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´2

Identity_1"!

identity_1Identity_1:output:0*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ´:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´
 
_user_specified_nameinputs
º
·
%__inference_signature_wrapper_1384484
input_8
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinput_8unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *+
f&R$
"__inference__wrapped_model_13841572
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿ9::::::22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ9
!
_user_specified_name	input_8
ª
O
3__inference_gaussian_noise_15_layer_call_fn_1384708

inputs
identityÍ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_gaussian_noise_15_layer_call_and_return_conditional_losses_13842852
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´2

Identity"
identityIdentity:output:0*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ´:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´
 
_user_specified_nameinputs
ª
O
3__inference_gaussian_noise_14_layer_call_fn_1384639

inputs
identityÍ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_gaussian_noise_14_layer_call_and_return_conditional_losses_13842032
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ã
j
N__inference_gaussian_noise_15_layer_call_and_return_conditional_losses_1384698

inputs
identity[
IdentityIdentityinputs*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´2

Identity"
identityIdentity:output:0*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ´:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´
 
_user_specified_nameinputs

c
G__inference_dropout_15_layer_call_and_return_conditional_losses_1384307

inputs
identityc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?2
dropout/Constt
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´2
dropout/Mula
dropout/rateConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=2
dropout/rate^
dropout/seedConst*
_output_shapes
: *
dtype0*
value	B : 2
dropout/seed
dropout
MLCDropoutinputsdropout/rate:output:0dropout/seed:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´2	
dropoute
IdentityIdentitydropout:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´2

Identity"
identityIdentity:output:0*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ´:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´
 
_user_specified_nameinputs

Ö
I__inference_sequential_7_layer_call_and_return_conditional_losses_1384376
input_8
dense_21_1384356
dense_21_1384358
dense_22_1384363
dense_22_1384365
dense_23_1384370
dense_23_1384372
identity¢ dense_21/StatefulPartitionedCall¢ dense_22/StatefulPartitionedCall¢ dense_23/StatefulPartitionedCall
 dense_21/StatefulPartitionedCallStatefulPartitionedCallinput_8dense_21_1384356dense_21_1384358*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_21_layer_call_and_return_conditional_losses_13841722"
 dense_21/StatefulPartitionedCall
!gaussian_noise_14/PartitionedCallPartitionedCall)dense_21/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_gaussian_noise_14_layer_call_and_return_conditional_losses_13842032#
!gaussian_noise_14/PartitionedCall
dropout_14/PartitionedCallPartitionedCall*gaussian_noise_14/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_dropout_14_layer_call_and_return_conditional_losses_13842302
dropout_14/PartitionedCallµ
 dense_22/StatefulPartitionedCallStatefulPartitionedCall#dropout_14/PartitionedCall:output:0dense_22_1384363dense_22_1384365*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_22_layer_call_and_return_conditional_losses_13842542"
 dense_22/StatefulPartitionedCall
!gaussian_noise_15/PartitionedCallPartitionedCall)dense_22/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_gaussian_noise_15_layer_call_and_return_conditional_losses_13842852#
!gaussian_noise_15/PartitionedCall
dropout_15/PartitionedCallPartitionedCall*gaussian_noise_15/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_dropout_15_layer_call_and_return_conditional_losses_13843122
dropout_15/PartitionedCall´
 dense_23/StatefulPartitionedCallStatefulPartitionedCall#dropout_15/PartitionedCall:output:0dense_23_1384370dense_23_1384372*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_23_layer_call_and_return_conditional_losses_13843362"
 dense_23/StatefulPartitionedCallæ
IdentityIdentity)dense_23/StatefulPartitionedCall:output:0!^dense_21/StatefulPartitionedCall!^dense_22/StatefulPartitionedCall!^dense_23/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿ9::::::2D
 dense_21/StatefulPartitionedCall dense_21/StatefulPartitionedCall2D
 dense_22/StatefulPartitionedCall dense_22/StatefulPartitionedCall2D
 dense_23/StatefulPartitionedCall dense_23/StatefulPartitionedCall:P L
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ9
!
_user_specified_name	input_8


ä
E__inference_dense_21_layer_call_and_return_conditional_losses_1384172

inputs%
!mlcmatmul_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢MLCMatMul/ReadVariableOp
MLCMatMul/ReadVariableOpReadVariableOp!mlcmatmul_readvariableop_resource*
_output_shapes
:	9*
dtype02
MLCMatMul/ReadVariableOp
	MLCMatMul	MLCMatMulinputs MLCMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	MLCMatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMLCMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MLCMatMul/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ9::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
MLCMatMul/ReadVariableOpMLCMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ9
 
_user_specified_nameinputs
¡

ä
E__inference_dense_23_layer_call_and_return_conditional_losses_1384743

inputs%
!mlcmatmul_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢MLCMatMul/ReadVariableOp
MLCMatMul/ReadVariableOpReadVariableOp!mlcmatmul_readvariableop_resource*
_output_shapes
:	´
*
dtype02
MLCMatMul/ReadVariableOp
	MLCMatMul	MLCMatMulinputs MLCMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
	MLCMatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMLCMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2	
Softmax
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^MLCMatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity"
identityIdentity:output:0*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ´::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
MLCMatMul/ReadVariableOpMLCMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´
 
_user_specified_nameinputs
ç
¿
.__inference_sequential_7_layer_call_fn_1384577

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
identity¢StatefulPartitionedCall­
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_sequential_7_layer_call_and_return_conditional_losses_13844022
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿ9::::::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ9
 
_user_specified_nameinputs
ç
¿
.__inference_sequential_7_layer_call_fn_1384594

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
identity¢StatefulPartitionedCall­
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_sequential_7_layer_call_and_return_conditional_losses_13844422
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿ9::::::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ9
 
_user_specified_nameinputs
¶
l
3__inference_gaussian_noise_15_layer_call_fn_1384703

inputs
identity¢StatefulPartitionedCallå
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_gaussian_noise_15_layer_call_and_return_conditional_losses_13842812
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´2

Identity"
identityIdentity:output:0*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ´22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´
 
_user_specified_nameinputs
ã
j
N__inference_gaussian_noise_15_layer_call_and_return_conditional_losses_1384285

inputs
identity[
IdentityIdentityinputs*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´2

Identity"
identityIdentity:output:0*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ´:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´
 
_user_specified_nameinputs

H
,__inference_dropout_14_layer_call_fn_1384658

inputs
identityÆ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_dropout_14_layer_call_and_return_conditional_losses_13842252
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Í!
­
I__inference_sequential_7_layer_call_and_return_conditional_losses_1384402

inputs
dense_21_1384382
dense_21_1384384
dense_22_1384389
dense_22_1384391
dense_23_1384396
dense_23_1384398
identity¢ dense_21/StatefulPartitionedCall¢ dense_22/StatefulPartitionedCall¢ dense_23/StatefulPartitionedCall¢)gaussian_noise_14/StatefulPartitionedCall¢)gaussian_noise_15/StatefulPartitionedCall
 dense_21/StatefulPartitionedCallStatefulPartitionedCallinputsdense_21_1384382dense_21_1384384*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_21_layer_call_and_return_conditional_losses_13841722"
 dense_21/StatefulPartitionedCall¬
)gaussian_noise_14/StatefulPartitionedCallStatefulPartitionedCall)dense_21/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_gaussian_noise_14_layer_call_and_return_conditional_losses_13841992+
)gaussian_noise_14/StatefulPartitionedCall
dropout_14/PartitionedCallPartitionedCall2gaussian_noise_14/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_dropout_14_layer_call_and_return_conditional_losses_13842252
dropout_14/PartitionedCallµ
 dense_22/StatefulPartitionedCallStatefulPartitionedCall#dropout_14/PartitionedCall:output:0dense_22_1384389dense_22_1384391*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_22_layer_call_and_return_conditional_losses_13842542"
 dense_22/StatefulPartitionedCallØ
)gaussian_noise_15/StatefulPartitionedCallStatefulPartitionedCall)dense_22/StatefulPartitionedCall:output:0*^gaussian_noise_14/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_gaussian_noise_15_layer_call_and_return_conditional_losses_13842812+
)gaussian_noise_15/StatefulPartitionedCall
dropout_15/PartitionedCallPartitionedCall2gaussian_noise_15/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_dropout_15_layer_call_and_return_conditional_losses_13843072
dropout_15/PartitionedCall´
 dense_23/StatefulPartitionedCallStatefulPartitionedCall#dropout_15/PartitionedCall:output:0dense_23_1384396dense_23_1384398*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_23_layer_call_and_return_conditional_losses_13843362"
 dense_23/StatefulPartitionedCall¾
IdentityIdentity)dense_23/StatefulPartitionedCall:output:0!^dense_21/StatefulPartitionedCall!^dense_22/StatefulPartitionedCall!^dense_23/StatefulPartitionedCall*^gaussian_noise_14/StatefulPartitionedCall*^gaussian_noise_15/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿ9::::::2D
 dense_21/StatefulPartitionedCall dense_21/StatefulPartitionedCall2D
 dense_22/StatefulPartitionedCall dense_22/StatefulPartitionedCall2D
 dense_23/StatefulPartitionedCall dense_23/StatefulPartitionedCall2V
)gaussian_noise_14/StatefulPartitionedCall)gaussian_noise_14/StatefulPartitionedCall2V
)gaussian_noise_15/StatefulPartitionedCall)gaussian_noise_15/StatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ9
 
_user_specified_nameinputs


m
N__inference_gaussian_noise_15_layer_call_and_return_conditional_losses_1384694

inputs
identityD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapem
random_normal/meanConst*
_output_shapes
: *
dtype0*
valueB
 *    2
random_normal/meanq
random_normal/stddevConst*
_output_shapes
: *
dtype0*
valueB
 *i*[@2
random_normal/stddevÎ
"random_normal/RandomStandardNormalRandomStandardNormalShape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´*
dtype0*
seed±ÿå)*
seed2ü2$
"random_normal/RandomStandardNormal¬
random_normal/mulMul+random_normal/RandomStandardNormal:output:0random_normal/stddev:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´2
random_normal/mul
random_normalAddrandom_normal/mul:z:0random_normal/mean:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´2
random_normala
addAddV2inputsrandom_normal:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´2
add\
IdentityIdentityadd:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´2

Identity"
identityIdentity:output:0*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ´:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´
 
_user_specified_nameinputs

H
,__inference_dropout_15_layer_call_fn_1384727

inputs
identityÆ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_dropout_15_layer_call_and_return_conditional_losses_13843072
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´2

Identity"
identityIdentity:output:0*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ´:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´
 
_user_specified_nameinputs

c
G__inference_dropout_15_layer_call_and_return_conditional_losses_1384717

inputs
identityc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?2
dropout/Constt
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´2
dropout/Mula
dropout/rateConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=2
dropout/rate^
dropout/seedConst*
_output_shapes
: *
dtype0*
value	B : 2
dropout/seed
dropout
MLCDropoutinputsdropout/rate:output:0dropout/seed:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´2	
dropoute
IdentityIdentitydropout:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´2

Identity"
identityIdentity:output:0*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ´:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´
 
_user_specified_nameinputs
¶
l
3__inference_gaussian_noise_14_layer_call_fn_1384634

inputs
identity¢StatefulPartitionedCallå
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_gaussian_noise_14_layer_call_and_return_conditional_losses_13841992
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
à

*__inference_dense_23_layer_call_fn_1384752

inputs
unknown
	unknown_0
identity¢StatefulPartitionedCallõ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_23_layer_call_and_return_conditional_losses_13843362
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity"
identityIdentity:output:0*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ´::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´
 
_user_specified_nameinputs

Õ
I__inference_sequential_7_layer_call_and_return_conditional_losses_1384442

inputs
dense_21_1384422
dense_21_1384424
dense_22_1384429
dense_22_1384431
dense_23_1384436
dense_23_1384438
identity¢ dense_21/StatefulPartitionedCall¢ dense_22/StatefulPartitionedCall¢ dense_23/StatefulPartitionedCall
 dense_21/StatefulPartitionedCallStatefulPartitionedCallinputsdense_21_1384422dense_21_1384424*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_21_layer_call_and_return_conditional_losses_13841722"
 dense_21/StatefulPartitionedCall
!gaussian_noise_14/PartitionedCallPartitionedCall)dense_21/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_gaussian_noise_14_layer_call_and_return_conditional_losses_13842032#
!gaussian_noise_14/PartitionedCall
dropout_14/PartitionedCallPartitionedCall*gaussian_noise_14/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_dropout_14_layer_call_and_return_conditional_losses_13842302
dropout_14/PartitionedCallµ
 dense_22/StatefulPartitionedCallStatefulPartitionedCall#dropout_14/PartitionedCall:output:0dense_22_1384429dense_22_1384431*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_22_layer_call_and_return_conditional_losses_13842542"
 dense_22/StatefulPartitionedCall
!gaussian_noise_15/PartitionedCallPartitionedCall)dense_22/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_gaussian_noise_15_layer_call_and_return_conditional_losses_13842852#
!gaussian_noise_15/PartitionedCall
dropout_15/PartitionedCallPartitionedCall*gaussian_noise_15/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_dropout_15_layer_call_and_return_conditional_losses_13843122
dropout_15/PartitionedCall´
 dense_23/StatefulPartitionedCallStatefulPartitionedCall#dropout_15/PartitionedCall:output:0dense_23_1384436dense_23_1384438*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_23_layer_call_and_return_conditional_losses_13843362"
 dense_23/StatefulPartitionedCallæ
IdentityIdentity)dense_23/StatefulPartitionedCall:output:0!^dense_21/StatefulPartitionedCall!^dense_22/StatefulPartitionedCall!^dense_23/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿ9::::::2D
 dense_21/StatefulPartitionedCall dense_21/StatefulPartitionedCall2D
 dense_22/StatefulPartitionedCall dense_22/StatefulPartitionedCall2D
 dense_23/StatefulPartitionedCall dense_23/StatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ9
 
_user_specified_nameinputs
â

*__inference_dense_22_layer_call_fn_1384683

inputs
unknown
	unknown_0
identity¢StatefulPartitionedCallö
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_22_layer_call_and_return_conditional_losses_13842542
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´2

Identity"
identityIdentity:output:0*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

c
G__inference_dropout_14_layer_call_and_return_conditional_losses_1384225

inputs
identityc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout/Constt
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout/Mula
dropout/rateConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2
dropout/rate^
dropout/seedConst*
_output_shapes
: *
dtype0*
value	B : 2
dropout/seed
dropout
MLCDropoutinputsdropout/rate:output:0dropout/seed:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
dropoute
IdentityIdentitydropout:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
à

*__inference_dense_21_layer_call_fn_1384614

inputs
unknown
	unknown_0
identity¢StatefulPartitionedCallö
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_21_layer_call_and_return_conditional_losses_13841722
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ9::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ9
 
_user_specified_nameinputs
Î
e
G__inference_dropout_14_layer_call_and_return_conditional_losses_1384230

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1"!

identity_1Identity_1:output:0*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ê
À
.__inference_sequential_7_layer_call_fn_1384417
input_8
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
identity¢StatefulPartitionedCall®
StatefulPartitionedCallStatefulPartitionedCallinput_8unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_sequential_7_layer_call_and_return_conditional_losses_13844022
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿ9::::::22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ9
!
_user_specified_name	input_8"±L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*«
serving_default
;
input_80
serving_default_input_8:0ÿÿÿÿÿÿÿÿÿ9<
dense_230
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿ
tensorflow/serving/predict:ìÖ
á+
layer_with_weights-0
layer-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer-4
layer-5
layer_with_weights-2
layer-6
	optimizer
	trainable_variables

regularization_losses
	variables
	keras_api

signatures
t__call__
u_default_save_signature
*v&call_and_return_all_conditional_losses"í(
_tf_keras_sequentialÎ({"class_name": "Sequential", "name": "sequential_7", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "sequential_7", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 57]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_8"}}, {"class_name": "Dense", "config": {"name": "dense_21", "trainable": true, "dtype": "float32", "units": 270, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "GaussianNoise", "config": {"name": "gaussian_noise_14", "trainable": true, "dtype": "float32", "stddev": 3.4244634455768868}}, {"class_name": "Dropout", "config": {"name": "dropout_14", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}}, {"class_name": "Dense", "config": {"name": "dense_22", "trainable": true, "dtype": "float32", "units": 180, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "GaussianNoise", "config": {"name": "gaussian_noise_15", "trainable": true, "dtype": "float32", "stddev": 3.4244634455768868}}, {"class_name": "Dropout", "config": {"name": "dropout_15", "trainable": true, "dtype": "float32", "rate": 0.1, "noise_shape": null, "seed": null}}, {"class_name": "Dense", "config": {"name": "dense_23", "trainable": true, "dtype": "float32", "units": 10, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 57}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 57]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_7", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 57]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_8"}}, {"class_name": "Dense", "config": {"name": "dense_21", "trainable": true, "dtype": "float32", "units": 270, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "GaussianNoise", "config": {"name": "gaussian_noise_14", "trainable": true, "dtype": "float32", "stddev": 3.4244634455768868}}, {"class_name": "Dropout", "config": {"name": "dropout_14", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}}, {"class_name": "Dense", "config": {"name": "dense_22", "trainable": true, "dtype": "float32", "units": 180, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "GaussianNoise", "config": {"name": "gaussian_noise_15", "trainable": true, "dtype": "float32", "stddev": 3.4244634455768868}}, {"class_name": "Dropout", "config": {"name": "dropout_15", "trainable": true, "dtype": "float32", "rate": 0.1, "noise_shape": null, "seed": null}}, {"class_name": "Dense", "config": {"name": "dense_23", "trainable": true, "dtype": "float32", "units": 10, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}}, "training_config": {"loss": "sparse_categorical_crossentropy", "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "accuracy", "dtype": "float32", "fn": "sparse_categorical_accuracy"}}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
ó

kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api
w__call__
*x&call_and_return_all_conditional_losses"Î
_tf_keras_layer´{"class_name": "Dense", "name": "dense_21", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_21", "trainable": true, "dtype": "float32", "units": 270, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 57}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 57]}}
é
trainable_variables
regularization_losses
	variables
	keras_api
y__call__
*z&call_and_return_all_conditional_losses"Ú
_tf_keras_layerÀ{"class_name": "GaussianNoise", "name": "gaussian_noise_14", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "gaussian_noise_14", "trainable": true, "dtype": "float32", "stddev": 3.4244634455768868}}
ç
trainable_variables
regularization_losses
	variables
	keras_api
{__call__
*|&call_and_return_all_conditional_losses"Ø
_tf_keras_layer¾{"class_name": "Dropout", "name": "dropout_14", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout_14", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}}
õ

kernel
bias
trainable_variables
regularization_losses
 	variables
!	keras_api
}__call__
*~&call_and_return_all_conditional_losses"Ð
_tf_keras_layer¶{"class_name": "Dense", "name": "dense_22", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_22", "trainable": true, "dtype": "float32", "units": 180, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 270}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 270]}}
ê
"trainable_variables
#regularization_losses
$	variables
%	keras_api
__call__
+&call_and_return_all_conditional_losses"Ú
_tf_keras_layerÀ{"class_name": "GaussianNoise", "name": "gaussian_noise_15", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "gaussian_noise_15", "trainable": true, "dtype": "float32", "stddev": 3.4244634455768868}}
é
&trainable_variables
'regularization_losses
(	variables
)	keras_api
__call__
+&call_and_return_all_conditional_losses"Ø
_tf_keras_layer¾{"class_name": "Dropout", "name": "dropout_15", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout_15", "trainable": true, "dtype": "float32", "rate": 0.1, "noise_shape": null, "seed": null}}
ù

*kernel
+bias
,trainable_variables
-regularization_losses
.	variables
/	keras_api
__call__
+&call_and_return_all_conditional_losses"Ò
_tf_keras_layer¸{"class_name": "Dense", "name": "dense_23", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_23", "trainable": true, "dtype": "float32", "units": 10, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 180}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 180]}}
¿
0iter

1beta_1

2beta_2
	3decay
4learning_ratemhmimjmk*ml+mmvnvovpvq*vr+vs"
	optimizer
J
0
1
2
3
*4
+5"
trackable_list_wrapper
 "
trackable_list_wrapper
J
0
1
2
3
*4
+5"
trackable_list_wrapper
Ê
5layer_regularization_losses
	trainable_variables
6layer_metrics

7layers

regularization_losses
8non_trainable_variables
9metrics
	variables
t__call__
u_default_save_signature
*v&call_and_return_all_conditional_losses
&v"call_and_return_conditional_losses"
_generic_user_object
-
serving_default"
signature_map
": 	92dense_21/kernel
:2dense_21/bias
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
­
:layer_regularization_losses
trainable_variables

;layers
<layer_metrics
regularization_losses
=non_trainable_variables
>metrics
	variables
w__call__
*x&call_and_return_all_conditional_losses
&x"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
­
?layer_regularization_losses
trainable_variables

@layers
Alayer_metrics
regularization_losses
Bnon_trainable_variables
Cmetrics
	variables
y__call__
*z&call_and_return_all_conditional_losses
&z"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
­
Dlayer_regularization_losses
trainable_variables

Elayers
Flayer_metrics
regularization_losses
Gnon_trainable_variables
Hmetrics
	variables
{__call__
*|&call_and_return_all_conditional_losses
&|"call_and_return_conditional_losses"
_generic_user_object
#:!
´2dense_22/kernel
:´2dense_22/bias
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
­
Ilayer_regularization_losses
trainable_variables

Jlayers
Klayer_metrics
regularization_losses
Lnon_trainable_variables
Mmetrics
 	variables
}__call__
*~&call_and_return_all_conditional_losses
&~"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¯
Nlayer_regularization_losses
"trainable_variables

Olayers
Player_metrics
#regularization_losses
Qnon_trainable_variables
Rmetrics
$	variables
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
°
Slayer_regularization_losses
&trainable_variables

Tlayers
Ulayer_metrics
'regularization_losses
Vnon_trainable_variables
Wmetrics
(	variables
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
": 	´
2dense_23/kernel
:
2dense_23/bias
.
*0
+1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
*0
+1"
trackable_list_wrapper
°
Xlayer_regularization_losses
,trainable_variables

Ylayers
Zlayer_metrics
-regularization_losses
[non_trainable_variables
\metrics
.	variables
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
Q
0
1
2
3
4
5
6"
trackable_list_wrapper
 "
trackable_list_wrapper
.
]0
^1"
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
»
	_total
	`count
a	variables
b	keras_api"
_tf_keras_metricj{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}}

	ctotal
	dcount
e
_fn_kwargs
f	variables
g	keras_api"¿
_tf_keras_metric¤{"class_name": "MeanMetricWrapper", "name": "accuracy", "dtype": "float32", "config": {"name": "accuracy", "dtype": "float32", "fn": "sparse_categorical_accuracy"}}
:  (2total
:  (2count
.
_0
`1"
trackable_list_wrapper
-
a	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
c0
d1"
trackable_list_wrapper
-
f	variables"
_generic_user_object
':%	92Adam/dense_21/kernel/m
!:2Adam/dense_21/bias/m
(:&
´2Adam/dense_22/kernel/m
!:´2Adam/dense_22/bias/m
':%	´
2Adam/dense_23/kernel/m
 :
2Adam/dense_23/bias/m
':%	92Adam/dense_21/kernel/v
!:2Adam/dense_21/bias/v
(:&
´2Adam/dense_22/kernel/v
!:´2Adam/dense_22/bias/v
':%	´
2Adam/dense_23/kernel/v
 :
2Adam/dense_23/bias/v
2
.__inference_sequential_7_layer_call_fn_1384577
.__inference_sequential_7_layer_call_fn_1384417
.__inference_sequential_7_layer_call_fn_1384457
.__inference_sequential_7_layer_call_fn_1384594À
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
à2Ý
"__inference__wrapped_model_1384157¶
²
FullArgSpec
args 
varargsjargs
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *&¢#
!
input_8ÿÿÿÿÿÿÿÿÿ9
ò2ï
I__inference_sequential_7_layer_call_and_return_conditional_losses_1384376
I__inference_sequential_7_layer_call_and_return_conditional_losses_1384353
I__inference_sequential_7_layer_call_and_return_conditional_losses_1384533
I__inference_sequential_7_layer_call_and_return_conditional_losses_1384560À
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
Ô2Ñ
*__inference_dense_21_layer_call_fn_1384614¢
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
ï2ì
E__inference_dense_21_layer_call_and_return_conditional_losses_1384605¢
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
¤2¡
3__inference_gaussian_noise_14_layer_call_fn_1384634
3__inference_gaussian_noise_14_layer_call_fn_1384639´
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
Ú2×
N__inference_gaussian_noise_14_layer_call_and_return_conditional_losses_1384625
N__inference_gaussian_noise_14_layer_call_and_return_conditional_losses_1384629´
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
2
,__inference_dropout_14_layer_call_fn_1384658
,__inference_dropout_14_layer_call_fn_1384663´
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
Ì2É
G__inference_dropout_14_layer_call_and_return_conditional_losses_1384653
G__inference_dropout_14_layer_call_and_return_conditional_losses_1384648´
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
Ô2Ñ
*__inference_dense_22_layer_call_fn_1384683¢
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
ï2ì
E__inference_dense_22_layer_call_and_return_conditional_losses_1384674¢
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
¤2¡
3__inference_gaussian_noise_15_layer_call_fn_1384703
3__inference_gaussian_noise_15_layer_call_fn_1384708´
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
Ú2×
N__inference_gaussian_noise_15_layer_call_and_return_conditional_losses_1384694
N__inference_gaussian_noise_15_layer_call_and_return_conditional_losses_1384698´
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
2
,__inference_dropout_15_layer_call_fn_1384732
,__inference_dropout_15_layer_call_fn_1384727´
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
Ì2É
G__inference_dropout_15_layer_call_and_return_conditional_losses_1384722
G__inference_dropout_15_layer_call_and_return_conditional_losses_1384717´
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
Ô2Ñ
*__inference_dense_23_layer_call_fn_1384752¢
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
ï2ì
E__inference_dense_23_layer_call_and_return_conditional_losses_1384743¢
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
ÌBÉ
%__inference_signature_wrapper_1384484input_8"
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
 
"__inference__wrapped_model_1384157o*+0¢-
&¢#
!
input_8ÿÿÿÿÿÿÿÿÿ9
ª "3ª0
.
dense_23"
dense_23ÿÿÿÿÿÿÿÿÿ
¦
E__inference_dense_21_layer_call_and_return_conditional_losses_1384605]/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ9
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 ~
*__inference_dense_21_layer_call_fn_1384614P/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ9
ª "ÿÿÿÿÿÿÿÿÿ§
E__inference_dense_22_layer_call_and_return_conditional_losses_1384674^0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ´
 
*__inference_dense_22_layer_call_fn_1384683Q0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ´¦
E__inference_dense_23_layer_call_and_return_conditional_losses_1384743]*+0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ´
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ

 ~
*__inference_dense_23_layer_call_fn_1384752P*+0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ´
ª "ÿÿÿÿÿÿÿÿÿ
©
G__inference_dropout_14_layer_call_and_return_conditional_losses_1384648^4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ
p
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 ©
G__inference_dropout_14_layer_call_and_return_conditional_losses_1384653^4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ
p 
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 
,__inference_dropout_14_layer_call_fn_1384658Q4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ
p
ª "ÿÿÿÿÿÿÿÿÿ
,__inference_dropout_14_layer_call_fn_1384663Q4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ
p 
ª "ÿÿÿÿÿÿÿÿÿ©
G__inference_dropout_15_layer_call_and_return_conditional_losses_1384717^4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ´
p
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ´
 ©
G__inference_dropout_15_layer_call_and_return_conditional_losses_1384722^4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ´
p 
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ´
 
,__inference_dropout_15_layer_call_fn_1384727Q4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ´
p
ª "ÿÿÿÿÿÿÿÿÿ´
,__inference_dropout_15_layer_call_fn_1384732Q4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ´
p 
ª "ÿÿÿÿÿÿÿÿÿ´°
N__inference_gaussian_noise_14_layer_call_and_return_conditional_losses_1384625^4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ
p
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 °
N__inference_gaussian_noise_14_layer_call_and_return_conditional_losses_1384629^4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ
p 
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 
3__inference_gaussian_noise_14_layer_call_fn_1384634Q4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ
p
ª "ÿÿÿÿÿÿÿÿÿ
3__inference_gaussian_noise_14_layer_call_fn_1384639Q4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ
p 
ª "ÿÿÿÿÿÿÿÿÿ°
N__inference_gaussian_noise_15_layer_call_and_return_conditional_losses_1384694^4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ´
p
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ´
 °
N__inference_gaussian_noise_15_layer_call_and_return_conditional_losses_1384698^4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ´
p 
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ´
 
3__inference_gaussian_noise_15_layer_call_fn_1384703Q4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ´
p
ª "ÿÿÿÿÿÿÿÿÿ´
3__inference_gaussian_noise_15_layer_call_fn_1384708Q4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ´
p 
ª "ÿÿÿÿÿÿÿÿÿ´¶
I__inference_sequential_7_layer_call_and_return_conditional_losses_1384353i*+8¢5
.¢+
!
input_8ÿÿÿÿÿÿÿÿÿ9
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ

 ¶
I__inference_sequential_7_layer_call_and_return_conditional_losses_1384376i*+8¢5
.¢+
!
input_8ÿÿÿÿÿÿÿÿÿ9
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ

 µ
I__inference_sequential_7_layer_call_and_return_conditional_losses_1384533h*+7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ9
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ

 µ
I__inference_sequential_7_layer_call_and_return_conditional_losses_1384560h*+7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ9
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ

 
.__inference_sequential_7_layer_call_fn_1384417\*+8¢5
.¢+
!
input_8ÿÿÿÿÿÿÿÿÿ9
p

 
ª "ÿÿÿÿÿÿÿÿÿ

.__inference_sequential_7_layer_call_fn_1384457\*+8¢5
.¢+
!
input_8ÿÿÿÿÿÿÿÿÿ9
p 

 
ª "ÿÿÿÿÿÿÿÿÿ

.__inference_sequential_7_layer_call_fn_1384577[*+7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ9
p

 
ª "ÿÿÿÿÿÿÿÿÿ

.__inference_sequential_7_layer_call_fn_1384594[*+7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ9
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
£
%__inference_signature_wrapper_1384484z*+;¢8
¢ 
1ª.
,
input_8!
input_8ÿÿÿÿÿÿÿÿÿ9"3ª0
.
dense_23"
dense_23ÿÿÿÿÿÿÿÿÿ
