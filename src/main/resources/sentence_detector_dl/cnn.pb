
@
inputsPlaceholder*
dtype0*
shape:’’’’’’’’’
A
targetsPlaceholder*
dtype0*
shape:’’’’’’’’’
2
ConstConst*
dtype0*
valueB
 *o:
H
learning_ratePlaceholderWithDefaultConst*
dtype0*
shape: 
B
ones/shape_as_tensorConst*
valueB:*
dtype0
7

ones/ConstConst*
valueB
 *  ?*
dtype0
I
onesFillones/shape_as_tensor
ones/Const*
T0*

index_type0
K
class_weightsPlaceholderWithDefaultones*
dtype0*
shape:
4
Const_1Const*
valueB
 *    *
dtype0
D
dropoutPlaceholderWithDefaultConst_1*
dtype0*
shape: 
V
!embedding_10/random_uniform/shapeConst*
valueB"Č      *
dtype0
L
embedding_10/random_uniform/minConst*
valueB
 *ĶĢL½*
dtype0
L
embedding_10/random_uniform/maxConst*
valueB
 *ĶĢL=*
dtype0

)embedding_10/random_uniform/RandomUniformRandomUniform!embedding_10/random_uniform/shape*
T0*
dtype0*
seed2Ó¶ß*
seed±’å)
q
embedding_10/random_uniform/subSubembedding_10/random_uniform/maxembedding_10/random_uniform/min*
T0
{
embedding_10/random_uniform/mulMul)embedding_10/random_uniform/RandomUniformembedding_10/random_uniform/sub*
T0
m
embedding_10/random_uniformAddembedding_10/random_uniform/mulembedding_10/random_uniform/min*
T0
m
embedding_10/embeddings
VariableV2*
dtype0*
	container *
shape:
Č*
shared_name 
¼
embedding_10/embeddings/AssignAssignembedding_10/embeddingsembedding_10/random_uniform*
use_locking(*
T0**
_class 
loc:@embedding_10/embeddings*
validate_shape(
v
embedding_10/embeddings/readIdentityembedding_10/embeddings*
T0**
_class 
loc:@embedding_10/embeddings
I
embedding_10/CastCastinputs*

SrcT0*
Truncate( *

DstT0
x
"embedding_10/embedding_lookup/axisConst*
dtype0**
_class 
loc:@embedding_10/embeddings*
value	B : 
č
embedding_10/embedding_lookupGatherV2embedding_10/embeddings/readembedding_10/Cast"embedding_10/embedding_lookup/axis*
Taxis0*

batch_dims *
Tindices0*
Tparams0**
_class 
loc:@embedding_10/embeddings
Z
&embedding_10/embedding_lookup/IdentityIdentityembedding_10/embedding_lookup*
T0
2
mul/yConst*
valueB
 *  ?*
dtype0
B
mulMul&embedding_10/embedding_lookup/Identitymul/y*
T0
6
	Minimum/xConst*
valueB
 *  ?*
dtype0
6
	Minimum/yConst*
valueB
 *ĶĢL>*
dtype0
1
MinimumMinimum	Minimum/x	Minimum/y*
T0
8
Minimum_1/xConst*
valueB
 *  ?*
dtype0
3
	Minimum_1MinimumMinimum_1/xMinimum*
T0
6
dropout_1/ShapeShapemul*
T0*
out_type0
I
dropout_1/random_uniform/minConst*
valueB
 *    *
dtype0
I
dropout_1/random_uniform/maxConst*
valueB
 *  ?*
dtype0
w
&dropout_1/random_uniform/RandomUniformRandomUniformdropout_1/Shape*
dtype0*
seed2 *

seed *
T0
h
dropout_1/random_uniform/subSubdropout_1/random_uniform/maxdropout_1/random_uniform/min*
T0
r
dropout_1/random_uniform/mulMul&dropout_1/random_uniform/RandomUniformdropout_1/random_uniform/sub*
T0
d
dropout_1/random_uniformAdddropout_1/random_uniform/muldropout_1/random_uniform/min*
T0
<
dropout_1/sub/xConst*
valueB
 *  ?*
dtype0
9
dropout_1/subSubdropout_1/sub/x	Minimum_1*
T0
@
dropout_1/truediv/xConst*
valueB
 *  ?*
dtype0
I
dropout_1/truedivRealDivdropout_1/truediv/xdropout_1/sub*
T0
T
dropout_1/GreaterEqualGreaterEqualdropout_1/random_uniform	Minimum_1*
T0
5
dropout_1/mulMulmuldropout_1/truediv*
T0
V
dropout_1/CastCastdropout_1/GreaterEqual*

SrcT0
*
Truncate( *

DstT0
>
dropout_1/mul_1Muldropout_1/muldropout_1/Cast*
T0
W
conv1d_10/random_uniform/shapeConst*!
valueB"         *
dtype0
I
conv1d_10/random_uniform/minConst*
valueB
 *Ŗ7½*
dtype0
I
conv1d_10/random_uniform/maxConst*
dtype0*
valueB
 *Ŗ7=

&conv1d_10/random_uniform/RandomUniformRandomUniformconv1d_10/random_uniform/shape*
T0*
dtype0*
seed2Ń*
seed±’å)
h
conv1d_10/random_uniform/subSubconv1d_10/random_uniform/maxconv1d_10/random_uniform/min*
T0
r
conv1d_10/random_uniform/mulMul&conv1d_10/random_uniform/RandomUniformconv1d_10/random_uniform/sub*
T0
d
conv1d_10/random_uniformAddconv1d_10/random_uniform/mulconv1d_10/random_uniform/min*
T0
i
conv1d_10/kernel
VariableV2*
	container *
shape:*
shared_name *
dtype0
¤
conv1d_10/kernel/AssignAssignconv1d_10/kernelconv1d_10/random_uniform*#
_class
loc:@conv1d_10/kernel*
validate_shape(*
use_locking(*
T0
a
conv1d_10/kernel/readIdentityconv1d_10/kernel*
T0*#
_class
loc:@conv1d_10/kernel
@
conv1d_10/ConstConst*
valueB*    *
dtype0
^
conv1d_10/bias
VariableV2*
dtype0*
	container *
shape:*
shared_name 

conv1d_10/bias/AssignAssignconv1d_10/biasconv1d_10/Const*
use_locking(*
T0*!
_class
loc:@conv1d_10/bias*
validate_shape(
[
conv1d_10/bias/readIdentityconv1d_10/bias*
T0*!
_class
loc:@conv1d_10/bias
N
$conv1d_10/convolution/ExpandDims/dimConst*
value	B :*
dtype0
z
 conv1d_10/convolution/ExpandDims
ExpandDimsdropout_1/mul_1$conv1d_10/convolution/ExpandDims/dim*

Tdim0*
T0
P
&conv1d_10/convolution/ExpandDims_1/dimConst*
value	B : *
dtype0

"conv1d_10/convolution/ExpandDims_1
ExpandDimsconv1d_10/kernel/read&conv1d_10/convolution/ExpandDims_1/dim*

Tdim0*
T0
ö
conv1d_10/convolutionConv2D conv1d_10/convolution/ExpandDims"conv1d_10/convolution/ExpandDims_1*
data_formatNHWC*
strides
*
explicit_paddings
 *
use_cudnn_on_gpu(*
paddingVALID*
	dilations
*
T0
_
conv1d_10/convolution/SqueezeSqueezeconv1d_10/convolution*
squeeze_dims
*
T0
P
conv1d_10/Reshape/shapeConst*!
valueB"         *
dtype0
a
conv1d_10/ReshapeReshapeconv1d_10/bias/readconv1d_10/Reshape/shape*
T0*
Tshape0
Q
conv1d_10/addAddV2conv1d_10/convolution/Squeezeconv1d_10/Reshape*
T0
.
conv1d_10/ReluReluconv1d_10/add*
T0
W
-global_max_pooling1d_10/Max/reduction_indicesConst*
value	B :*
dtype0

global_max_pooling1d_10/MaxMaxconv1d_10/Relu-global_max_pooling1d_10/Max/reduction_indices*

Tidx0*
	keep_dims( *
T0
R
dense_19/random_uniform/shapeConst*
valueB"   ś   *
dtype0
H
dense_19/random_uniform/minConst*
dtype0*
valueB
 *qÄ¾
H
dense_19/random_uniform/maxConst*
valueB
 *qÄ>*
dtype0

%dense_19/random_uniform/RandomUniformRandomUniformdense_19/random_uniform/shape*
T0*
dtype0*
seed2 õt*
seed±’å)
e
dense_19/random_uniform/subSubdense_19/random_uniform/maxdense_19/random_uniform/min*
T0
o
dense_19/random_uniform/mulMul%dense_19/random_uniform/RandomUniformdense_19/random_uniform/sub*
T0
a
dense_19/random_uniformAdddense_19/random_uniform/muldense_19/random_uniform/min*
T0
d
dense_19/kernel
VariableV2*
	container *
shape:	ś*
shared_name *
dtype0
 
dense_19/kernel/AssignAssigndense_19/kerneldense_19/random_uniform*
use_locking(*
T0*"
_class
loc:@dense_19/kernel*
validate_shape(
^
dense_19/kernel/readIdentitydense_19/kernel*
T0*"
_class
loc:@dense_19/kernel
@
dense_19/ConstConst*
dtype0*
valueBś*    
^
dense_19/bias
VariableV2*
shape:ś*
shared_name *
dtype0*
	container 

dense_19/bias/AssignAssigndense_19/biasdense_19/Const* 
_class
loc:@dense_19/bias*
validate_shape(*
use_locking(*
T0
X
dense_19/bias/readIdentitydense_19/bias*
T0* 
_class
loc:@dense_19/bias
{
dense_19/MatMulMatMulglobal_max_pooling1d_10/Maxdense_19/kernel/read*
T0*
transpose_a( *
transpose_b( 
`
dense_19/BiasAddBiasAdddense_19/MatMuldense_19/bias/read*
T0*
data_formatNHWC
4
mul_1/yConst*
valueB
 *  ?*
dtype0
0
mul_1Muldense_19/BiasAddmul_1/y*
T0
8
Minimum_2/xConst*
dtype0*
valueB
 *  ?
8
Minimum_2/yConst*
valueB
 *ĶĢL>*
dtype0
7
	Minimum_2MinimumMinimum_2/xMinimum_2/y*
T0
8
Minimum_3/xConst*
dtype0*
valueB
 *  ?
5
	Minimum_3MinimumMinimum_3/x	Minimum_2*
T0
8
dropout_2/ShapeShapemul_1*
T0*
out_type0
I
dropout_2/random_uniform/minConst*
valueB
 *    *
dtype0
I
dropout_2/random_uniform/maxConst*
valueB
 *  ?*
dtype0
w
&dropout_2/random_uniform/RandomUniformRandomUniformdropout_2/Shape*
T0*
dtype0*
seed2 *

seed 
h
dropout_2/random_uniform/subSubdropout_2/random_uniform/maxdropout_2/random_uniform/min*
T0
r
dropout_2/random_uniform/mulMul&dropout_2/random_uniform/RandomUniformdropout_2/random_uniform/sub*
T0
d
dropout_2/random_uniformAdddropout_2/random_uniform/muldropout_2/random_uniform/min*
T0
<
dropout_2/sub/xConst*
valueB
 *  ?*
dtype0
9
dropout_2/subSubdropout_2/sub/x	Minimum_3*
T0
@
dropout_2/truediv/xConst*
valueB
 *  ?*
dtype0
I
dropout_2/truedivRealDivdropout_2/truediv/xdropout_2/sub*
T0
T
dropout_2/GreaterEqualGreaterEqualdropout_2/random_uniform	Minimum_3*
T0
7
dropout_2/mulMulmul_1dropout_2/truediv*
T0
V
dropout_2/CastCastdropout_2/GreaterEqual*
Truncate( *

DstT0*

SrcT0

>
dropout_2/mul_1Muldropout_2/muldropout_2/Cast*
T0
4
activation_10/ReluReludropout_2/mul_1*
T0
R
dense_20/random_uniform/shapeConst*
valueB"ś      *
dtype0
H
dense_20/random_uniform/minConst*
valueB
 *2R¾*
dtype0
H
dense_20/random_uniform/maxConst*
valueB
 *2R>*
dtype0

%dense_20/random_uniform/RandomUniformRandomUniformdense_20/random_uniform/shape*
seed±’å)*
T0*
dtype0*
seed2³Č
e
dense_20/random_uniform/subSubdense_20/random_uniform/maxdense_20/random_uniform/min*
T0
o
dense_20/random_uniform/mulMul%dense_20/random_uniform/RandomUniformdense_20/random_uniform/sub*
T0
a
dense_20/random_uniformAdddense_20/random_uniform/muldense_20/random_uniform/min*
T0
d
dense_20/kernel
VariableV2*
	container *
shape:	ś*
shared_name *
dtype0
 
dense_20/kernel/AssignAssigndense_20/kerneldense_20/random_uniform*
use_locking(*
T0*"
_class
loc:@dense_20/kernel*
validate_shape(
^
dense_20/kernel/readIdentitydense_20/kernel*
T0*"
_class
loc:@dense_20/kernel
?
dense_20/ConstConst*
valueB*    *
dtype0
]
dense_20/bias
VariableV2*
dtype0*
	container *
shape:*
shared_name 

dense_20/bias/AssignAssigndense_20/biasdense_20/Const*
T0* 
_class
loc:@dense_20/bias*
validate_shape(*
use_locking(
X
dense_20/bias/readIdentitydense_20/bias*
T0* 
_class
loc:@dense_20/bias
r
dense_20/MatMulMatMulactivation_10/Reludense_20/kernel/read*
T0*
transpose_a( *
transpose_b( 
`
dense_20/BiasAddBiasAdddense_20/MatMuldense_20/bias/read*
data_formatNHWC*
T0
-
outputsSigmoiddense_20/BiasAdd*
T0
4
Const_2Const*
valueB
 *æÖ3*
dtype0
2
sub/xConst*
valueB
 *  ?*
dtype0
#
subSubsub/xConst_2*
T0
7
clip_by_value/MinimumMinimumoutputssub*
T0
A
clip_by_valueMaximumclip_by_value/MinimumConst_2*
T0
4
sub_1/xConst*
valueB
 *  ?*
dtype0
-
sub_1Subsub_1/xclip_by_value*
T0
1
truedivRealDivclip_by_valuesub_1*
T0

LogLogtruediv*
T0
3
logistic_loss/zeros_like	ZerosLikeLog*
T0
R
logistic_loss/GreaterEqualGreaterEqualLoglogistic_loss/zeros_like*
T0
b
logistic_loss/SelectSelectlogistic_loss/GreaterEqualLoglogistic_loss/zeros_like*
T0
&
logistic_loss/NegNegLog*
T0
]
logistic_loss/Select_1Selectlogistic_loss/GreaterEquallogistic_loss/NegLog*
T0
/
logistic_loss/mulMulLogtargets*
T0
J
logistic_loss/subSublogistic_loss/Selectlogistic_loss/mul*
T0
9
logistic_loss/ExpExplogistic_loss/Select_1*
T0
8
logistic_loss/Log1pLog1plogistic_loss/Exp*
T0
E
logistic_lossAddlogistic_loss/sublogistic_loss/Log1p*
T0
I
Mean/reduction_indicesConst*
valueB :
’’’’’’’’’*
dtype0
Y
MeanMeanlogistic_lossMean/reduction_indices*
T0*

Tidx0*
	keep_dims( 
5
Const_3Const*
dtype0*
valueB: 
A
lossMeanMeanConst_3*

Tidx0*
	keep_dims( *
T0
8
gradients/ShapeConst*
valueB *
dtype0
@
gradients/grad_ys_0Const*
valueB
 *  ?*
dtype0
W
gradients/FillFillgradients/Shapegradients/grad_ys_0*
T0*

index_type0
O
!gradients/loss_grad/Reshape/shapeConst*
valueB:*
dtype0
p
gradients/loss_grad/ReshapeReshapegradients/Fill!gradients/loss_grad/Reshape/shape*
T0*
Tshape0
A
gradients/loss_grad/ShapeShapeMean*
out_type0*
T0
s
gradients/loss_grad/TileTilegradients/loss_grad/Reshapegradients/loss_grad/Shape*

Tmultiples0*
T0
C
gradients/loss_grad/Shape_1ShapeMean*
T0*
out_type0
D
gradients/loss_grad/Shape_2Const*
valueB *
dtype0
G
gradients/loss_grad/ConstConst*
valueB: *
dtype0
~
gradients/loss_grad/ProdProdgradients/loss_grad/Shape_1gradients/loss_grad/Const*
T0*

Tidx0*
	keep_dims( 
I
gradients/loss_grad/Const_1Const*
dtype0*
valueB: 

gradients/loss_grad/Prod_1Prodgradients/loss_grad/Shape_2gradients/loss_grad/Const_1*

Tidx0*
	keep_dims( *
T0
G
gradients/loss_grad/Maximum/yConst*
value	B :*
dtype0
j
gradients/loss_grad/MaximumMaximumgradients/loss_grad/Prod_1gradients/loss_grad/Maximum/y*
T0
h
gradients/loss_grad/floordivFloorDivgradients/loss_grad/Prodgradients/loss_grad/Maximum*
T0
f
gradients/loss_grad/CastCastgradients/loss_grad/floordiv*

DstT0*

SrcT0*
Truncate( 
c
gradients/loss_grad/truedivRealDivgradients/loss_grad/Tilegradients/loss_grad/Cast*
T0
J
gradients/Mean_grad/ShapeShapelogistic_loss*
T0*
out_type0
p
gradients/Mean_grad/SizeConst*,
_class"
 loc:@gradients/Mean_grad/Shape*
value	B :*
dtype0

gradients/Mean_grad/addAddV2Mean/reduction_indicesgradients/Mean_grad/Size*
T0*,
_class"
 loc:@gradients/Mean_grad/Shape

gradients/Mean_grad/modFloorModgradients/Mean_grad/addgradients/Mean_grad/Size*
T0*,
_class"
 loc:@gradients/Mean_grad/Shape
r
gradients/Mean_grad/Shape_1Const*,
_class"
 loc:@gradients/Mean_grad/Shape*
valueB *
dtype0
w
gradients/Mean_grad/range/startConst*,
_class"
 loc:@gradients/Mean_grad/Shape*
value	B : *
dtype0
w
gradients/Mean_grad/range/deltaConst*
dtype0*,
_class"
 loc:@gradients/Mean_grad/Shape*
value	B :
ø
gradients/Mean_grad/rangeRangegradients/Mean_grad/range/startgradients/Mean_grad/Sizegradients/Mean_grad/range/delta*,
_class"
 loc:@gradients/Mean_grad/Shape*

Tidx0
v
gradients/Mean_grad/Fill/valueConst*,
_class"
 loc:@gradients/Mean_grad/Shape*
value	B :*
dtype0
¦
gradients/Mean_grad/FillFillgradients/Mean_grad/Shape_1gradients/Mean_grad/Fill/value*
T0*,
_class"
 loc:@gradients/Mean_grad/Shape*

index_type0
Ū
!gradients/Mean_grad/DynamicStitchDynamicStitchgradients/Mean_grad/rangegradients/Mean_grad/modgradients/Mean_grad/Shapegradients/Mean_grad/Fill*
T0*,
_class"
 loc:@gradients/Mean_grad/Shape*
N
u
gradients/Mean_grad/Maximum/yConst*,
_class"
 loc:@gradients/Mean_grad/Shape*
value	B :*
dtype0

gradients/Mean_grad/MaximumMaximum!gradients/Mean_grad/DynamicStitchgradients/Mean_grad/Maximum/y*
T0*,
_class"
 loc:@gradients/Mean_grad/Shape

gradients/Mean_grad/floordivFloorDivgradients/Mean_grad/Shapegradients/Mean_grad/Maximum*
T0*,
_class"
 loc:@gradients/Mean_grad/Shape
}
gradients/Mean_grad/ReshapeReshapegradients/loss_grad/truediv!gradients/Mean_grad/DynamicStitch*
T0*
Tshape0
v
gradients/Mean_grad/TileTilegradients/Mean_grad/Reshapegradients/Mean_grad/floordiv*

Tmultiples0*
T0
L
gradients/Mean_grad/Shape_2Shapelogistic_loss*
T0*
out_type0
C
gradients/Mean_grad/Shape_3ShapeMean*
T0*
out_type0
G
gradients/Mean_grad/ConstConst*
valueB: *
dtype0
~
gradients/Mean_grad/ProdProdgradients/Mean_grad/Shape_2gradients/Mean_grad/Const*

Tidx0*
	keep_dims( *
T0
I
gradients/Mean_grad/Const_1Const*
dtype0*
valueB: 

gradients/Mean_grad/Prod_1Prodgradients/Mean_grad/Shape_3gradients/Mean_grad/Const_1*

Tidx0*
	keep_dims( *
T0
I
gradients/Mean_grad/Maximum_1/yConst*
dtype0*
value	B :
n
gradients/Mean_grad/Maximum_1Maximumgradients/Mean_grad/Prod_1gradients/Mean_grad/Maximum_1/y*
T0
l
gradients/Mean_grad/floordiv_1FloorDivgradients/Mean_grad/Prodgradients/Mean_grad/Maximum_1*
T0
h
gradients/Mean_grad/CastCastgradients/Mean_grad/floordiv_1*

SrcT0*
Truncate( *

DstT0
c
gradients/Mean_grad/truedivRealDivgradients/Mean_grad/Tilegradients/Mean_grad/Cast*
T0
W
"gradients/logistic_loss_grad/ShapeShapelogistic_loss/sub*
T0*
out_type0
[
$gradients/logistic_loss_grad/Shape_1Shapelogistic_loss/Log1p*
T0*
out_type0

2gradients/logistic_loss_grad/BroadcastGradientArgsBroadcastGradientArgs"gradients/logistic_loss_grad/Shape$gradients/logistic_loss_grad/Shape_1*
T0

 gradients/logistic_loss_grad/SumSumgradients/Mean_grad/truediv2gradients/logistic_loss_grad/BroadcastGradientArgs*
T0*

Tidx0*
	keep_dims( 

$gradients/logistic_loss_grad/ReshapeReshape gradients/logistic_loss_grad/Sum"gradients/logistic_loss_grad/Shape*
T0*
Tshape0
¢
"gradients/logistic_loss_grad/Sum_1Sumgradients/Mean_grad/truediv4gradients/logistic_loss_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
	keep_dims( 

&gradients/logistic_loss_grad/Reshape_1Reshape"gradients/logistic_loss_grad/Sum_1$gradients/logistic_loss_grad/Shape_1*
T0*
Tshape0

-gradients/logistic_loss_grad/tuple/group_depsNoOp%^gradients/logistic_loss_grad/Reshape'^gradients/logistic_loss_grad/Reshape_1
Ł
5gradients/logistic_loss_grad/tuple/control_dependencyIdentity$gradients/logistic_loss_grad/Reshape.^gradients/logistic_loss_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/logistic_loss_grad/Reshape
ß
7gradients/logistic_loss_grad/tuple/control_dependency_1Identity&gradients/logistic_loss_grad/Reshape_1.^gradients/logistic_loss_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients/logistic_loss_grad/Reshape_1
^
&gradients/logistic_loss/sub_grad/ShapeShapelogistic_loss/Select*
T0*
out_type0
]
(gradients/logistic_loss/sub_grad/Shape_1Shapelogistic_loss/mul*
T0*
out_type0
Ŗ
6gradients/logistic_loss/sub_grad/BroadcastGradientArgsBroadcastGradientArgs&gradients/logistic_loss/sub_grad/Shape(gradients/logistic_loss/sub_grad/Shape_1*
T0
Ą
$gradients/logistic_loss/sub_grad/SumSum5gradients/logistic_loss_grad/tuple/control_dependency6gradients/logistic_loss/sub_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0

(gradients/logistic_loss/sub_grad/ReshapeReshape$gradients/logistic_loss/sub_grad/Sum&gradients/logistic_loss/sub_grad/Shape*
T0*
Tshape0
k
$gradients/logistic_loss/sub_grad/NegNeg5gradients/logistic_loss_grad/tuple/control_dependency*
T0
³
&gradients/logistic_loss/sub_grad/Sum_1Sum$gradients/logistic_loss/sub_grad/Neg8gradients/logistic_loss/sub_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0

*gradients/logistic_loss/sub_grad/Reshape_1Reshape&gradients/logistic_loss/sub_grad/Sum_1(gradients/logistic_loss/sub_grad/Shape_1*
T0*
Tshape0

1gradients/logistic_loss/sub_grad/tuple/group_depsNoOp)^gradients/logistic_loss/sub_grad/Reshape+^gradients/logistic_loss/sub_grad/Reshape_1
é
9gradients/logistic_loss/sub_grad/tuple/control_dependencyIdentity(gradients/logistic_loss/sub_grad/Reshape2^gradients/logistic_loss/sub_grad/tuple/group_deps*
T0*;
_class1
/-loc:@gradients/logistic_loss/sub_grad/Reshape
ļ
;gradients/logistic_loss/sub_grad/tuple/control_dependency_1Identity*gradients/logistic_loss/sub_grad/Reshape_12^gradients/logistic_loss/sub_grad/tuple/group_deps*
T0*=
_class3
1/loc:@gradients/logistic_loss/sub_grad/Reshape_1

(gradients/logistic_loss/Log1p_grad/add/xConst8^gradients/logistic_loss_grad/tuple/control_dependency_1*
valueB
 *  ?*
dtype0
u
&gradients/logistic_loss/Log1p_grad/addAddV2(gradients/logistic_loss/Log1p_grad/add/xlogistic_loss/Exp*
T0
l
-gradients/logistic_loss/Log1p_grad/Reciprocal
Reciprocal&gradients/logistic_loss/Log1p_grad/add*
T0

&gradients/logistic_loss/Log1p_grad/mulMul7gradients/logistic_loss_grad/tuple/control_dependency_1-gradients/logistic_loss/Log1p_grad/Reciprocal*
T0
I
.gradients/logistic_loss/Select_grad/zeros_like	ZerosLikeLog*
T0
Ä
*gradients/logistic_loss/Select_grad/SelectSelectlogistic_loss/GreaterEqual9gradients/logistic_loss/sub_grad/tuple/control_dependency.gradients/logistic_loss/Select_grad/zeros_like*
T0
Ę
,gradients/logistic_loss/Select_grad/Select_1Selectlogistic_loss/GreaterEqual.gradients/logistic_loss/Select_grad/zeros_like9gradients/logistic_loss/sub_grad/tuple/control_dependency*
T0

4gradients/logistic_loss/Select_grad/tuple/group_depsNoOp+^gradients/logistic_loss/Select_grad/Select-^gradients/logistic_loss/Select_grad/Select_1
ó
<gradients/logistic_loss/Select_grad/tuple/control_dependencyIdentity*gradients/logistic_loss/Select_grad/Select5^gradients/logistic_loss/Select_grad/tuple/group_deps*
T0*=
_class3
1/loc:@gradients/logistic_loss/Select_grad/Select
ł
>gradients/logistic_loss/Select_grad/tuple/control_dependency_1Identity,gradients/logistic_loss/Select_grad/Select_15^gradients/logistic_loss/Select_grad/tuple/group_deps*
T0*?
_class5
31loc:@gradients/logistic_loss/Select_grad/Select_1
M
&gradients/logistic_loss/mul_grad/ShapeShapeLog*
out_type0*
T0
S
(gradients/logistic_loss/mul_grad/Shape_1Shapetargets*
out_type0*
T0
Ŗ
6gradients/logistic_loss/mul_grad/BroadcastGradientArgsBroadcastGradientArgs&gradients/logistic_loss/mul_grad/Shape(gradients/logistic_loss/mul_grad/Shape_1*
T0
z
$gradients/logistic_loss/mul_grad/MulMul;gradients/logistic_loss/sub_grad/tuple/control_dependency_1targets*
T0
Æ
$gradients/logistic_loss/mul_grad/SumSum$gradients/logistic_loss/mul_grad/Mul6gradients/logistic_loss/mul_grad/BroadcastGradientArgs*
T0*

Tidx0*
	keep_dims( 

(gradients/logistic_loss/mul_grad/ReshapeReshape$gradients/logistic_loss/mul_grad/Sum&gradients/logistic_loss/mul_grad/Shape*
T0*
Tshape0
x
&gradients/logistic_loss/mul_grad/Mul_1MulLog;gradients/logistic_loss/sub_grad/tuple/control_dependency_1*
T0
µ
&gradients/logistic_loss/mul_grad/Sum_1Sum&gradients/logistic_loss/mul_grad/Mul_18gradients/logistic_loss/mul_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
	keep_dims( 

*gradients/logistic_loss/mul_grad/Reshape_1Reshape&gradients/logistic_loss/mul_grad/Sum_1(gradients/logistic_loss/mul_grad/Shape_1*
T0*
Tshape0

1gradients/logistic_loss/mul_grad/tuple/group_depsNoOp)^gradients/logistic_loss/mul_grad/Reshape+^gradients/logistic_loss/mul_grad/Reshape_1
é
9gradients/logistic_loss/mul_grad/tuple/control_dependencyIdentity(gradients/logistic_loss/mul_grad/Reshape2^gradients/logistic_loss/mul_grad/tuple/group_deps*;
_class1
/-loc:@gradients/logistic_loss/mul_grad/Reshape*
T0
ļ
;gradients/logistic_loss/mul_grad/tuple/control_dependency_1Identity*gradients/logistic_loss/mul_grad/Reshape_12^gradients/logistic_loss/mul_grad/tuple/group_deps*
T0*=
_class3
1/loc:@gradients/logistic_loss/mul_grad/Reshape_1
o
$gradients/logistic_loss/Exp_grad/mulMul&gradients/logistic_loss/Log1p_grad/mullogistic_loss/Exp*
T0
Y
0gradients/logistic_loss/Select_1_grad/zeros_like	ZerosLikelogistic_loss/Neg*
T0
³
,gradients/logistic_loss/Select_1_grad/SelectSelectlogistic_loss/GreaterEqual$gradients/logistic_loss/Exp_grad/mul0gradients/logistic_loss/Select_1_grad/zeros_like*
T0
µ
.gradients/logistic_loss/Select_1_grad/Select_1Selectlogistic_loss/GreaterEqual0gradients/logistic_loss/Select_1_grad/zeros_like$gradients/logistic_loss/Exp_grad/mul*
T0

6gradients/logistic_loss/Select_1_grad/tuple/group_depsNoOp-^gradients/logistic_loss/Select_1_grad/Select/^gradients/logistic_loss/Select_1_grad/Select_1
ū
>gradients/logistic_loss/Select_1_grad/tuple/control_dependencyIdentity,gradients/logistic_loss/Select_1_grad/Select7^gradients/logistic_loss/Select_1_grad/tuple/group_deps*
T0*?
_class5
31loc:@gradients/logistic_loss/Select_1_grad/Select

@gradients/logistic_loss/Select_1_grad/tuple/control_dependency_1Identity.gradients/logistic_loss/Select_1_grad/Select_17^gradients/logistic_loss/Select_1_grad/tuple/group_deps*
T0*A
_class7
53loc:@gradients/logistic_loss/Select_1_grad/Select_1
t
$gradients/logistic_loss/Neg_grad/NegNeg>gradients/logistic_loss/Select_1_grad/tuple/control_dependency*
T0
Č
gradients/AddNAddN<gradients/logistic_loss/Select_grad/tuple/control_dependency9gradients/logistic_loss/mul_grad/tuple/control_dependency@gradients/logistic_loss/Select_1_grad/tuple/control_dependency_1$gradients/logistic_loss/Neg_grad/Neg*=
_class3
1/loc:@gradients/logistic_loss/Select_grad/Select*
N*
T0
N
gradients/Log_grad/Reciprocal
Reciprocaltruediv^gradients/AddN*
T0
U
gradients/Log_grad/mulMulgradients/AddNgradients/Log_grad/Reciprocal*
T0
M
gradients/truediv_grad/ShapeShapeclip_by_value*
T0*
out_type0
G
gradients/truediv_grad/Shape_1Shapesub_1*
T0*
out_type0

,gradients/truediv_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/truediv_grad/Shapegradients/truediv_grad/Shape_1*
T0
Q
gradients/truediv_grad/RealDivRealDivgradients/Log_grad/mulsub_1*
T0

gradients/truediv_grad/SumSumgradients/truediv_grad/RealDiv,gradients/truediv_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
z
gradients/truediv_grad/ReshapeReshapegradients/truediv_grad/Sumgradients/truediv_grad/Shape*
T0*
Tshape0
9
gradients/truediv_grad/NegNegclip_by_value*
T0
W
 gradients/truediv_grad/RealDiv_1RealDivgradients/truediv_grad/Negsub_1*
T0
]
 gradients/truediv_grad/RealDiv_2RealDiv gradients/truediv_grad/RealDiv_1sub_1*
T0
d
gradients/truediv_grad/mulMulgradients/Log_grad/mul gradients/truediv_grad/RealDiv_2*
T0

gradients/truediv_grad/Sum_1Sumgradients/truediv_grad/mul.gradients/truediv_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0

 gradients/truediv_grad/Reshape_1Reshapegradients/truediv_grad/Sum_1gradients/truediv_grad/Shape_1*
T0*
Tshape0
s
'gradients/truediv_grad/tuple/group_depsNoOp^gradients/truediv_grad/Reshape!^gradients/truediv_grad/Reshape_1
Į
/gradients/truediv_grad/tuple/control_dependencyIdentitygradients/truediv_grad/Reshape(^gradients/truediv_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/truediv_grad/Reshape
Ē
1gradients/truediv_grad/tuple/control_dependency_1Identity gradients/truediv_grad/Reshape_1(^gradients/truediv_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients/truediv_grad/Reshape_1
E
gradients/sub_1_grad/ShapeShapesub_1/x*
T0*
out_type0
M
gradients/sub_1_grad/Shape_1Shapeclip_by_value*
T0*
out_type0

*gradients/sub_1_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/sub_1_grad/Shapegradients/sub_1_grad/Shape_1*
T0
¤
gradients/sub_1_grad/SumSum1gradients/truediv_grad/tuple/control_dependency_1*gradients/sub_1_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
t
gradients/sub_1_grad/ReshapeReshapegradients/sub_1_grad/Sumgradients/sub_1_grad/Shape*
T0*
Tshape0
[
gradients/sub_1_grad/NegNeg1gradients/truediv_grad/tuple/control_dependency_1*
T0

gradients/sub_1_grad/Sum_1Sumgradients/sub_1_grad/Neg,gradients/sub_1_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
	keep_dims( 
z
gradients/sub_1_grad/Reshape_1Reshapegradients/sub_1_grad/Sum_1gradients/sub_1_grad/Shape_1*
Tshape0*
T0
m
%gradients/sub_1_grad/tuple/group_depsNoOp^gradients/sub_1_grad/Reshape^gradients/sub_1_grad/Reshape_1
¹
-gradients/sub_1_grad/tuple/control_dependencyIdentitygradients/sub_1_grad/Reshape&^gradients/sub_1_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/sub_1_grad/Reshape
æ
/gradients/sub_1_grad/tuple/control_dependency_1Identitygradients/sub_1_grad/Reshape_1&^gradients/sub_1_grad/tuple/group_deps*1
_class'
%#loc:@gradients/sub_1_grad/Reshape_1*
T0
æ
gradients/AddN_1AddN/gradients/truediv_grad/tuple/control_dependency/gradients/sub_1_grad/tuple/control_dependency_1*
T0*1
_class'
%#loc:@gradients/truediv_grad/Reshape*
N
[
"gradients/clip_by_value_grad/ShapeShapeclip_by_value/Minimum*
out_type0*
T0
M
$gradients/clip_by_value_grad/Shape_1Const*
valueB *
dtype0
X
$gradients/clip_by_value_grad/Shape_2Shapegradients/AddN_1*
T0*
out_type0
U
(gradients/clip_by_value_grad/zeros/ConstConst*
valueB
 *    *
dtype0

"gradients/clip_by_value_grad/zerosFill$gradients/clip_by_value_grad/Shape_2(gradients/clip_by_value_grad/zeros/Const*
T0*

index_type0
b
)gradients/clip_by_value_grad/GreaterEqualGreaterEqualclip_by_value/MinimumConst_2*
T0

2gradients/clip_by_value_grad/BroadcastGradientArgsBroadcastGradientArgs"gradients/clip_by_value_grad/Shape$gradients/clip_by_value_grad/Shape_1*
T0

#gradients/clip_by_value_grad/SelectSelect)gradients/clip_by_value_grad/GreaterEqualgradients/AddN_1"gradients/clip_by_value_grad/zeros*
T0
¦
 gradients/clip_by_value_grad/SumSum#gradients/clip_by_value_grad/Select2gradients/clip_by_value_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0

$gradients/clip_by_value_grad/ReshapeReshape gradients/clip_by_value_grad/Sum"gradients/clip_by_value_grad/Shape*
T0*
Tshape0

%gradients/clip_by_value_grad/Select_1Select)gradients/clip_by_value_grad/GreaterEqual"gradients/clip_by_value_grad/zerosgradients/AddN_1*
T0
¬
"gradients/clip_by_value_grad/Sum_1Sum%gradients/clip_by_value_grad/Select_14gradients/clip_by_value_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
	keep_dims( 

&gradients/clip_by_value_grad/Reshape_1Reshape"gradients/clip_by_value_grad/Sum_1$gradients/clip_by_value_grad/Shape_1*
T0*
Tshape0

-gradients/clip_by_value_grad/tuple/group_depsNoOp%^gradients/clip_by_value_grad/Reshape'^gradients/clip_by_value_grad/Reshape_1
Ł
5gradients/clip_by_value_grad/tuple/control_dependencyIdentity$gradients/clip_by_value_grad/Reshape.^gradients/clip_by_value_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/clip_by_value_grad/Reshape
ß
7gradients/clip_by_value_grad/tuple/control_dependency_1Identity&gradients/clip_by_value_grad/Reshape_1.^gradients/clip_by_value_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients/clip_by_value_grad/Reshape_1
U
*gradients/clip_by_value/Minimum_grad/ShapeShapeoutputs*
T0*
out_type0
U
,gradients/clip_by_value/Minimum_grad/Shape_1Const*
valueB *
dtype0

,gradients/clip_by_value/Minimum_grad/Shape_2Shape5gradients/clip_by_value_grad/tuple/control_dependency*
out_type0*
T0
]
0gradients/clip_by_value/Minimum_grad/zeros/ConstConst*
valueB
 *    *
dtype0
­
*gradients/clip_by_value/Minimum_grad/zerosFill,gradients/clip_by_value/Minimum_grad/Shape_20gradients/clip_by_value/Minimum_grad/zeros/Const*

index_type0*
T0
R
.gradients/clip_by_value/Minimum_grad/LessEqual	LessEqualoutputssub*
T0
¶
:gradients/clip_by_value/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgs*gradients/clip_by_value/Minimum_grad/Shape,gradients/clip_by_value/Minimum_grad/Shape_1*
T0
Ń
+gradients/clip_by_value/Minimum_grad/SelectSelect.gradients/clip_by_value/Minimum_grad/LessEqual5gradients/clip_by_value_grad/tuple/control_dependency*gradients/clip_by_value/Minimum_grad/zeros*
T0
¾
(gradients/clip_by_value/Minimum_grad/SumSum+gradients/clip_by_value/Minimum_grad/Select:gradients/clip_by_value/Minimum_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
¤
,gradients/clip_by_value/Minimum_grad/ReshapeReshape(gradients/clip_by_value/Minimum_grad/Sum*gradients/clip_by_value/Minimum_grad/Shape*
T0*
Tshape0
Ó
-gradients/clip_by_value/Minimum_grad/Select_1Select.gradients/clip_by_value/Minimum_grad/LessEqual*gradients/clip_by_value/Minimum_grad/zeros5gradients/clip_by_value_grad/tuple/control_dependency*
T0
Ä
*gradients/clip_by_value/Minimum_grad/Sum_1Sum-gradients/clip_by_value/Minimum_grad/Select_1<gradients/clip_by_value/Minimum_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
	keep_dims( 
Ŗ
.gradients/clip_by_value/Minimum_grad/Reshape_1Reshape*gradients/clip_by_value/Minimum_grad/Sum_1,gradients/clip_by_value/Minimum_grad/Shape_1*
T0*
Tshape0

5gradients/clip_by_value/Minimum_grad/tuple/group_depsNoOp-^gradients/clip_by_value/Minimum_grad/Reshape/^gradients/clip_by_value/Minimum_grad/Reshape_1
ł
=gradients/clip_by_value/Minimum_grad/tuple/control_dependencyIdentity,gradients/clip_by_value/Minimum_grad/Reshape6^gradients/clip_by_value/Minimum_grad/tuple/group_deps*
T0*?
_class5
31loc:@gradients/clip_by_value/Minimum_grad/Reshape
’
?gradients/clip_by_value/Minimum_grad/tuple/control_dependency_1Identity.gradients/clip_by_value/Minimum_grad/Reshape_16^gradients/clip_by_value/Minimum_grad/tuple/group_deps*
T0*A
_class7
53loc:@gradients/clip_by_value/Minimum_grad/Reshape_1

"gradients/outputs_grad/SigmoidGradSigmoidGradoutputs=gradients/clip_by_value/Minimum_grad/tuple/control_dependency*
T0
~
+gradients/dense_20/BiasAdd_grad/BiasAddGradBiasAddGrad"gradients/outputs_grad/SigmoidGrad*
T0*
data_formatNHWC

0gradients/dense_20/BiasAdd_grad/tuple/group_depsNoOp,^gradients/dense_20/BiasAdd_grad/BiasAddGrad#^gradients/outputs_grad/SigmoidGrad
Ū
8gradients/dense_20/BiasAdd_grad/tuple/control_dependencyIdentity"gradients/outputs_grad/SigmoidGrad1^gradients/dense_20/BiasAdd_grad/tuple/group_deps*
T0*5
_class+
)'loc:@gradients/outputs_grad/SigmoidGrad
ļ
:gradients/dense_20/BiasAdd_grad/tuple/control_dependency_1Identity+gradients/dense_20/BiasAdd_grad/BiasAddGrad1^gradients/dense_20/BiasAdd_grad/tuple/group_deps*
T0*>
_class4
20loc:@gradients/dense_20/BiasAdd_grad/BiasAddGrad
®
%gradients/dense_20/MatMul_grad/MatMulMatMul8gradients/dense_20/BiasAdd_grad/tuple/control_dependencydense_20/kernel/read*
transpose_a( *
transpose_b(*
T0
®
'gradients/dense_20/MatMul_grad/MatMul_1MatMulactivation_10/Relu8gradients/dense_20/BiasAdd_grad/tuple/control_dependency*
transpose_a(*
transpose_b( *
T0

/gradients/dense_20/MatMul_grad/tuple/group_depsNoOp&^gradients/dense_20/MatMul_grad/MatMul(^gradients/dense_20/MatMul_grad/MatMul_1
ß
7gradients/dense_20/MatMul_grad/tuple/control_dependencyIdentity%gradients/dense_20/MatMul_grad/MatMul0^gradients/dense_20/MatMul_grad/tuple/group_deps*
T0*8
_class.
,*loc:@gradients/dense_20/MatMul_grad/MatMul
å
9gradients/dense_20/MatMul_grad/tuple/control_dependency_1Identity'gradients/dense_20/MatMul_grad/MatMul_10^gradients/dense_20/MatMul_grad/tuple/group_deps*
T0*:
_class0
.,loc:@gradients/dense_20/MatMul_grad/MatMul_1

*gradients/activation_10/Relu_grad/ReluGradReluGrad7gradients/dense_20/MatMul_grad/tuple/control_dependencyactivation_10/Relu*
T0
U
$gradients/dropout_2/mul_1_grad/ShapeShapedropout_2/mul*
T0*
out_type0
X
&gradients/dropout_2/mul_1_grad/Shape_1Shapedropout_2/Cast*
T0*
out_type0
¤
4gradients/dropout_2/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgs$gradients/dropout_2/mul_1_grad/Shape&gradients/dropout_2/mul_1_grad/Shape_1*
T0
n
"gradients/dropout_2/mul_1_grad/MulMul*gradients/activation_10/Relu_grad/ReluGraddropout_2/Cast*
T0
©
"gradients/dropout_2/mul_1_grad/SumSum"gradients/dropout_2/mul_1_grad/Mul4gradients/dropout_2/mul_1_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0

&gradients/dropout_2/mul_1_grad/ReshapeReshape"gradients/dropout_2/mul_1_grad/Sum$gradients/dropout_2/mul_1_grad/Shape*
Tshape0*
T0
o
$gradients/dropout_2/mul_1_grad/Mul_1Muldropout_2/mul*gradients/activation_10/Relu_grad/ReluGrad*
T0
Æ
$gradients/dropout_2/mul_1_grad/Sum_1Sum$gradients/dropout_2/mul_1_grad/Mul_16gradients/dropout_2/mul_1_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0

(gradients/dropout_2/mul_1_grad/Reshape_1Reshape$gradients/dropout_2/mul_1_grad/Sum_1&gradients/dropout_2/mul_1_grad/Shape_1*
T0*
Tshape0

/gradients/dropout_2/mul_1_grad/tuple/group_depsNoOp'^gradients/dropout_2/mul_1_grad/Reshape)^gradients/dropout_2/mul_1_grad/Reshape_1
į
7gradients/dropout_2/mul_1_grad/tuple/control_dependencyIdentity&gradients/dropout_2/mul_1_grad/Reshape0^gradients/dropout_2/mul_1_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients/dropout_2/mul_1_grad/Reshape
ē
9gradients/dropout_2/mul_1_grad/tuple/control_dependency_1Identity(gradients/dropout_2/mul_1_grad/Reshape_10^gradients/dropout_2/mul_1_grad/tuple/group_deps*
T0*;
_class1
/-loc:@gradients/dropout_2/mul_1_grad/Reshape_1
K
"gradients/dropout_2/mul_grad/ShapeShapemul_1*
T0*
out_type0
Y
$gradients/dropout_2/mul_grad/Shape_1Shapedropout_2/truediv*
T0*
out_type0

2gradients/dropout_2/mul_grad/BroadcastGradientArgsBroadcastGradientArgs"gradients/dropout_2/mul_grad/Shape$gradients/dropout_2/mul_grad/Shape_1*
T0
|
 gradients/dropout_2/mul_grad/MulMul7gradients/dropout_2/mul_1_grad/tuple/control_dependencydropout_2/truediv*
T0
£
 gradients/dropout_2/mul_grad/SumSum gradients/dropout_2/mul_grad/Mul2gradients/dropout_2/mul_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0

$gradients/dropout_2/mul_grad/ReshapeReshape gradients/dropout_2/mul_grad/Sum"gradients/dropout_2/mul_grad/Shape*
T0*
Tshape0
r
"gradients/dropout_2/mul_grad/Mul_1Mulmul_17gradients/dropout_2/mul_1_grad/tuple/control_dependency*
T0
©
"gradients/dropout_2/mul_grad/Sum_1Sum"gradients/dropout_2/mul_grad/Mul_14gradients/dropout_2/mul_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
	keep_dims( 

&gradients/dropout_2/mul_grad/Reshape_1Reshape"gradients/dropout_2/mul_grad/Sum_1$gradients/dropout_2/mul_grad/Shape_1*
T0*
Tshape0

-gradients/dropout_2/mul_grad/tuple/group_depsNoOp%^gradients/dropout_2/mul_grad/Reshape'^gradients/dropout_2/mul_grad/Reshape_1
Ł
5gradients/dropout_2/mul_grad/tuple/control_dependencyIdentity$gradients/dropout_2/mul_grad/Reshape.^gradients/dropout_2/mul_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/dropout_2/mul_grad/Reshape
ß
7gradients/dropout_2/mul_grad/tuple/control_dependency_1Identity&gradients/dropout_2/mul_grad/Reshape_1.^gradients/dropout_2/mul_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients/dropout_2/mul_grad/Reshape_1
N
gradients/mul_1_grad/ShapeShapedense_19/BiasAdd*
T0*
out_type0
G
gradients/mul_1_grad/Shape_1Shapemul_1/y*
T0*
out_type0

*gradients/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/mul_1_grad/Shapegradients/mul_1_grad/Shape_1*
T0
h
gradients/mul_1_grad/MulMul5gradients/dropout_2/mul_grad/tuple/control_dependencymul_1/y*
T0

gradients/mul_1_grad/SumSumgradients/mul_1_grad/Mul*gradients/mul_1_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
t
gradients/mul_1_grad/ReshapeReshapegradients/mul_1_grad/Sumgradients/mul_1_grad/Shape*
Tshape0*
T0
s
gradients/mul_1_grad/Mul_1Muldense_19/BiasAdd5gradients/dropout_2/mul_grad/tuple/control_dependency*
T0

gradients/mul_1_grad/Sum_1Sumgradients/mul_1_grad/Mul_1,gradients/mul_1_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
z
gradients/mul_1_grad/Reshape_1Reshapegradients/mul_1_grad/Sum_1gradients/mul_1_grad/Shape_1*
T0*
Tshape0
m
%gradients/mul_1_grad/tuple/group_depsNoOp^gradients/mul_1_grad/Reshape^gradients/mul_1_grad/Reshape_1
¹
-gradients/mul_1_grad/tuple/control_dependencyIdentitygradients/mul_1_grad/Reshape&^gradients/mul_1_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/mul_1_grad/Reshape
æ
/gradients/mul_1_grad/tuple/control_dependency_1Identitygradients/mul_1_grad/Reshape_1&^gradients/mul_1_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/mul_1_grad/Reshape_1

+gradients/dense_19/BiasAdd_grad/BiasAddGradBiasAddGrad-gradients/mul_1_grad/tuple/control_dependency*
T0*
data_formatNHWC

0gradients/dense_19/BiasAdd_grad/tuple/group_depsNoOp,^gradients/dense_19/BiasAdd_grad/BiasAddGrad.^gradients/mul_1_grad/tuple/control_dependency
ą
8gradients/dense_19/BiasAdd_grad/tuple/control_dependencyIdentity-gradients/mul_1_grad/tuple/control_dependency1^gradients/dense_19/BiasAdd_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/mul_1_grad/Reshape
ļ
:gradients/dense_19/BiasAdd_grad/tuple/control_dependency_1Identity+gradients/dense_19/BiasAdd_grad/BiasAddGrad1^gradients/dense_19/BiasAdd_grad/tuple/group_deps*>
_class4
20loc:@gradients/dense_19/BiasAdd_grad/BiasAddGrad*
T0
®
%gradients/dense_19/MatMul_grad/MatMulMatMul8gradients/dense_19/BiasAdd_grad/tuple/control_dependencydense_19/kernel/read*
transpose_a( *
transpose_b(*
T0
·
'gradients/dense_19/MatMul_grad/MatMul_1MatMulglobal_max_pooling1d_10/Max8gradients/dense_19/BiasAdd_grad/tuple/control_dependency*
T0*
transpose_a(*
transpose_b( 

/gradients/dense_19/MatMul_grad/tuple/group_depsNoOp&^gradients/dense_19/MatMul_grad/MatMul(^gradients/dense_19/MatMul_grad/MatMul_1
ß
7gradients/dense_19/MatMul_grad/tuple/control_dependencyIdentity%gradients/dense_19/MatMul_grad/MatMul0^gradients/dense_19/MatMul_grad/tuple/group_deps*
T0*8
_class.
,*loc:@gradients/dense_19/MatMul_grad/MatMul
å
9gradients/dense_19/MatMul_grad/tuple/control_dependency_1Identity'gradients/dense_19/MatMul_grad/MatMul_10^gradients/dense_19/MatMul_grad/tuple/group_deps*:
_class0
.,loc:@gradients/dense_19/MatMul_grad/MatMul_1*
T0
b
0gradients/global_max_pooling1d_10/Max_grad/ShapeShapeconv1d_10/Relu*
out_type0*
T0
Y
/gradients/global_max_pooling1d_10/Max_grad/SizeConst*
value	B :*
dtype0
 
.gradients/global_max_pooling1d_10/Max_grad/addAddV2-global_max_pooling1d_10/Max/reduction_indices/gradients/global_max_pooling1d_10/Max_grad/Size*
T0
¤
.gradients/global_max_pooling1d_10/Max_grad/modFloorMod.gradients/global_max_pooling1d_10/Max_grad/add/gradients/global_max_pooling1d_10/Max_grad/Size*
T0
[
2gradients/global_max_pooling1d_10/Max_grad/Shape_1Const*
valueB *
dtype0
`
6gradients/global_max_pooling1d_10/Max_grad/range/startConst*
value	B : *
dtype0
`
6gradients/global_max_pooling1d_10/Max_grad/range/deltaConst*
value	B :*
dtype0
ę
0gradients/global_max_pooling1d_10/Max_grad/rangeRange6gradients/global_max_pooling1d_10/Max_grad/range/start/gradients/global_max_pooling1d_10/Max_grad/Size6gradients/global_max_pooling1d_10/Max_grad/range/delta*

Tidx0
_
5gradients/global_max_pooling1d_10/Max_grad/Fill/valueConst*
value	B :*
dtype0
½
/gradients/global_max_pooling1d_10/Max_grad/FillFill2gradients/global_max_pooling1d_10/Max_grad/Shape_15gradients/global_max_pooling1d_10/Max_grad/Fill/value*
T0*

index_type0
 
8gradients/global_max_pooling1d_10/Max_grad/DynamicStitchDynamicStitch0gradients/global_max_pooling1d_10/Max_grad/range.gradients/global_max_pooling1d_10/Max_grad/mod0gradients/global_max_pooling1d_10/Max_grad/Shape/gradients/global_max_pooling1d_10/Max_grad/Fill*
N*
T0
«
2gradients/global_max_pooling1d_10/Max_grad/ReshapeReshapeglobal_max_pooling1d_10/Max8gradients/global_max_pooling1d_10/Max_grad/DynamicStitch*
T0*
Tshape0
É
4gradients/global_max_pooling1d_10/Max_grad/Reshape_1Reshape7gradients/dense_19/MatMul_grad/tuple/control_dependency8gradients/global_max_pooling1d_10/Max_grad/DynamicStitch*
T0*
Tshape0
¦
0gradients/global_max_pooling1d_10/Max_grad/EqualEqual2gradients/global_max_pooling1d_10/Max_grad/Reshapeconv1d_10/Relu*
T0*
incompatible_shape_error(

/gradients/global_max_pooling1d_10/Max_grad/CastCast0gradients/global_max_pooling1d_10/Max_grad/Equal*

SrcT0
*
Truncate( *

DstT0
»
.gradients/global_max_pooling1d_10/Max_grad/SumSum/gradients/global_max_pooling1d_10/Max_grad/Cast-global_max_pooling1d_10/Max/reduction_indices*

Tidx0*
	keep_dims( *
T0
Ą
4gradients/global_max_pooling1d_10/Max_grad/Reshape_2Reshape.gradients/global_max_pooling1d_10/Max_grad/Sum8gradients/global_max_pooling1d_10/Max_grad/DynamicStitch*
T0*
Tshape0
­
2gradients/global_max_pooling1d_10/Max_grad/truedivRealDiv/gradients/global_max_pooling1d_10/Max_grad/Cast4gradients/global_max_pooling1d_10/Max_grad/Reshape_2*
T0
Ø
.gradients/global_max_pooling1d_10/Max_grad/mulMul2gradients/global_max_pooling1d_10/Max_grad/truediv4gradients/global_max_pooling1d_10/Max_grad/Reshape_1*
T0
{
&gradients/conv1d_10/Relu_grad/ReluGradReluGrad.gradients/global_max_pooling1d_10/Max_grad/mulconv1d_10/Relu*
T0
c
"gradients/conv1d_10/add_grad/ShapeShapeconv1d_10/convolution/Squeeze*
T0*
out_type0
Y
$gradients/conv1d_10/add_grad/Shape_1Shapeconv1d_10/Reshape*
T0*
out_type0

2gradients/conv1d_10/add_grad/BroadcastGradientArgsBroadcastGradientArgs"gradients/conv1d_10/add_grad/Shape$gradients/conv1d_10/add_grad/Shape_1*
T0
©
 gradients/conv1d_10/add_grad/SumSum&gradients/conv1d_10/Relu_grad/ReluGrad2gradients/conv1d_10/add_grad/BroadcastGradientArgs*
T0*

Tidx0*
	keep_dims( 

$gradients/conv1d_10/add_grad/ReshapeReshape gradients/conv1d_10/add_grad/Sum"gradients/conv1d_10/add_grad/Shape*
T0*
Tshape0
­
"gradients/conv1d_10/add_grad/Sum_1Sum&gradients/conv1d_10/Relu_grad/ReluGrad4gradients/conv1d_10/add_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
	keep_dims( 

&gradients/conv1d_10/add_grad/Reshape_1Reshape"gradients/conv1d_10/add_grad/Sum_1$gradients/conv1d_10/add_grad/Shape_1*
T0*
Tshape0

-gradients/conv1d_10/add_grad/tuple/group_depsNoOp%^gradients/conv1d_10/add_grad/Reshape'^gradients/conv1d_10/add_grad/Reshape_1
Ł
5gradients/conv1d_10/add_grad/tuple/control_dependencyIdentity$gradients/conv1d_10/add_grad/Reshape.^gradients/conv1d_10/add_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/conv1d_10/add_grad/Reshape
ß
7gradients/conv1d_10/add_grad/tuple/control_dependency_1Identity&gradients/conv1d_10/add_grad/Reshape_1.^gradients/conv1d_10/add_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients/conv1d_10/add_grad/Reshape_1
k
2gradients/conv1d_10/convolution/Squeeze_grad/ShapeShapeconv1d_10/convolution*
T0*
out_type0
Į
4gradients/conv1d_10/convolution/Squeeze_grad/ReshapeReshape5gradients/conv1d_10/add_grad/tuple/control_dependency2gradients/conv1d_10/convolution/Squeeze_grad/Shape*
T0*
Tshape0
T
&gradients/conv1d_10/Reshape_grad/ShapeConst*
valueB:*
dtype0
«
(gradients/conv1d_10/Reshape_grad/ReshapeReshape7gradients/conv1d_10/add_grad/tuple/control_dependency_1&gradients/conv1d_10/Reshape_grad/Shape*
T0*
Tshape0

+gradients/conv1d_10/convolution_grad/ShapeNShapeN conv1d_10/convolution/ExpandDims"conv1d_10/convolution/ExpandDims_1*
T0*
out_type0*
N
ē
8gradients/conv1d_10/convolution_grad/Conv2DBackpropInputConv2DBackpropInput+gradients/conv1d_10/convolution_grad/ShapeN"conv1d_10/convolution/ExpandDims_14gradients/conv1d_10/convolution/Squeeze_grad/Reshape*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
explicit_paddings
 *
paddingVALID
é
9gradients/conv1d_10/convolution_grad/Conv2DBackpropFilterConv2DBackpropFilter conv1d_10/convolution/ExpandDims-gradients/conv1d_10/convolution_grad/ShapeN:14gradients/conv1d_10/convolution/Squeeze_grad/Reshape*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
explicit_paddings
 *
paddingVALID
“
5gradients/conv1d_10/convolution_grad/tuple/group_depsNoOp:^gradients/conv1d_10/convolution_grad/Conv2DBackpropFilter9^gradients/conv1d_10/convolution_grad/Conv2DBackpropInput

=gradients/conv1d_10/convolution_grad/tuple/control_dependencyIdentity8gradients/conv1d_10/convolution_grad/Conv2DBackpropInput6^gradients/conv1d_10/convolution_grad/tuple/group_deps*K
_classA
?=loc:@gradients/conv1d_10/convolution_grad/Conv2DBackpropInput*
T0

?gradients/conv1d_10/convolution_grad/tuple/control_dependency_1Identity9gradients/conv1d_10/convolution_grad/Conv2DBackpropFilter6^gradients/conv1d_10/convolution_grad/tuple/group_deps*
T0*L
_classB
@>loc:@gradients/conv1d_10/convolution_grad/Conv2DBackpropFilter
h
5gradients/conv1d_10/convolution/ExpandDims_grad/ShapeShapedropout_1/mul_1*
T0*
out_type0
Ļ
7gradients/conv1d_10/convolution/ExpandDims_grad/ReshapeReshape=gradients/conv1d_10/convolution_grad/tuple/control_dependency5gradients/conv1d_10/convolution/ExpandDims_grad/Shape*
T0*
Tshape0
p
7gradients/conv1d_10/convolution/ExpandDims_1_grad/ShapeConst*!
valueB"         *
dtype0
Õ
9gradients/conv1d_10/convolution/ExpandDims_1_grad/ReshapeReshape?gradients/conv1d_10/convolution_grad/tuple/control_dependency_17gradients/conv1d_10/convolution/ExpandDims_1_grad/Shape*
T0*
Tshape0
U
$gradients/dropout_1/mul_1_grad/ShapeShapedropout_1/mul*
T0*
out_type0
X
&gradients/dropout_1/mul_1_grad/Shape_1Shapedropout_1/Cast*
T0*
out_type0
¤
4gradients/dropout_1/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgs$gradients/dropout_1/mul_1_grad/Shape&gradients/dropout_1/mul_1_grad/Shape_1*
T0
{
"gradients/dropout_1/mul_1_grad/MulMul7gradients/conv1d_10/convolution/ExpandDims_grad/Reshapedropout_1/Cast*
T0
©
"gradients/dropout_1/mul_1_grad/SumSum"gradients/dropout_1/mul_1_grad/Mul4gradients/dropout_1/mul_1_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0

&gradients/dropout_1/mul_1_grad/ReshapeReshape"gradients/dropout_1/mul_1_grad/Sum$gradients/dropout_1/mul_1_grad/Shape*
T0*
Tshape0
|
$gradients/dropout_1/mul_1_grad/Mul_1Muldropout_1/mul7gradients/conv1d_10/convolution/ExpandDims_grad/Reshape*
T0
Æ
$gradients/dropout_1/mul_1_grad/Sum_1Sum$gradients/dropout_1/mul_1_grad/Mul_16gradients/dropout_1/mul_1_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0

(gradients/dropout_1/mul_1_grad/Reshape_1Reshape$gradients/dropout_1/mul_1_grad/Sum_1&gradients/dropout_1/mul_1_grad/Shape_1*
T0*
Tshape0

/gradients/dropout_1/mul_1_grad/tuple/group_depsNoOp'^gradients/dropout_1/mul_1_grad/Reshape)^gradients/dropout_1/mul_1_grad/Reshape_1
į
7gradients/dropout_1/mul_1_grad/tuple/control_dependencyIdentity&gradients/dropout_1/mul_1_grad/Reshape0^gradients/dropout_1/mul_1_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients/dropout_1/mul_1_grad/Reshape
ē
9gradients/dropout_1/mul_1_grad/tuple/control_dependency_1Identity(gradients/dropout_1/mul_1_grad/Reshape_10^gradients/dropout_1/mul_1_grad/tuple/group_deps*
T0*;
_class1
/-loc:@gradients/dropout_1/mul_1_grad/Reshape_1
I
"gradients/dropout_1/mul_grad/ShapeShapemul*
T0*
out_type0
Y
$gradients/dropout_1/mul_grad/Shape_1Shapedropout_1/truediv*
T0*
out_type0

2gradients/dropout_1/mul_grad/BroadcastGradientArgsBroadcastGradientArgs"gradients/dropout_1/mul_grad/Shape$gradients/dropout_1/mul_grad/Shape_1*
T0
|
 gradients/dropout_1/mul_grad/MulMul7gradients/dropout_1/mul_1_grad/tuple/control_dependencydropout_1/truediv*
T0
£
 gradients/dropout_1/mul_grad/SumSum gradients/dropout_1/mul_grad/Mul2gradients/dropout_1/mul_grad/BroadcastGradientArgs*
T0*

Tidx0*
	keep_dims( 

$gradients/dropout_1/mul_grad/ReshapeReshape gradients/dropout_1/mul_grad/Sum"gradients/dropout_1/mul_grad/Shape*
T0*
Tshape0
p
"gradients/dropout_1/mul_grad/Mul_1Mulmul7gradients/dropout_1/mul_1_grad/tuple/control_dependency*
T0
©
"gradients/dropout_1/mul_grad/Sum_1Sum"gradients/dropout_1/mul_grad/Mul_14gradients/dropout_1/mul_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
	keep_dims( 

&gradients/dropout_1/mul_grad/Reshape_1Reshape"gradients/dropout_1/mul_grad/Sum_1$gradients/dropout_1/mul_grad/Shape_1*
T0*
Tshape0

-gradients/dropout_1/mul_grad/tuple/group_depsNoOp%^gradients/dropout_1/mul_grad/Reshape'^gradients/dropout_1/mul_grad/Reshape_1
Ł
5gradients/dropout_1/mul_grad/tuple/control_dependencyIdentity$gradients/dropout_1/mul_grad/Reshape.^gradients/dropout_1/mul_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/dropout_1/mul_grad/Reshape
ß
7gradients/dropout_1/mul_grad/tuple/control_dependency_1Identity&gradients/dropout_1/mul_grad/Reshape_1.^gradients/dropout_1/mul_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients/dropout_1/mul_grad/Reshape_1
b
gradients/mul_grad/ShapeShape&embedding_10/embedding_lookup/Identity*
out_type0*
T0
C
gradients/mul_grad/Shape_1Shapemul/y*
T0*
out_type0

(gradients/mul_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/mul_grad/Shapegradients/mul_grad/Shape_1*
T0
d
gradients/mul_grad/MulMul5gradients/dropout_1/mul_grad/tuple/control_dependencymul/y*
T0

gradients/mul_grad/SumSumgradients/mul_grad/Mul(gradients/mul_grad/BroadcastGradientArgs*
T0*

Tidx0*
	keep_dims( 
n
gradients/mul_grad/ReshapeReshapegradients/mul_grad/Sumgradients/mul_grad/Shape*
T0*
Tshape0

gradients/mul_grad/Mul_1Mul&embedding_10/embedding_lookup/Identity5gradients/dropout_1/mul_grad/tuple/control_dependency*
T0

gradients/mul_grad/Sum_1Sumgradients/mul_grad/Mul_1*gradients/mul_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
t
gradients/mul_grad/Reshape_1Reshapegradients/mul_grad/Sum_1gradients/mul_grad/Shape_1*
T0*
Tshape0
g
#gradients/mul_grad/tuple/group_depsNoOp^gradients/mul_grad/Reshape^gradients/mul_grad/Reshape_1
±
+gradients/mul_grad/tuple/control_dependencyIdentitygradients/mul_grad/Reshape$^gradients/mul_grad/tuple/group_deps*-
_class#
!loc:@gradients/mul_grad/Reshape*
T0
·
-gradients/mul_grad/tuple/control_dependency_1Identitygradients/mul_grad/Reshape_1$^gradients/mul_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/mul_grad/Reshape_1

2gradients/embedding_10/embedding_lookup_grad/ShapeConst*
dtype0	**
_class 
loc:@embedding_10/embeddings*%
valueB	"Č              
Į
1gradients/embedding_10/embedding_lookup_grad/CastCast2gradients/embedding_10/embedding_lookup_grad/Shape*

SrcT0	**
_class 
loc:@embedding_10/embeddings*
Truncate( *

DstT0
e
1gradients/embedding_10/embedding_lookup_grad/SizeSizeembedding_10/Cast*
T0*
out_type0
e
;gradients/embedding_10/embedding_lookup_grad/ExpandDims/dimConst*
value	B : *
dtype0
Ź
7gradients/embedding_10/embedding_lookup_grad/ExpandDims
ExpandDims1gradients/embedding_10/embedding_lookup_grad/Size;gradients/embedding_10/embedding_lookup_grad/ExpandDims/dim*

Tdim0*
T0
n
@gradients/embedding_10/embedding_lookup_grad/strided_slice/stackConst*
valueB:*
dtype0
p
Bgradients/embedding_10/embedding_lookup_grad/strided_slice/stack_1Const*
valueB: *
dtype0
p
Bgradients/embedding_10/embedding_lookup_grad/strided_slice/stack_2Const*
dtype0*
valueB:
Į
:gradients/embedding_10/embedding_lookup_grad/strided_sliceStridedSlice1gradients/embedding_10/embedding_lookup_grad/Cast@gradients/embedding_10/embedding_lookup_grad/strided_slice/stackBgradients/embedding_10/embedding_lookup_grad/strided_slice/stack_1Bgradients/embedding_10/embedding_lookup_grad/strided_slice/stack_2*
T0*
Index0*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask
b
8gradients/embedding_10/embedding_lookup_grad/concat/axisConst*
value	B : *
dtype0

3gradients/embedding_10/embedding_lookup_grad/concatConcatV27gradients/embedding_10/embedding_lookup_grad/ExpandDims:gradients/embedding_10/embedding_lookup_grad/strided_slice8gradients/embedding_10/embedding_lookup_grad/concat/axis*
T0*
N*

Tidx0
ø
4gradients/embedding_10/embedding_lookup_grad/ReshapeReshape+gradients/mul_grad/tuple/control_dependency3gradients/embedding_10/embedding_lookup_grad/concat*
T0*
Tshape0
¤
6gradients/embedding_10/embedding_lookup_grad/Reshape_1Reshapeembedding_10/Cast7gradients/embedding_10/embedding_lookup_grad/ExpandDims*
T0*
Tshape0
i
beta1_power/initial_valueConst*!
_class
loc:@conv1d_10/bias*
valueB
 *fff?*
dtype0
z
beta1_power
VariableV2*
shared_name *!
_class
loc:@conv1d_10/bias*
dtype0*
	container *
shape: 

beta1_power/AssignAssignbeta1_powerbeta1_power/initial_value*
use_locking(*
T0*!
_class
loc:@conv1d_10/bias*
validate_shape(
U
beta1_power/readIdentitybeta1_power*
T0*!
_class
loc:@conv1d_10/bias
i
beta2_power/initial_valueConst*
dtype0*!
_class
loc:@conv1d_10/bias*
valueB
 *w¾?
z
beta2_power
VariableV2*
shape: *
shared_name *!
_class
loc:@conv1d_10/bias*
dtype0*
	container 

beta2_power/AssignAssignbeta2_powerbeta2_power/initial_value*
use_locking(*
T0*!
_class
loc:@conv1d_10/bias*
validate_shape(
U
beta2_power/readIdentitybeta2_power*
T0*!
_class
loc:@conv1d_10/bias
¤
Cembedding_10/embeddings/optimizer/Initializer/zeros/shape_as_tensorConst*
valueB"Č      **
_class 
loc:@embedding_10/embeddings*
dtype0

9embedding_10/embeddings/optimizer/Initializer/zeros/ConstConst*
valueB
 *    **
_class 
loc:@embedding_10/embeddings*
dtype0

3embedding_10/embeddings/optimizer/Initializer/zerosFillCembedding_10/embeddings/optimizer/Initializer/zeros/shape_as_tensor9embedding_10/embeddings/optimizer/Initializer/zeros/Const*
T0*

index_type0**
_class 
loc:@embedding_10/embeddings
£
!embedding_10/embeddings/optimizer
VariableV2*
	container *
shape:
Č*
shared_name **
_class 
loc:@embedding_10/embeddings*
dtype0
č
(embedding_10/embeddings/optimizer/AssignAssign!embedding_10/embeddings/optimizer3embedding_10/embeddings/optimizer/Initializer/zeros*
use_locking(*
T0**
_class 
loc:@embedding_10/embeddings*
validate_shape(

&embedding_10/embeddings/optimizer/readIdentity!embedding_10/embeddings/optimizer*
T0**
_class 
loc:@embedding_10/embeddings
¦
Eembedding_10/embeddings/optimizer_1/Initializer/zeros/shape_as_tensorConst*
valueB"Č      **
_class 
loc:@embedding_10/embeddings*
dtype0

;embedding_10/embeddings/optimizer_1/Initializer/zeros/ConstConst*
valueB
 *    **
_class 
loc:@embedding_10/embeddings*
dtype0

5embedding_10/embeddings/optimizer_1/Initializer/zerosFillEembedding_10/embeddings/optimizer_1/Initializer/zeros/shape_as_tensor;embedding_10/embeddings/optimizer_1/Initializer/zeros/Const*
T0*

index_type0**
_class 
loc:@embedding_10/embeddings
„
#embedding_10/embeddings/optimizer_1
VariableV2**
_class 
loc:@embedding_10/embeddings*
dtype0*
	container *
shape:
Č*
shared_name 
ī
*embedding_10/embeddings/optimizer_1/AssignAssign#embedding_10/embeddings/optimizer_15embedding_10/embeddings/optimizer_1/Initializer/zeros**
_class 
loc:@embedding_10/embeddings*
validate_shape(*
use_locking(*
T0

(embedding_10/embeddings/optimizer_1/readIdentity#embedding_10/embeddings/optimizer_1*
T0**
_class 
loc:@embedding_10/embeddings

<conv1d_10/kernel/optimizer/Initializer/zeros/shape_as_tensorConst*!
valueB"         *#
_class
loc:@conv1d_10/kernel*
dtype0

2conv1d_10/kernel/optimizer/Initializer/zeros/ConstConst*
valueB
 *    *#
_class
loc:@conv1d_10/kernel*
dtype0
ę
,conv1d_10/kernel/optimizer/Initializer/zerosFill<conv1d_10/kernel/optimizer/Initializer/zeros/shape_as_tensor2conv1d_10/kernel/optimizer/Initializer/zeros/Const*
T0*

index_type0*#
_class
loc:@conv1d_10/kernel

conv1d_10/kernel/optimizer
VariableV2*
shape:*
shared_name *#
_class
loc:@conv1d_10/kernel*
dtype0*
	container 
Ģ
!conv1d_10/kernel/optimizer/AssignAssignconv1d_10/kernel/optimizer,conv1d_10/kernel/optimizer/Initializer/zeros*
use_locking(*
T0*#
_class
loc:@conv1d_10/kernel*
validate_shape(
u
conv1d_10/kernel/optimizer/readIdentityconv1d_10/kernel/optimizer*
T0*#
_class
loc:@conv1d_10/kernel

>conv1d_10/kernel/optimizer_1/Initializer/zeros/shape_as_tensorConst*!
valueB"         *#
_class
loc:@conv1d_10/kernel*
dtype0

4conv1d_10/kernel/optimizer_1/Initializer/zeros/ConstConst*
valueB
 *    *#
_class
loc:@conv1d_10/kernel*
dtype0
ģ
.conv1d_10/kernel/optimizer_1/Initializer/zerosFill>conv1d_10/kernel/optimizer_1/Initializer/zeros/shape_as_tensor4conv1d_10/kernel/optimizer_1/Initializer/zeros/Const*
T0*

index_type0*#
_class
loc:@conv1d_10/kernel

conv1d_10/kernel/optimizer_1
VariableV2*
shared_name *#
_class
loc:@conv1d_10/kernel*
dtype0*
	container *
shape:
Ņ
#conv1d_10/kernel/optimizer_1/AssignAssignconv1d_10/kernel/optimizer_1.conv1d_10/kernel/optimizer_1/Initializer/zeros*
use_locking(*
T0*#
_class
loc:@conv1d_10/kernel*
validate_shape(
y
!conv1d_10/kernel/optimizer_1/readIdentityconv1d_10/kernel/optimizer_1*
T0*#
_class
loc:@conv1d_10/kernel
~
*conv1d_10/bias/optimizer/Initializer/zerosConst*
dtype0*
valueB*    *!
_class
loc:@conv1d_10/bias

conv1d_10/bias/optimizer
VariableV2*
shared_name *!
_class
loc:@conv1d_10/bias*
dtype0*
	container *
shape:
Ä
conv1d_10/bias/optimizer/AssignAssignconv1d_10/bias/optimizer*conv1d_10/bias/optimizer/Initializer/zeros*
T0*!
_class
loc:@conv1d_10/bias*
validate_shape(*
use_locking(
o
conv1d_10/bias/optimizer/readIdentityconv1d_10/bias/optimizer*
T0*!
_class
loc:@conv1d_10/bias

,conv1d_10/bias/optimizer_1/Initializer/zerosConst*
valueB*    *!
_class
loc:@conv1d_10/bias*
dtype0

conv1d_10/bias/optimizer_1
VariableV2*
shape:*
shared_name *!
_class
loc:@conv1d_10/bias*
dtype0*
	container 
Ź
!conv1d_10/bias/optimizer_1/AssignAssignconv1d_10/bias/optimizer_1,conv1d_10/bias/optimizer_1/Initializer/zeros*
use_locking(*
T0*!
_class
loc:@conv1d_10/bias*
validate_shape(
s
conv1d_10/bias/optimizer_1/readIdentityconv1d_10/bias/optimizer_1*
T0*!
_class
loc:@conv1d_10/bias

;dense_19/kernel/optimizer/Initializer/zeros/shape_as_tensorConst*
dtype0*
valueB"   ś   *"
_class
loc:@dense_19/kernel

1dense_19/kernel/optimizer/Initializer/zeros/ConstConst*
valueB
 *    *"
_class
loc:@dense_19/kernel*
dtype0
ā
+dense_19/kernel/optimizer/Initializer/zerosFill;dense_19/kernel/optimizer/Initializer/zeros/shape_as_tensor1dense_19/kernel/optimizer/Initializer/zeros/Const*
T0*

index_type0*"
_class
loc:@dense_19/kernel

dense_19/kernel/optimizer
VariableV2*"
_class
loc:@dense_19/kernel*
dtype0*
	container *
shape:	ś*
shared_name 
Č
 dense_19/kernel/optimizer/AssignAssigndense_19/kernel/optimizer+dense_19/kernel/optimizer/Initializer/zeros*
use_locking(*
T0*"
_class
loc:@dense_19/kernel*
validate_shape(
r
dense_19/kernel/optimizer/readIdentitydense_19/kernel/optimizer*"
_class
loc:@dense_19/kernel*
T0

=dense_19/kernel/optimizer_1/Initializer/zeros/shape_as_tensorConst*
valueB"   ś   *"
_class
loc:@dense_19/kernel*
dtype0

3dense_19/kernel/optimizer_1/Initializer/zeros/ConstConst*
valueB
 *    *"
_class
loc:@dense_19/kernel*
dtype0
č
-dense_19/kernel/optimizer_1/Initializer/zerosFill=dense_19/kernel/optimizer_1/Initializer/zeros/shape_as_tensor3dense_19/kernel/optimizer_1/Initializer/zeros/Const*
T0*

index_type0*"
_class
loc:@dense_19/kernel

dense_19/kernel/optimizer_1
VariableV2*"
_class
loc:@dense_19/kernel*
dtype0*
	container *
shape:	ś*
shared_name 
Ī
"dense_19/kernel/optimizer_1/AssignAssigndense_19/kernel/optimizer_1-dense_19/kernel/optimizer_1/Initializer/zeros*
use_locking(*
T0*"
_class
loc:@dense_19/kernel*
validate_shape(
v
 dense_19/kernel/optimizer_1/readIdentitydense_19/kernel/optimizer_1*"
_class
loc:@dense_19/kernel*
T0
}
)dense_19/bias/optimizer/Initializer/zerosConst*
valueBś*    * 
_class
loc:@dense_19/bias*
dtype0

dense_19/bias/optimizer
VariableV2*
shape:ś*
shared_name * 
_class
loc:@dense_19/bias*
dtype0*
	container 
Ą
dense_19/bias/optimizer/AssignAssigndense_19/bias/optimizer)dense_19/bias/optimizer/Initializer/zeros*
use_locking(*
T0* 
_class
loc:@dense_19/bias*
validate_shape(
l
dense_19/bias/optimizer/readIdentitydense_19/bias/optimizer*
T0* 
_class
loc:@dense_19/bias

+dense_19/bias/optimizer_1/Initializer/zerosConst*
valueBś*    * 
_class
loc:@dense_19/bias*
dtype0

dense_19/bias/optimizer_1
VariableV2*
shared_name * 
_class
loc:@dense_19/bias*
dtype0*
	container *
shape:ś
Ę
 dense_19/bias/optimizer_1/AssignAssigndense_19/bias/optimizer_1+dense_19/bias/optimizer_1/Initializer/zeros*
use_locking(*
T0* 
_class
loc:@dense_19/bias*
validate_shape(
p
dense_19/bias/optimizer_1/readIdentitydense_19/bias/optimizer_1*
T0* 
_class
loc:@dense_19/bias

+dense_20/kernel/optimizer/Initializer/zerosConst*
valueB	ś*    *"
_class
loc:@dense_20/kernel*
dtype0

dense_20/kernel/optimizer
VariableV2*
shared_name *"
_class
loc:@dense_20/kernel*
dtype0*
	container *
shape:	ś
Č
 dense_20/kernel/optimizer/AssignAssigndense_20/kernel/optimizer+dense_20/kernel/optimizer/Initializer/zeros*
use_locking(*
T0*"
_class
loc:@dense_20/kernel*
validate_shape(
r
dense_20/kernel/optimizer/readIdentitydense_20/kernel/optimizer*
T0*"
_class
loc:@dense_20/kernel

-dense_20/kernel/optimizer_1/Initializer/zerosConst*
dtype0*
valueB	ś*    *"
_class
loc:@dense_20/kernel

dense_20/kernel/optimizer_1
VariableV2*
shared_name *"
_class
loc:@dense_20/kernel*
dtype0*
	container *
shape:	ś
Ī
"dense_20/kernel/optimizer_1/AssignAssigndense_20/kernel/optimizer_1-dense_20/kernel/optimizer_1/Initializer/zeros*
use_locking(*
T0*"
_class
loc:@dense_20/kernel*
validate_shape(
v
 dense_20/kernel/optimizer_1/readIdentitydense_20/kernel/optimizer_1*
T0*"
_class
loc:@dense_20/kernel
|
)dense_20/bias/optimizer/Initializer/zerosConst*
valueB*    * 
_class
loc:@dense_20/bias*
dtype0

dense_20/bias/optimizer
VariableV2*
shared_name * 
_class
loc:@dense_20/bias*
dtype0*
	container *
shape:
Ą
dense_20/bias/optimizer/AssignAssigndense_20/bias/optimizer)dense_20/bias/optimizer/Initializer/zeros*
use_locking(*
T0* 
_class
loc:@dense_20/bias*
validate_shape(
l
dense_20/bias/optimizer/readIdentitydense_20/bias/optimizer*
T0* 
_class
loc:@dense_20/bias
~
+dense_20/bias/optimizer_1/Initializer/zerosConst*
valueB*    * 
_class
loc:@dense_20/bias*
dtype0

dense_20/bias/optimizer_1
VariableV2* 
_class
loc:@dense_20/bias*
dtype0*
	container *
shape:*
shared_name 
Ę
 dense_20/bias/optimizer_1/AssignAssigndense_20/bias/optimizer_1+dense_20/bias/optimizer_1/Initializer/zeros*
use_locking(*
T0* 
_class
loc:@dense_20/bias*
validate_shape(
p
dense_20/bias/optimizer_1/readIdentitydense_20/bias/optimizer_1*
T0* 
_class
loc:@dense_20/bias
<
optimizer/beta1Const*
valueB
 *fff?*
dtype0
<
optimizer/beta2Const*
valueB
 *w¾?*
dtype0
>
optimizer/epsilonConst*
valueB
 *wĢ+2*
dtype0
µ
/optimizer/update_embedding_10/embeddings/UniqueUnique6gradients/embedding_10/embedding_lookup_grad/Reshape_1*
out_idx0*
T0**
_class 
loc:@embedding_10/embeddings
­
.optimizer/update_embedding_10/embeddings/ShapeShape/optimizer/update_embedding_10/embeddings/Unique*
T0**
_class 
loc:@embedding_10/embeddings*
out_type0

<optimizer/update_embedding_10/embeddings/strided_slice/stackConst**
_class 
loc:@embedding_10/embeddings*
valueB: *
dtype0

>optimizer/update_embedding_10/embeddings/strided_slice/stack_1Const**
_class 
loc:@embedding_10/embeddings*
valueB:*
dtype0

>optimizer/update_embedding_10/embeddings/strided_slice/stack_2Const**
_class 
loc:@embedding_10/embeddings*
valueB:*
dtype0
Ś
6optimizer/update_embedding_10/embeddings/strided_sliceStridedSlice.optimizer/update_embedding_10/embeddings/Shape<optimizer/update_embedding_10/embeddings/strided_slice/stack>optimizer/update_embedding_10/embeddings/strided_slice/stack_1>optimizer/update_embedding_10/embeddings/strided_slice/stack_2**
_class 
loc:@embedding_10/embeddings*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
T0*
Index0
Ė
;optimizer/update_embedding_10/embeddings/UnsortedSegmentSumUnsortedSegmentSum4gradients/embedding_10/embedding_lookup_grad/Reshape1optimizer/update_embedding_10/embeddings/Unique:16optimizer/update_embedding_10/embeddings/strided_slice*
Tindices0*
T0**
_class 
loc:@embedding_10/embeddings*
Tnumsegments0

.optimizer/update_embedding_10/embeddings/sub/xConst**
_class 
loc:@embedding_10/embeddings*
valueB
 *  ?*
dtype0
Ŗ
,optimizer/update_embedding_10/embeddings/subSub.optimizer/update_embedding_10/embeddings/sub/xbeta2_power/read*
T0**
_class 
loc:@embedding_10/embeddings

-optimizer/update_embedding_10/embeddings/SqrtSqrt,optimizer/update_embedding_10/embeddings/sub*
T0**
_class 
loc:@embedding_10/embeddings
¦
,optimizer/update_embedding_10/embeddings/mulMullearning_rate-optimizer/update_embedding_10/embeddings/Sqrt*
T0**
_class 
loc:@embedding_10/embeddings

0optimizer/update_embedding_10/embeddings/sub_1/xConst**
_class 
loc:@embedding_10/embeddings*
valueB
 *  ?*
dtype0
®
.optimizer/update_embedding_10/embeddings/sub_1Sub0optimizer/update_embedding_10/embeddings/sub_1/xbeta1_power/read*
T0**
_class 
loc:@embedding_10/embeddings
Ī
0optimizer/update_embedding_10/embeddings/truedivRealDiv,optimizer/update_embedding_10/embeddings/mul.optimizer/update_embedding_10/embeddings/sub_1*
T0**
_class 
loc:@embedding_10/embeddings

0optimizer/update_embedding_10/embeddings/sub_2/xConst**
_class 
loc:@embedding_10/embeddings*
valueB
 *  ?*
dtype0
­
.optimizer/update_embedding_10/embeddings/sub_2Sub0optimizer/update_embedding_10/embeddings/sub_2/xoptimizer/beta1*
T0**
_class 
loc:@embedding_10/embeddings
×
.optimizer/update_embedding_10/embeddings/mul_1Mul;optimizer/update_embedding_10/embeddings/UnsortedSegmentSum.optimizer/update_embedding_10/embeddings/sub_2*
T0**
_class 
loc:@embedding_10/embeddings
£
.optimizer/update_embedding_10/embeddings/mul_2Mul&embedding_10/embeddings/optimizer/readoptimizer/beta1*
T0**
_class 
loc:@embedding_10/embeddings
ź
/optimizer/update_embedding_10/embeddings/AssignAssign!embedding_10/embeddings/optimizer.optimizer/update_embedding_10/embeddings/mul_2*
use_locking( *
T0**
_class 
loc:@embedding_10/embeddings*
validate_shape(
Ļ
3optimizer/update_embedding_10/embeddings/ScatterAdd
ScatterAdd!embedding_10/embeddings/optimizer/optimizer/update_embedding_10/embeddings/Unique.optimizer/update_embedding_10/embeddings/mul_10^optimizer/update_embedding_10/embeddings/Assign*
use_locking( *
Tindices0*
T0**
_class 
loc:@embedding_10/embeddings
ä
.optimizer/update_embedding_10/embeddings/mul_3Mul;optimizer/update_embedding_10/embeddings/UnsortedSegmentSum;optimizer/update_embedding_10/embeddings/UnsortedSegmentSum**
_class 
loc:@embedding_10/embeddings*
T0

0optimizer/update_embedding_10/embeddings/sub_3/xConst**
_class 
loc:@embedding_10/embeddings*
valueB
 *  ?*
dtype0
­
.optimizer/update_embedding_10/embeddings/sub_3Sub0optimizer/update_embedding_10/embeddings/sub_3/xoptimizer/beta2**
_class 
loc:@embedding_10/embeddings*
T0
Ź
.optimizer/update_embedding_10/embeddings/mul_4Mul.optimizer/update_embedding_10/embeddings/mul_3.optimizer/update_embedding_10/embeddings/sub_3*
T0**
_class 
loc:@embedding_10/embeddings
„
.optimizer/update_embedding_10/embeddings/mul_5Mul(embedding_10/embeddings/optimizer_1/readoptimizer/beta2*
T0**
_class 
loc:@embedding_10/embeddings
ī
1optimizer/update_embedding_10/embeddings/Assign_1Assign#embedding_10/embeddings/optimizer_1.optimizer/update_embedding_10/embeddings/mul_5*
use_locking( *
T0**
_class 
loc:@embedding_10/embeddings*
validate_shape(
Õ
5optimizer/update_embedding_10/embeddings/ScatterAdd_1
ScatterAdd#embedding_10/embeddings/optimizer_1/optimizer/update_embedding_10/embeddings/Unique.optimizer/update_embedding_10/embeddings/mul_42^optimizer/update_embedding_10/embeddings/Assign_1**
_class 
loc:@embedding_10/embeddings*
use_locking( *
Tindices0*
T0
£
/optimizer/update_embedding_10/embeddings/Sqrt_1Sqrt5optimizer/update_embedding_10/embeddings/ScatterAdd_1*
T0**
_class 
loc:@embedding_10/embeddings
Ń
.optimizer/update_embedding_10/embeddings/mul_6Mul0optimizer/update_embedding_10/embeddings/truediv3optimizer/update_embedding_10/embeddings/ScatterAdd*
T0**
_class 
loc:@embedding_10/embeddings
®
,optimizer/update_embedding_10/embeddings/addAddV2/optimizer/update_embedding_10/embeddings/Sqrt_1optimizer/epsilon*
T0**
_class 
loc:@embedding_10/embeddings
Š
2optimizer/update_embedding_10/embeddings/truediv_1RealDiv.optimizer/update_embedding_10/embeddings/mul_6,optimizer/update_embedding_10/embeddings/add*
T0**
_class 
loc:@embedding_10/embeddings
Ō
2optimizer/update_embedding_10/embeddings/AssignSub	AssignSubembedding_10/embeddings2optimizer/update_embedding_10/embeddings/truediv_1*
T0**
_class 
loc:@embedding_10/embeddings*
use_locking( 

3optimizer/update_embedding_10/embeddings/group_depsNoOp3^optimizer/update_embedding_10/embeddings/AssignSub4^optimizer/update_embedding_10/embeddings/ScatterAdd6^optimizer/update_embedding_10/embeddings/ScatterAdd_1**
_class 
loc:@embedding_10/embeddings
ü
+optimizer/update_conv1d_10/kernel/ApplyAdam	ApplyAdamconv1d_10/kernelconv1d_10/kernel/optimizerconv1d_10/kernel/optimizer_1beta1_power/readbeta2_power/readlearning_rateoptimizer/beta1optimizer/beta2optimizer/epsilon9gradients/conv1d_10/convolution/ExpandDims_1_grad/Reshape*
use_locking( *
T0*#
_class
loc:@conv1d_10/kernel*
use_nesterov( 
į
)optimizer/update_conv1d_10/bias/ApplyAdam	ApplyAdamconv1d_10/biasconv1d_10/bias/optimizerconv1d_10/bias/optimizer_1beta1_power/readbeta2_power/readlearning_rateoptimizer/beta1optimizer/beta2optimizer/epsilon(gradients/conv1d_10/Reshape_grad/Reshape*!
_class
loc:@conv1d_10/bias*
use_nesterov( *
use_locking( *
T0
÷
*optimizer/update_dense_19/kernel/ApplyAdam	ApplyAdamdense_19/kerneldense_19/kernel/optimizerdense_19/kernel/optimizer_1beta1_power/readbeta2_power/readlearning_rateoptimizer/beta1optimizer/beta2optimizer/epsilon9gradients/dense_19/MatMul_grad/tuple/control_dependency_1*
use_nesterov( *
use_locking( *
T0*"
_class
loc:@dense_19/kernel
ī
(optimizer/update_dense_19/bias/ApplyAdam	ApplyAdamdense_19/biasdense_19/bias/optimizerdense_19/bias/optimizer_1beta1_power/readbeta2_power/readlearning_rateoptimizer/beta1optimizer/beta2optimizer/epsilon:gradients/dense_19/BiasAdd_grad/tuple/control_dependency_1*
use_locking( *
T0* 
_class
loc:@dense_19/bias*
use_nesterov( 
÷
*optimizer/update_dense_20/kernel/ApplyAdam	ApplyAdamdense_20/kerneldense_20/kernel/optimizerdense_20/kernel/optimizer_1beta1_power/readbeta2_power/readlearning_rateoptimizer/beta1optimizer/beta2optimizer/epsilon9gradients/dense_20/MatMul_grad/tuple/control_dependency_1*
use_locking( *
T0*"
_class
loc:@dense_20/kernel*
use_nesterov( 
ī
(optimizer/update_dense_20/bias/ApplyAdam	ApplyAdamdense_20/biasdense_20/bias/optimizerdense_20/bias/optimizer_1beta1_power/readbeta2_power/readlearning_rateoptimizer/beta1optimizer/beta2optimizer/epsilon:gradients/dense_20/BiasAdd_grad/tuple/control_dependency_1*
use_locking( *
T0* 
_class
loc:@dense_20/bias*
use_nesterov( 
£
optimizer/mulMulbeta1_power/readoptimizer/beta1*^optimizer/update_conv1d_10/bias/ApplyAdam,^optimizer/update_conv1d_10/kernel/ApplyAdam)^optimizer/update_dense_19/bias/ApplyAdam+^optimizer/update_dense_19/kernel/ApplyAdam)^optimizer/update_dense_20/bias/ApplyAdam+^optimizer/update_dense_20/kernel/ApplyAdam4^optimizer/update_embedding_10/embeddings/group_deps*
T0*!
_class
loc:@conv1d_10/bias

optimizer/AssignAssignbeta1_poweroptimizer/mul*
use_locking( *
T0*!
_class
loc:@conv1d_10/bias*
validate_shape(
„
optimizer/mul_1Mulbeta2_power/readoptimizer/beta2*^optimizer/update_conv1d_10/bias/ApplyAdam,^optimizer/update_conv1d_10/kernel/ApplyAdam)^optimizer/update_dense_19/bias/ApplyAdam+^optimizer/update_dense_19/kernel/ApplyAdam)^optimizer/update_dense_20/bias/ApplyAdam+^optimizer/update_dense_20/kernel/ApplyAdam4^optimizer/update_embedding_10/embeddings/group_deps*
T0*!
_class
loc:@conv1d_10/bias

optimizer/Assign_1Assignbeta2_poweroptimizer/mul_1*
validate_shape(*
use_locking( *
T0*!
_class
loc:@conv1d_10/bias
ł
	optimizerNoOp^optimizer/Assign^optimizer/Assign_1*^optimizer/update_conv1d_10/bias/ApplyAdam,^optimizer/update_conv1d_10/kernel/ApplyAdam)^optimizer/update_dense_19/bias/ApplyAdam+^optimizer/update_dense_19/kernel/ApplyAdam)^optimizer/update_dense_20/bias/ApplyAdam+^optimizer/update_dense_20/kernel/ApplyAdam4^optimizer/update_embedding_10/embeddings/group_deps
?
Sum/reduction_indicesConst*
value	B :*
dtype0
Y
SumSumdense_20/BiasAddSum/reduction_indices*

Tidx0*
	keep_dims( *
T0
6
	Greater/yConst*
valueB
 *   ?*
dtype0
+
GreaterGreaterSum	Greater/y*
T0
A
Sum_1/reduction_indicesConst*
dtype0*
value	B :
T
Sum_1SumtargetsSum_1/reduction_indices*

Tidx0*
	keep_dims( *
T0
8
Greater_1/yConst*
valueB
 *   ?*
dtype0
1
	Greater_1GreaterSum_1Greater_1/y*
T0
X
correct_predictionEqualGreater	Greater_1*
incompatible_shape_error(*
T0

H
CastCastcorrect_prediction*

SrcT0
*
Truncate( *

DstT0
5
Const_4Const*
valueB: *
dtype0
E
accuracyMeanCastConst_4*
T0*

Tidx0*
	keep_dims( 
?
predictions/dimensionConst*
value	B :*
dtype0
f
predictionsArgMaxdense_20/BiasAddpredictions/dimension*
T0*
output_type0	*

Tidx0
é
initNoOp^beta1_power/Assign^beta2_power/Assign^conv1d_10/bias/Assign ^conv1d_10/bias/optimizer/Assign"^conv1d_10/bias/optimizer_1/Assign^conv1d_10/kernel/Assign"^conv1d_10/kernel/optimizer/Assign$^conv1d_10/kernel/optimizer_1/Assign^dense_19/bias/Assign^dense_19/bias/optimizer/Assign!^dense_19/bias/optimizer_1/Assign^dense_19/kernel/Assign!^dense_19/kernel/optimizer/Assign#^dense_19/kernel/optimizer_1/Assign^dense_20/bias/Assign^dense_20/bias/optimizer/Assign!^dense_20/bias/optimizer_1/Assign^dense_20/kernel/Assign!^dense_20/kernel/optimizer/Assign#^dense_20/kernel/optimizer_1/Assign^embedding_10/embeddings/Assign)^embedding_10/embeddings/optimizer/Assign+^embedding_10/embeddings/optimizer_1/Assign
A
save/filename/inputConst*
valueB Bmodel*
dtype0
V
save/filenamePlaceholderWithDefaultsave/filename/input*
shape: *
dtype0
M

save/ConstPlaceholderWithDefaultsave/filename*
dtype0*
shape: 
ė
save/SaveV2/tensor_namesConst*ŗ
value°B­Bbeta1_powerBbeta2_powerBconv1d_10/biasBconv1d_10/bias/optimizerBconv1d_10/bias/optimizer_1Bconv1d_10/kernelBconv1d_10/kernel/optimizerBconv1d_10/kernel/optimizer_1Bdense_19/biasBdense_19/bias/optimizerBdense_19/bias/optimizer_1Bdense_19/kernelBdense_19/kernel/optimizerBdense_19/kernel/optimizer_1Bdense_20/biasBdense_20/bias/optimizerBdense_20/bias/optimizer_1Bdense_20/kernelBdense_20/kernel/optimizerBdense_20/kernel/optimizer_1Bembedding_10/embeddingsB!embedding_10/embeddings/optimizerB#embedding_10/embeddings/optimizer_1*
dtype0
u
save/SaveV2/shape_and_slicesConst*A
value8B6B B B B B B B B B B B B B B B B B B B B B B B *
dtype0
„
save/SaveV2SaveV2
save/Constsave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesbeta1_powerbeta2_powerconv1d_10/biasconv1d_10/bias/optimizerconv1d_10/bias/optimizer_1conv1d_10/kernelconv1d_10/kernel/optimizerconv1d_10/kernel/optimizer_1dense_19/biasdense_19/bias/optimizerdense_19/bias/optimizer_1dense_19/kerneldense_19/kernel/optimizerdense_19/kernel/optimizer_1dense_20/biasdense_20/bias/optimizerdense_20/bias/optimizer_1dense_20/kerneldense_20/kernel/optimizerdense_20/kernel/optimizer_1embedding_10/embeddings!embedding_10/embeddings/optimizer#embedding_10/embeddings/optimizer_1*%
dtypes
2
e
save/control_dependencyIdentity
save/Const^save/SaveV2*
T0*
_class
loc:@save/Const
ż
save/RestoreV2/tensor_namesConst"/device:CPU:0*ŗ
value°B­Bbeta1_powerBbeta2_powerBconv1d_10/biasBconv1d_10/bias/optimizerBconv1d_10/bias/optimizer_1Bconv1d_10/kernelBconv1d_10/kernel/optimizerBconv1d_10/kernel/optimizer_1Bdense_19/biasBdense_19/bias/optimizerBdense_19/bias/optimizer_1Bdense_19/kernelBdense_19/kernel/optimizerBdense_19/kernel/optimizer_1Bdense_20/biasBdense_20/bias/optimizerBdense_20/bias/optimizer_1Bdense_20/kernelBdense_20/kernel/optimizerBdense_20/kernel/optimizer_1Bembedding_10/embeddingsB!embedding_10/embeddings/optimizerB#embedding_10/embeddings/optimizer_1*
dtype0

save/RestoreV2/shape_and_slicesConst"/device:CPU:0*
dtype0*A
value8B6B B B B B B B B B B B B B B B B B B B B B B B 

save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*%
dtypes
2

save/AssignAssignbeta1_powersave/RestoreV2*
use_locking(*
T0*!
_class
loc:@conv1d_10/bias*
validate_shape(

save/Assign_1Assignbeta2_powersave/RestoreV2:1*
validate_shape(*
use_locking(*
T0*!
_class
loc:@conv1d_10/bias

save/Assign_2Assignconv1d_10/biassave/RestoreV2:2*
use_locking(*
T0*!
_class
loc:@conv1d_10/bias*
validate_shape(

save/Assign_3Assignconv1d_10/bias/optimizersave/RestoreV2:3*
validate_shape(*
use_locking(*
T0*!
_class
loc:@conv1d_10/bias

save/Assign_4Assignconv1d_10/bias/optimizer_1save/RestoreV2:4*
use_locking(*
T0*!
_class
loc:@conv1d_10/bias*
validate_shape(

save/Assign_5Assignconv1d_10/kernelsave/RestoreV2:5*
use_locking(*
T0*#
_class
loc:@conv1d_10/kernel*
validate_shape(

save/Assign_6Assignconv1d_10/kernel/optimizersave/RestoreV2:6*
validate_shape(*
use_locking(*
T0*#
_class
loc:@conv1d_10/kernel

save/Assign_7Assignconv1d_10/kernel/optimizer_1save/RestoreV2:7*
use_locking(*
T0*#
_class
loc:@conv1d_10/kernel*
validate_shape(

save/Assign_8Assigndense_19/biassave/RestoreV2:8*
T0* 
_class
loc:@dense_19/bias*
validate_shape(*
use_locking(

save/Assign_9Assigndense_19/bias/optimizersave/RestoreV2:9*
use_locking(*
T0* 
_class
loc:@dense_19/bias*
validate_shape(

save/Assign_10Assigndense_19/bias/optimizer_1save/RestoreV2:10*
T0* 
_class
loc:@dense_19/bias*
validate_shape(*
use_locking(

save/Assign_11Assigndense_19/kernelsave/RestoreV2:11*
T0*"
_class
loc:@dense_19/kernel*
validate_shape(*
use_locking(

save/Assign_12Assigndense_19/kernel/optimizersave/RestoreV2:12*
use_locking(*
T0*"
_class
loc:@dense_19/kernel*
validate_shape(

save/Assign_13Assigndense_19/kernel/optimizer_1save/RestoreV2:13*"
_class
loc:@dense_19/kernel*
validate_shape(*
use_locking(*
T0

save/Assign_14Assigndense_20/biassave/RestoreV2:14*
T0* 
_class
loc:@dense_20/bias*
validate_shape(*
use_locking(

save/Assign_15Assigndense_20/bias/optimizersave/RestoreV2:15* 
_class
loc:@dense_20/bias*
validate_shape(*
use_locking(*
T0

save/Assign_16Assigndense_20/bias/optimizer_1save/RestoreV2:16* 
_class
loc:@dense_20/bias*
validate_shape(*
use_locking(*
T0

save/Assign_17Assigndense_20/kernelsave/RestoreV2:17*
use_locking(*
T0*"
_class
loc:@dense_20/kernel*
validate_shape(

save/Assign_18Assigndense_20/kernel/optimizersave/RestoreV2:18*
use_locking(*
T0*"
_class
loc:@dense_20/kernel*
validate_shape(

save/Assign_19Assigndense_20/kernel/optimizer_1save/RestoreV2:19*
use_locking(*
T0*"
_class
loc:@dense_20/kernel*
validate_shape(
¢
save/Assign_20Assignembedding_10/embeddingssave/RestoreV2:20*
use_locking(*
T0**
_class 
loc:@embedding_10/embeddings*
validate_shape(
¬
save/Assign_21Assign!embedding_10/embeddings/optimizersave/RestoreV2:21*
use_locking(*
T0**
_class 
loc:@embedding_10/embeddings*
validate_shape(
®
save/Assign_22Assign#embedding_10/embeddings/optimizer_1save/RestoreV2:22**
_class 
loc:@embedding_10/embeddings*
validate_shape(*
use_locking(*
T0

save/restore_allNoOp^save/Assign^save/Assign_1^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_16^save/Assign_17^save/Assign_18^save/Assign_19^save/Assign_2^save/Assign_20^save/Assign_21^save/Assign_22^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9"