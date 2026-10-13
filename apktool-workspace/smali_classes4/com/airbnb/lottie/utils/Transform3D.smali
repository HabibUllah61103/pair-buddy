.class public Lcom/airbnb/lottie/utils/Transform3D;
.super Ljava/lang/Object;
.source "Transform3D.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static apply3DRotations(Landroid/graphics/Matrix;FFFFF)V
    .locals 2

    const/4 v0, 0x0

    cmpl-float v1, p3, v0

    if-eqz v1, :cond_0

    .line 91
    invoke-virtual {p0, p3}, Landroid/graphics/Matrix;->preRotate(F)Z

    :cond_0
    cmpl-float p2, p2, v0

    if-eqz p2, :cond_1

    .line 94
    invoke-static {p0, p5}, Lcom/airbnb/lottie/utils/Transform3D;->applyYRotation(Landroid/graphics/Matrix;F)V

    :cond_1
    cmpl-float p1, p1, v0

    if-eqz p1, :cond_2

    .line 97
    invoke-static {p0, p4}, Lcom/airbnb/lottie/utils/Transform3D;->applyXRotation(Landroid/graphics/Matrix;F)V

    :cond_2
    return-void
.end method

.method public static applyTransform(Landroid/graphics/Matrix;Landroid/graphics/PointF;Landroid/graphics/PointF;FFFFFFF)V
    .locals 2

    .line 39
    invoke-virtual {p0}, Landroid/graphics/Matrix;->reset()V

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 44
    iget v1, p2, Landroid/graphics/PointF;->x:F

    cmpl-float v1, v1, v0

    if-nez v1, :cond_0

    iget v1, p2, Landroid/graphics/PointF;->y:F

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_1

    .line 45
    :cond_0
    iget v1, p2, Landroid/graphics/PointF;->x:F

    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, v1, p2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    :cond_1
    cmpl-float p2, p7, v0

    if-eqz p2, :cond_2

    .line 50
    invoke-virtual {p0, p7}, Landroid/graphics/Matrix;->preRotate(F)Z

    :cond_2
    cmpl-float p2, p6, v0

    if-eqz p2, :cond_3

    .line 53
    invoke-static {p0, p9}, Lcom/airbnb/lottie/utils/Transform3D;->applyYRotation(Landroid/graphics/Matrix;F)V

    :cond_3
    cmpl-float p2, p5, v0

    if-eqz p2, :cond_4

    .line 56
    invoke-static {p0, p8}, Lcom/airbnb/lottie/utils/Transform3D;->applyXRotation(Landroid/graphics/Matrix;F)V

    :cond_4
    const/high16 p2, 0x3f800000    # 1.0f

    cmpl-float p5, p3, p2

    if-nez p5, :cond_5

    cmpl-float p2, p4, p2

    if-eqz p2, :cond_6

    .line 61
    :cond_5
    invoke-virtual {p0, p3, p4}, Landroid/graphics/Matrix;->preScale(FF)Z

    :cond_6
    if-eqz p1, :cond_8

    .line 65
    iget p2, p1, Landroid/graphics/PointF;->x:F

    cmpl-float p2, p2, v0

    if-nez p2, :cond_7

    iget p2, p1, Landroid/graphics/PointF;->y:F

    cmpl-float p2, p2, v0

    if-eqz p2, :cond_8

    .line 66
    :cond_7
    iget p2, p1, Landroid/graphics/PointF;->x:F

    neg-float p2, p2

    iget p1, p1, Landroid/graphics/PointF;->y:F

    neg-float p1, p1

    invoke-virtual {p0, p2, p1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    :cond_8
    return-void
.end method

.method private static applyXRotation(Landroid/graphics/Matrix;F)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 112
    invoke-virtual {p0, v0, p1}, Landroid/graphics/Matrix;->preScale(FF)Z

    return-void
.end method

.method private static applyYRotation(Landroid/graphics/Matrix;F)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 126
    invoke-virtual {p0, p1, v0}, Landroid/graphics/Matrix;->preScale(FF)Z

    return-void
.end method

.method public static has3DRotation(Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;)Z
    .locals 1

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 133
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    cmpl-float p0, p0, v0

    if-nez p0, :cond_2

    :cond_0
    if-eqz p1, :cond_1

    .line 134
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p0

    cmpl-float p0, p0, v0

    if-nez p0, :cond_2

    :cond_1
    if-eqz p2, :cond_3

    .line 135
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p0

    cmpl-float p0, p0, v0

    if-eqz p0, :cond_3

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method
