.class public Lcom/airbnb/lottie/model/animatable/AnimatableTransform;
.super Ljava/lang/Object;
.source "AnimatableTransform.java"

# interfaces
.implements Lcom/airbnb/lottie/animation/content/ModifierContent;
.implements Lcom/airbnb/lottie/model/content/ContentModel;


# instance fields
.field private final anchorPoint:Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;

.field private autoOrient:Z

.field private final endOpacity:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

.field private final opacity:Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

.field private final position:Lcom/airbnb/lottie/model/animatable/AnimatableValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/model/animatable/AnimatableValue<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final rotation:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

.field private final rotationX:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

.field private final rotationY:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

.field private final rotationZ:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

.field private final scale:Lcom/airbnb/lottie/model/animatable/AnimatableScaleValue;

.field private final skew:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

.field private final skewAngle:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

.field private final startOpacity:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;


# direct methods
.method public constructor <init>()V
    .locals 13

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    .line 48
    invoke-direct/range {v0 .. v12}, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;-><init>(Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;Lcom/airbnb/lottie/model/animatable/AnimatableValue;Lcom/airbnb/lottie/model/animatable/AnimatableScaleValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;)V

    return-void
.end method

.method public constructor <init>(Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;Lcom/airbnb/lottie/model/animatable/AnimatableValue;Lcom/airbnb/lottie/model/animatable/AnimatableScaleValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;",
            "Lcom/airbnb/lottie/model/animatable/AnimatableValue<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;",
            "Lcom/airbnb/lottie/model/animatable/AnimatableScaleValue;",
            "Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;",
            "Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;",
            "Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;",
            "Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;",
            "Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;",
            "Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;",
            ")V"
        }
    .end annotation

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    .line 56
    invoke-direct/range {v0 .. v12}, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;-><init>(Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;Lcom/airbnb/lottie/model/animatable/AnimatableValue;Lcom/airbnb/lottie/model/animatable/AnimatableScaleValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;)V

    return-void
.end method

.method public constructor <init>(Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;Lcom/airbnb/lottie/model/animatable/AnimatableValue;Lcom/airbnb/lottie/model/animatable/AnimatableScaleValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;",
            "Lcom/airbnb/lottie/model/animatable/AnimatableValue<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;",
            "Lcom/airbnb/lottie/model/animatable/AnimatableScaleValue;",
            "Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;",
            "Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;",
            "Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;",
            "Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;",
            "Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;",
            "Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;",
            "Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;",
            "Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;",
            "Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;",
            ")V"
        }
    .end annotation

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;->autoOrient:Z

    .line 66
    iput-object p1, p0, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;->anchorPoint:Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;

    .line 67
    iput-object p2, p0, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;->position:Lcom/airbnb/lottie/model/animatable/AnimatableValue;

    .line 68
    iput-object p3, p0, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;->scale:Lcom/airbnb/lottie/model/animatable/AnimatableScaleValue;

    .line 69
    iput-object p4, p0, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;->rotation:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 70
    iput-object p5, p0, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;->opacity:Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    .line 71
    iput-object p6, p0, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;->startOpacity:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 72
    iput-object p7, p0, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;->endOpacity:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 73
    iput-object p8, p0, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;->skew:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 74
    iput-object p9, p0, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;->skewAngle:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 75
    iput-object p10, p0, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;->rotationX:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 76
    iput-object p11, p0, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;->rotationY:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 77
    iput-object p12, p0, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;->rotationZ:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    return-void
.end method


# virtual methods
.method public createAnimation()Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;
    .locals 1

    .line 156
    new-instance v0, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    invoke-direct {v0, p0}, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;-><init>(Lcom/airbnb/lottie/model/animatable/AnimatableTransform;)V

    return-object v0
.end method

.method public getAnchorPoint()Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;->anchorPoint:Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;

    return-object v0
.end method

.method public getEndOpacity()Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;->endOpacity:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    return-object v0
.end method

.method public getOpacity()Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;->opacity:Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    return-object v0
.end method

.method public getPosition()Lcom/airbnb/lottie/model/animatable/AnimatableValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/airbnb/lottie/model/animatable/AnimatableValue<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;->position:Lcom/airbnb/lottie/model/animatable/AnimatableValue;

    return-object v0
.end method

.method public getRotation()Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;->rotation:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    return-object v0
.end method

.method public getRotationX()Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;->rotationX:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    return-object v0
.end method

.method public getRotationY()Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;->rotationY:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    return-object v0
.end method

.method public getRotationZ()Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;->rotationZ:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    return-object v0
.end method

.method public getScale()Lcom/airbnb/lottie/model/animatable/AnimatableScaleValue;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;->scale:Lcom/airbnb/lottie/model/animatable/AnimatableScaleValue;

    return-object v0
.end method

.method public getSkew()Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;->skew:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    return-object v0
.end method

.method public getSkewAngle()Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;->skewAngle:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    return-object v0
.end method

.method public getStartOpacity()Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;->startOpacity:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    return-object v0
.end method

.method public has3DRotation()Z
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;->rotationX:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;->rotationY:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;->rotationZ:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public isAutoOrient()Z
    .locals 1

    .line 148
    iget-boolean v0, p0, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;->autoOrient:Z

    return v0
.end method

.method public setAutoOrient(Z)V
    .locals 0

    .line 84
    iput-boolean p1, p0, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;->autoOrient:Z

    return-void
.end method

.method public toContent(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/LottieComposition;Lcom/airbnb/lottie/model/layer/BaseLayer;)Lcom/airbnb/lottie/animation/content/Content;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method
