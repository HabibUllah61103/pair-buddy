.class public final Lcom/canhub/cropper/CropOverlayView;
.super Landroid/view/View;
.source "CropOverlayView.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/canhub/cropper/CropOverlayView$Companion;,
        Lcom/canhub/cropper/CropOverlayView$CropWindowChangeListener;,
        Lcom/canhub/cropper/CropOverlayView$ScaleListener;,
        Lcom/canhub/cropper/CropOverlayView$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCropOverlayView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CropOverlayView.kt\ncom/canhub/cropper/CropOverlayView\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1318:1\n1#2:1319\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00aa\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0014\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008B\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0008\u0000\u0018\u0000 \u00a6\u00012\u00020\u0001:\u0006\u00a6\u0001\u00a7\u0001\u00a8\u0001B\u001d\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0010\u0010J\u001a\u00020K2\u0008\u0010L\u001a\u0004\u0018\u00010\u0017J\u0006\u0010S\u001a\u00020KJ \u0010T\u001a\u00020K2\u0008\u0010U\u001a\u0004\u0018\u00010$2\u0006\u0010V\u001a\u00020\u000b2\u0006\u0010W\u001a\u00020\u000bJ\u0006\u0010X\u001a\u00020KJ\u000e\u0010Y\u001a\u00020K2\u0006\u0010:\u001a\u000209J\u000e\u0010Z\u001a\u00020K2\u0006\u0010[\u001a\u00020=J\u000e\u0010\\\u001a\u00020K2\u0006\u0010]\u001a\u00020\u0012J\u0010\u0010^\u001a\u00020K2\u0008\u0010_\u001a\u0004\u0018\u00010CJ\u000e\u0010`\u001a\u00020K2\u0006\u0010a\u001a\u00020\tJ\u000e\u0010b\u001a\u00020K2\u0006\u0010c\u001a\u00020\u000bJ\u000e\u0010d\u001a\u00020K2\u0006\u00106\u001a\u000205J\u000e\u0010e\u001a\u00020K2\u0006\u0010f\u001a\u00020\u0012J\u000e\u0010o\u001a\u00020K2\u0006\u0010p\u001a\u00020\tJ\u000e\u0010q\u001a\u00020K2\u0006\u0010r\u001a\u00020\tJ\u000e\u0010s\u001a\u00020\u00122\u0006\u0010t\u001a\u00020\u0012J\u000e\u0010u\u001a\u00020\u00122\u0006\u0010v\u001a\u00020\u0012J\u0016\u0010w\u001a\u00020K2\u0006\u0010x\u001a\u00020\u000b2\u0006\u0010y\u001a\u00020\u000bJ\u0016\u0010z\u001a\u00020K2\u0006\u0010{\u001a\u00020\u000b2\u0006\u0010|\u001a\u00020\u000bJ(\u0010}\u001a\u00020K2\u0006\u0010~\u001a\u00020\t2\u0006\u0010\u007f\u001a\u00020\t2\u0007\u0010\u0080\u0001\u001a\u00020\t2\u0007\u0010\u0081\u0001\u001a\u00020\tJ\u0007\u0010\u0087\u0001\u001a\u00020KJ\u0010\u0010\u0088\u0001\u001a\u00020K2\u0007\u0010\u0089\u0001\u001a\u00020\u000eJ\t\u0010\u008a\u0001\u001a\u00020KH\u0002J\u0011\u0010\u008b\u0001\u001a\u00020K2\u0006\u0010M\u001a\u00020\u0019H\u0002J\u0013\u0010\u008c\u0001\u001a\u00020K2\u0008\u0010\u008d\u0001\u001a\u00030\u008e\u0001H\u0014J\t\u0010\u008f\u0001\u001a\u00020KH\u0003J\u0013\u0010\u0090\u0001\u001a\u00020K2\u0008\u0010\u008d\u0001\u001a\u00030\u008e\u0001H\u0002J\u0013\u0010\u0091\u0001\u001a\u00020K2\u0008\u0010\u008d\u0001\u001a\u00030\u008e\u0001H\u0002J\u0013\u0010\u0092\u0001\u001a\u00020K2\u0008\u0010\u008d\u0001\u001a\u00030\u008e\u0001H\u0002J\u0013\u0010\u0093\u0001\u001a\u00020K2\u0008\u0010\u008d\u0001\u001a\u00030\u008e\u0001H\u0002J\u0013\u0010\u0094\u0001\u001a\u00020K2\u0008\u0010\u008d\u0001\u001a\u00030\u008e\u0001H\u0002J-\u0010\u0095\u0001\u001a\u00020K2\u0008\u0010\u008d\u0001\u001a\u00030\u008e\u00012\u0006\u0010M\u001a\u00020\u00192\u0007\u0010\u0096\u0001\u001a\u00020\t2\u0007\u0010\u0097\u0001\u001a\u00020\tH\u0002J-\u0010\u0098\u0001\u001a\u00020K2\u0008\u0010\u008d\u0001\u001a\u00030\u008e\u00012\u0006\u0010M\u001a\u00020\u00192\u0007\u0010\u0096\u0001\u001a\u00020\t2\u0007\u0010\u0097\u0001\u001a\u00020\tH\u0002J6\u0010\u0099\u0001\u001a\u00020K2\u0008\u0010\u008d\u0001\u001a\u00030\u008e\u00012\u0006\u0010M\u001a\u00020\u00192\u0007\u0010\u0096\u0001\u001a\u00020\t2\u0007\u0010\u0097\u0001\u001a\u00020\t2\u0007\u0010\u009a\u0001\u001a\u00020\tH\u0002J-\u0010\u009b\u0001\u001a\u00020K2\u0008\u0010\u008d\u0001\u001a\u00030\u008e\u00012\u0006\u0010M\u001a\u00020\u00192\u0007\u0010\u0097\u0001\u001a\u00020\t2\u0007\u0010\u009a\u0001\u001a\u00020\tH\u0002J\u0013\u0010\u009c\u0001\u001a\u00020\u00122\u0008\u0010\u009d\u0001\u001a\u00030\u009e\u0001H\u0017J\u001b\u0010\u009f\u0001\u001a\u00020K2\u0007\u0010\u00a0\u0001\u001a\u00020\t2\u0007\u0010\u00a1\u0001\u001a\u00020\tH\u0002J\t\u0010\u00a2\u0001\u001a\u00020KH\u0002J\u001b\u0010\u00a3\u0001\u001a\u00020K2\u0007\u0010\u00a0\u0001\u001a\u00020\t2\u0007\u0010\u00a1\u0001\u001a\u00020\tH\u0002J\u0011\u0010\u00a4\u0001\u001a\u00020\u00122\u0006\u0010M\u001a\u00020\u0019H\u0002R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u000cR\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u0017X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001a\u001a\u0004\u0018\u00010\u001bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001c\u001a\u0004\u0018\u00010\u001bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001d\u001a\u0004\u0018\u00010\u001bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001e\u001a\u0004\u0018\u00010\u001bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001f\u001a\u0004\u0018\u00010\u001bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010 \u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u000cR\u000e\u0010!\u001a\u00020\"X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010#\u001a\u00020$X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010%\u001a\u00020\u0019X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010&\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\'\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010(\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010)\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010*\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010+\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010,\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010-\u001a\u0004\u0018\u00010.X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u00100\u001a\u00020\u00122\u0006\u0010/\u001a\u00020\u0012@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00080\u00101R\u000e\u00102\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u00103\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u00104\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\"\u00106\u001a\u0004\u0018\u0001052\u0008\u0010/\u001a\u0004\u0018\u000105@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00087\u00108R\"\u0010:\u001a\u0004\u0018\u0001092\u0008\u0010/\u001a\u0004\u0018\u000109@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008;\u0010<R\"\u0010>\u001a\u0004\u0018\u00010=2\u0008\u0010/\u001a\u0004\u0018\u00010=@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008?\u0010@R\u000e\u0010A\u001a\u00020\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010B\u001a\u00020CX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010D\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010E\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010F\u001a\u00020GX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010H\u001a\u00020\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010I\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R$\u0010N\u001a\u00020\u00192\u0006\u0010M\u001a\u00020\u00198F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008O\u0010P\"\u0004\u0008Q\u0010RR$\u0010g\u001a\u00020\u000b2\u0006\u0010g\u001a\u00020\u000b8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008h\u0010i\"\u0004\u0008j\u0010kR$\u0010l\u001a\u00020\u000b2\u0006\u0010l\u001a\u00020\u000b8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008m\u0010i\"\u0004\u0008n\u0010kR-\u0010\u0082\u0001\u001a\u0004\u0018\u00010G2\u0008\u0010M\u001a\u0004\u0018\u00010G8F@FX\u0086\u000e\u00a2\u0006\u0010\u001a\u0006\u0008\u0083\u0001\u0010\u0084\u0001\"\u0006\u0008\u0085\u0001\u0010\u0086\u0001R\u0016\u0010\u00a5\u0001\u001a\u00020\u00128BX\u0082\u0004\u00a2\u0006\u0007\u001a\u0005\u0008\u00a5\u0001\u00101\u00a8\u0006\u00a9\u0001"
    }
    d2 = {
        "Lcom/canhub/cropper/CropOverlayView;",
        "Landroid/view/View;",
        "context",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "mCropCornerRadius",
        "",
        "mCircleCornerFillColor",
        "",
        "Ljava/lang/Integer;",
        "mOptions",
        "Lcom/canhub/cropper/CropImageOptions;",
        "mScaleDetector",
        "Landroid/view/ScaleGestureDetector;",
        "mMultiTouchEnabled",
        "",
        "mCenterMoveEnabled",
        "mCropWindowHandler",
        "Lcom/canhub/cropper/CropWindowHandler;",
        "mCropWindowChangeListener",
        "Lcom/canhub/cropper/CropOverlayView$CropWindowChangeListener;",
        "mDrawRect",
        "Landroid/graphics/RectF;",
        "mBorderPaint",
        "Landroid/graphics/Paint;",
        "mBorderCornerPaint",
        "mGuidelinePaint",
        "mBackgroundPaint",
        "textLabelPaint",
        "currentPointerId",
        "mPath",
        "Landroid/graphics/Path;",
        "mBoundsPoints",
        "",
        "mCalcBounds",
        "mViewWidth",
        "mViewHeight",
        "mBorderCornerOffset",
        "mBorderCornerLength",
        "mInitialCropWindowPaddingRatio",
        "mTouchRadius",
        "mSnapRadius",
        "mMoveHandler",
        "Lcom/canhub/cropper/CropWindowMoveHandler;",
        "value",
        "isFixAspectRatio",
        "()Z",
        "mAspectRatioX",
        "mAspectRatioY",
        "mTargetAspectRatio",
        "Lcom/canhub/cropper/CropImageView$Guidelines;",
        "guidelines",
        "getGuidelines",
        "()Lcom/canhub/cropper/CropImageView$Guidelines;",
        "Lcom/canhub/cropper/CropImageView$CropShape;",
        "cropShape",
        "getCropShape",
        "()Lcom/canhub/cropper/CropImageView$CropShape;",
        "Lcom/canhub/cropper/CropImageView$CropCornerShape;",
        "cornerShape",
        "getCornerShape",
        "()Lcom/canhub/cropper/CropImageView$CropCornerShape;",
        "isCropLabelEnabled",
        "cropLabelText",
        "",
        "cropLabelTextSize",
        "cropLabelTextColor",
        "mInitialCropWindowRect",
        "Landroid/graphics/Rect;",
        "initializedCropWindow",
        "maxVerticalGestureExclusion",
        "setCropWindowChangeListener",
        "",
        "listener",
        "rect",
        "cropWindowRect",
        "getCropWindowRect",
        "()Landroid/graphics/RectF;",
        "setCropWindowRect",
        "(Landroid/graphics/RectF;)V",
        "fixCurrentCropWindowRect",
        "setBounds",
        "boundsPoints",
        "viewWidth",
        "viewHeight",
        "resetCropOverlayView",
        "setCropShape",
        "setCropCornerShape",
        "cropCornerShape",
        "setCropperTextLabelVisibility",
        "isEnabled",
        "setCropLabelText",
        "textLabel",
        "setCropLabelTextSize",
        "textSize",
        "setCropLabelTextColor",
        "textColor",
        "setGuidelines",
        "setFixedAspectRatio",
        "fixAspectRatio",
        "aspectRatioX",
        "getAspectRatioX",
        "()I",
        "setAspectRatioX",
        "(I)V",
        "aspectRatioY",
        "getAspectRatioY",
        "setAspectRatioY",
        "setSnapRadius",
        "snapRadius",
        "setCropCornerRadius",
        "cornerRadius",
        "setMultiTouchEnabled",
        "multiTouchEnabled",
        "setCenterMoveEnabled",
        "centerMoveEnabled",
        "setMinCropResultSize",
        "minCropResultWidth",
        "minCropResultHeight",
        "setMaxCropResultSize",
        "maxCropResultWidth",
        "maxCropResultHeight",
        "setCropWindowLimits",
        "maxWidth",
        "maxHeight",
        "scaleFactorWidth",
        "scaleFactorHeight",
        "initialCropWindowRect",
        "getInitialCropWindowRect",
        "()Landroid/graphics/Rect;",
        "setInitialCropWindowRect",
        "(Landroid/graphics/Rect;)V",
        "resetCropWindowRect",
        "setInitialAttributeValues",
        "options",
        "initCropWindow",
        "fixCropWindowRectByRules",
        "onDraw",
        "canvas",
        "Landroid/graphics/Canvas;",
        "setSystemGestureExclusionRects",
        "drawCropLabelText",
        "drawBackground",
        "drawGuidelines",
        "drawBorders",
        "drawCorners",
        "drawCornerBasedOnShape",
        "cornerOffset",
        "cornerExtension",
        "drawLineShape",
        "drawCornerShape",
        "radius",
        "drawCircleShape",
        "onTouchEvent",
        "event",
        "Landroid/view/MotionEvent;",
        "onActionDown",
        "x",
        "y",
        "onActionUp",
        "onActionMove",
        "calculateBounds",
        "isNonStraightAngleRotated",
        "Companion",
        "CropWindowChangeListener",
        "ScaleListener",
        "cropper_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/canhub/cropper/CropOverlayView$Companion;


# instance fields
.field private cornerShape:Lcom/canhub/cropper/CropImageView$CropCornerShape;

.field private cropLabelText:Ljava/lang/String;

.field private cropLabelTextColor:I

.field private cropLabelTextSize:F

.field private cropShape:Lcom/canhub/cropper/CropImageView$CropShape;

.field private currentPointerId:Ljava/lang/Integer;

.field private guidelines:Lcom/canhub/cropper/CropImageView$Guidelines;

.field private initializedCropWindow:Z

.field private isCropLabelEnabled:Z

.field private isFixAspectRatio:Z

.field private mAspectRatioX:I

.field private mAspectRatioY:I

.field private mBackgroundPaint:Landroid/graphics/Paint;

.field private mBorderCornerLength:F

.field private mBorderCornerOffset:F

.field private mBorderCornerPaint:Landroid/graphics/Paint;

.field private mBorderPaint:Landroid/graphics/Paint;

.field private final mBoundsPoints:[F

.field private final mCalcBounds:Landroid/graphics/RectF;

.field private mCenterMoveEnabled:Z

.field private mCircleCornerFillColor:Ljava/lang/Integer;

.field private mCropCornerRadius:F

.field private mCropWindowChangeListener:Lcom/canhub/cropper/CropOverlayView$CropWindowChangeListener;

.field private final mCropWindowHandler:Lcom/canhub/cropper/CropWindowHandler;

.field private final mDrawRect:Landroid/graphics/RectF;

.field private mGuidelinePaint:Landroid/graphics/Paint;

.field private mInitialCropWindowPaddingRatio:F

.field private final mInitialCropWindowRect:Landroid/graphics/Rect;

.field private mMoveHandler:Lcom/canhub/cropper/CropWindowMoveHandler;

.field private mMultiTouchEnabled:Z

.field private mOptions:Lcom/canhub/cropper/CropImageOptions;

.field private final mPath:Landroid/graphics/Path;

.field private mScaleDetector:Landroid/view/ScaleGestureDetector;

.field private mSnapRadius:F

.field private mTargetAspectRatio:F

.field private mTouchRadius:F

.field private mViewHeight:I

.field private mViewWidth:I

.field private final maxVerticalGestureExclusion:F

.field private textLabelPaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/canhub/cropper/CropOverlayView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/canhub/cropper/CropOverlayView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/canhub/cropper/CropOverlayView;->Companion:Lcom/canhub/cropper/CropOverlayView$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lcom/canhub/cropper/CropOverlayView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 88
    iput-boolean p1, p0, Lcom/canhub/cropper/CropOverlayView;->mCenterMoveEnabled:Z

    .line 91
    new-instance p2, Lcom/canhub/cropper/CropWindowHandler;

    invoke-direct {p2}, Lcom/canhub/cropper/CropWindowHandler;-><init>()V

    iput-object p2, p0, Lcom/canhub/cropper/CropOverlayView;->mCropWindowHandler:Lcom/canhub/cropper/CropWindowHandler;

    .line 97
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/canhub/cropper/CropOverlayView;->mDrawRect:Landroid/graphics/RectF;

    .line 121
    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lcom/canhub/cropper/CropOverlayView;->mPath:Landroid/graphics/Path;

    const/16 p2, 0x8

    .line 124
    new-array p2, p2, [F

    iput-object p2, p0, Lcom/canhub/cropper/CropOverlayView;->mBoundsPoints:[F

    .line 127
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/canhub/cropper/CropOverlayView;->mCalcBounds:Landroid/graphics/RectF;

    .line 177
    iget p2, p0, Lcom/canhub/cropper/CropOverlayView;->mAspectRatioX:I

    int-to-float p2, p2

    iget v0, p0, Lcom/canhub/cropper/CropOverlayView;->mAspectRatioY:I

    int-to-float v0, v0

    div-float/2addr p2, v0

    iput p2, p0, Lcom/canhub/cropper/CropOverlayView;->mTargetAspectRatio:F

    .line 197
    const-string p2, ""

    iput-object p2, p0, Lcom/canhub/cropper/CropOverlayView;->cropLabelText:Ljava/lang/String;

    const/high16 p2, 0x41a00000    # 20.0f

    .line 200
    iput p2, p0, Lcom/canhub/cropper/CropOverlayView;->cropLabelTextSize:F

    const/4 p2, -0x1

    .line 203
    iput p2, p0, Lcom/canhub/cropper/CropOverlayView;->cropLabelTextColor:I

    .line 206
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/canhub/cropper/CropOverlayView;->mInitialCropWindowRect:Landroid/graphics/Rect;

    .line 212
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    const/high16 v0, 0x43480000    # 200.0f

    invoke-static {p1, v0, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    iput p1, p0, Lcom/canhub/cropper/CropOverlayView;->maxVerticalGestureExclusion:F

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 34
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/canhub/cropper/CropOverlayView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static final synthetic access$getMCropWindowHandler$p(Lcom/canhub/cropper/CropOverlayView;)Lcom/canhub/cropper/CropWindowHandler;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/canhub/cropper/CropOverlayView;->mCropWindowHandler:Lcom/canhub/cropper/CropWindowHandler;

    return-object p0
.end method

.method private final calculateBounds(Landroid/graphics/RectF;)Z
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1193
    sget-object v2, Lcom/canhub/cropper/BitmapUtils;->INSTANCE:Lcom/canhub/cropper/BitmapUtils;

    iget-object v3, v0, Lcom/canhub/cropper/CropOverlayView;->mBoundsPoints:[F

    invoke-virtual {v2, v3}, Lcom/canhub/cropper/BitmapUtils;->getRectLeft([F)F

    move-result v2

    .line 1194
    sget-object v3, Lcom/canhub/cropper/BitmapUtils;->INSTANCE:Lcom/canhub/cropper/BitmapUtils;

    iget-object v4, v0, Lcom/canhub/cropper/CropOverlayView;->mBoundsPoints:[F

    invoke-virtual {v3, v4}, Lcom/canhub/cropper/BitmapUtils;->getRectTop([F)F

    move-result v3

    .line 1195
    sget-object v4, Lcom/canhub/cropper/BitmapUtils;->INSTANCE:Lcom/canhub/cropper/BitmapUtils;

    iget-object v5, v0, Lcom/canhub/cropper/CropOverlayView;->mBoundsPoints:[F

    invoke-virtual {v4, v5}, Lcom/canhub/cropper/BitmapUtils;->getRectRight([F)F

    move-result v4

    .line 1196
    sget-object v5, Lcom/canhub/cropper/BitmapUtils;->INSTANCE:Lcom/canhub/cropper/BitmapUtils;

    iget-object v6, v0, Lcom/canhub/cropper/CropOverlayView;->mBoundsPoints:[F

    invoke-virtual {v5, v6}, Lcom/canhub/cropper/BitmapUtils;->getRectBottom([F)F

    move-result v5

    .line 1198
    invoke-direct {v0}, Lcom/canhub/cropper/CropOverlayView;->isNonStraightAngleRotated()Z

    move-result v6

    const/4 v7, 0x0

    if-nez v6, :cond_0

    .line 1199
    iget-object v1, v0, Lcom/canhub/cropper/CropOverlayView;->mCalcBounds:Landroid/graphics/RectF;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    return v7

    .line 1202
    :cond_0
    iget-object v6, v0, Lcom/canhub/cropper/CropOverlayView;->mBoundsPoints:[F

    aget v7, v6, v7

    const/4 v8, 0x1

    .line 1203
    aget v9, v6, v8

    const/4 v10, 0x4

    .line 1204
    aget v10, v6, v10

    const/4 v11, 0x5

    .line 1205
    aget v11, v6, v11

    const/4 v12, 0x6

    .line 1206
    aget v12, v6, v12

    const/4 v13, 0x7

    .line 1207
    aget v13, v6, v13

    cmpg-float v14, v13, v9

    const/4 v15, 0x3

    const/16 v16, 0x2

    if-gez v14, :cond_2

    .line 1209
    aget v14, v6, v15

    cmpg-float v15, v9, v14

    if-gez v15, :cond_1

    .line 1212
    aget v7, v6, v16

    move v6, v10

    move v10, v7

    move v7, v6

    move v9, v11

    move v6, v12

    move v11, v14

    move v14, v13

    goto :goto_0

    .line 1221
    :cond_1
    aget v6, v6, v16

    move/from16 v20, v7

    move v7, v6

    move v6, v10

    move/from16 v10, v20

    move/from16 v20, v11

    move v11, v9

    move v9, v14

    move/from16 v14, v20

    goto :goto_0

    .line 1224
    :cond_2
    aget v14, v6, v15

    cmpl-float v15, v9, v14

    if-lez v15, :cond_3

    .line 1225
    aget v6, v6, v16

    move v10, v12

    move v11, v13

    goto :goto_0

    :cond_3
    move v6, v7

    move v14, v9

    move v7, v12

    move v9, v13

    :goto_0
    sub-float/2addr v9, v14

    sub-float/2addr v7, v6

    div-float/2addr v9, v7

    const/high16 v7, -0x40800000    # -1.0f

    div-float/2addr v7, v9

    mul-float v12, v9, v6

    sub-float v12, v14, v12

    mul-float/2addr v6, v7

    sub-float/2addr v14, v6

    mul-float v6, v9, v10

    sub-float v6, v11, v6

    mul-float/2addr v10, v7

    sub-float/2addr v11, v10

    .line 1238
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v10

    iget v13, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v10, v13

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v13

    iget v15, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v13, v15

    div-float/2addr v10, v13

    neg-float v13, v10

    .line 1240
    iget v15, v1, Landroid/graphics/RectF;->top:F

    move/from16 v16, v8

    iget v8, v1, Landroid/graphics/RectF;->left:F

    mul-float/2addr v8, v10

    sub-float/2addr v15, v8

    .line 1241
    iget v8, v1, Landroid/graphics/RectF;->top:F

    move/from16 v17, v6

    iget v6, v1, Landroid/graphics/RectF;->right:F

    mul-float/2addr v6, v13

    sub-float/2addr v8, v6

    sub-float v6, v15, v12

    sub-float v18, v9, v10

    div-float v6, v6, v18

    move/from16 v19, v6

    .line 1244
    iget v6, v1, Landroid/graphics/RectF;->right:F

    cmpg-float v6, v19, v6

    if-gez v6, :cond_4

    move/from16 v6, v19

    goto :goto_1

    :cond_4
    move v6, v2

    :goto_1
    invoke-static {v2, v6}, Ljava/lang/Math;->max(FF)F

    move-result v2

    sub-float v6, v15, v14

    sub-float v10, v7, v10

    div-float/2addr v6, v10

    .line 1248
    iget v10, v1, Landroid/graphics/RectF;->right:F

    cmpg-float v10, v6, v10

    if-gez v10, :cond_5

    goto :goto_2

    :cond_5
    move v6, v2

    :goto_2
    invoke-static {v2, v6}, Ljava/lang/Math;->max(FF)F

    move-result v2

    sub-float v6, v8, v11

    sub-float v10, v7, v13

    div-float/2addr v6, v10

    move/from16 v19, v6

    .line 1252
    iget v6, v1, Landroid/graphics/RectF;->right:F

    cmpg-float v6, v19, v6

    if-gez v6, :cond_6

    move/from16 v6, v19

    goto :goto_3

    :cond_6
    move v6, v2

    :goto_3
    invoke-static {v2, v6}, Ljava/lang/Math;->max(FF)F

    move-result v2

    sub-float v6, v8, v14

    div-float/2addr v6, v10

    .line 1256
    iget v10, v1, Landroid/graphics/RectF;->left:F

    cmpl-float v10, v6, v10

    if-lez v10, :cond_7

    goto :goto_4

    :cond_7
    move v6, v4

    :goto_4
    invoke-static {v4, v6}, Ljava/lang/Math;->min(FF)F

    move-result v4

    sub-float v8, v8, v17

    sub-float v6, v9, v13

    div-float/2addr v8, v6

    .line 1260
    iget v6, v1, Landroid/graphics/RectF;->left:F

    cmpl-float v6, v8, v6

    if-lez v6, :cond_8

    goto :goto_5

    :cond_8
    move v8, v4

    :goto_5
    invoke-static {v4, v8}, Ljava/lang/Math;->min(FF)F

    move-result v4

    sub-float v15, v15, v17

    div-float v15, v15, v18

    .line 1264
    iget v1, v1, Landroid/graphics/RectF;->left:F

    cmpl-float v1, v15, v1

    if-lez v1, :cond_9

    goto :goto_6

    :cond_9
    move v15, v4

    :goto_6
    invoke-static {v4, v15}, Ljava/lang/Math;->min(FF)F

    move-result v1

    mul-float v4, v9, v2

    add-float/2addr v4, v12

    mul-float v6, v7, v1

    add-float/2addr v6, v14

    .line 1266
    invoke-static {v4, v6}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    mul-float/2addr v7, v2

    add-float/2addr v7, v11

    mul-float/2addr v9, v1

    add-float v9, v9, v17

    .line 1267
    invoke-static {v7, v9}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v5, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 1268
    iget-object v5, v0, Lcom/canhub/cropper/CropOverlayView;->mCalcBounds:Landroid/graphics/RectF;

    iput v2, v5, Landroid/graphics/RectF;->left:F

    .line 1269
    iget-object v2, v0, Lcom/canhub/cropper/CropOverlayView;->mCalcBounds:Landroid/graphics/RectF;

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 1270
    iget-object v2, v0, Lcom/canhub/cropper/CropOverlayView;->mCalcBounds:Landroid/graphics/RectF;

    iput v1, v2, Landroid/graphics/RectF;->right:F

    .line 1271
    iget-object v1, v0, Lcom/canhub/cropper/CropOverlayView;->mCalcBounds:Landroid/graphics/RectF;

    iput v4, v1, Landroid/graphics/RectF;->bottom:F

    return v16
.end method

.method private final drawBackground(Landroid/graphics/Canvas;)V
    .locals 12

    .line 730
    iget-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->mCropWindowHandler:Lcom/canhub/cropper/CropWindowHandler;

    invoke-virtual {v0}, Lcom/canhub/cropper/CropWindowHandler;->getRect()Landroid/graphics/RectF;

    move-result-object v0

    .line 731
    sget-object v1, Lcom/canhub/cropper/BitmapUtils;->INSTANCE:Lcom/canhub/cropper/BitmapUtils;

    iget-object v2, p0, Lcom/canhub/cropper/CropOverlayView;->mBoundsPoints:[F

    invoke-virtual {v1, v2}, Lcom/canhub/cropper/BitmapUtils;->getRectLeft([F)F

    move-result v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 732
    sget-object v1, Lcom/canhub/cropper/BitmapUtils;->INSTANCE:Lcom/canhub/cropper/BitmapUtils;

    iget-object v3, p0, Lcom/canhub/cropper/CropOverlayView;->mBoundsPoints:[F

    invoke-virtual {v1, v3}, Lcom/canhub/cropper/BitmapUtils;->getRectTop([F)F

    move-result v1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 733
    sget-object v1, Lcom/canhub/cropper/BitmapUtils;->INSTANCE:Lcom/canhub/cropper/BitmapUtils;

    iget-object v2, p0, Lcom/canhub/cropper/CropOverlayView;->mBoundsPoints:[F

    invoke-virtual {v1, v2}, Lcom/canhub/cropper/BitmapUtils;->getRectRight([F)F

    move-result v1

    invoke-virtual {p0}, Lcom/canhub/cropper/CropOverlayView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 734
    sget-object v1, Lcom/canhub/cropper/BitmapUtils;->INSTANCE:Lcom/canhub/cropper/BitmapUtils;

    iget-object v2, p0, Lcom/canhub/cropper/CropOverlayView;->mBoundsPoints:[F

    invoke-virtual {v1, v2}, Lcom/canhub/cropper/BitmapUtils;->getRectBottom([F)F

    move-result v1

    invoke-virtual {p0}, Lcom/canhub/cropper/CropOverlayView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v7

    .line 735
    iget-object v1, p0, Lcom/canhub/cropper/CropOverlayView;->cropShape:Lcom/canhub/cropper/CropImageView$CropShape;

    if-nez v1, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/canhub/cropper/CropOverlayView$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Lcom/canhub/cropper/CropImageView$CropShape;->ordinal()I

    move-result v1

    aget v1, v2, v1

    :goto_0
    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-eq v1, v9, :cond_2

    if-eq v1, v8, :cond_2

    if-eq v1, v3, :cond_2

    if-ne v1, v2, :cond_1

    .line 764
    iget-object v1, p0, Lcom/canhub/cropper/CropOverlayView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 765
    iget-object v1, p0, Lcom/canhub/cropper/CropOverlayView;->mDrawRect:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    iget v3, v0, Landroid/graphics/RectF;->top:F

    iget v8, v0, Landroid/graphics/RectF;->right:F

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v1, v2, v3, v8, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 767
    iget-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/canhub/cropper/CropOverlayView;->mDrawRect:Landroid/graphics/RectF;

    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 768
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 771
    iget-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipOutPath(Landroid/graphics/Path;)Z

    .line 777
    iget-object v8, p0, Lcom/canhub/cropper/CropOverlayView;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    move-object v6, v3

    .line 778
    invoke-virtual {v6}, Landroid/graphics/Canvas;->restore()V

    return-void

    .line 780
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Unrecognized crop shape"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    move v1, v3

    move-object v3, p1

    move p1, v7

    .line 740
    invoke-direct {p0}, Lcom/canhub/cropper/CropOverlayView;->isNonStraightAngleRotated()Z

    move-result v7

    if-nez v7, :cond_3

    .line 741
    iget v7, v0, Landroid/graphics/RectF;->top:F

    iget-object v8, p0, Lcom/canhub/cropper/CropOverlayView;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 742
    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v8, p0, Lcom/canhub/cropper/CropOverlayView;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move v7, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    move v9, v6

    .line 743
    iget v5, v0, Landroid/graphics/RectF;->top:F

    iget v6, v0, Landroid/graphics/RectF;->left:F

    iget v7, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v8, p0, Lcom/canhub/cropper/CropOverlayView;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 744
    iget v7, v0, Landroid/graphics/RectF;->right:F

    iget v8, v0, Landroid/graphics/RectF;->top:F

    iget v10, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v11, p0, Lcom/canhub/cropper/CropOverlayView;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v6, v3

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void

    :cond_3
    move v7, p1

    .line 746
    iget-object p1, p0, Lcom/canhub/cropper/CropOverlayView;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    .line 747
    iget-object p1, p0, Lcom/canhub/cropper/CropOverlayView;->mPath:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->mBoundsPoints:[F

    const/4 v10, 0x0

    aget v10, v0, v10

    aget v0, v0, v9

    invoke-virtual {p1, v10, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 748
    iget-object p1, p0, Lcom/canhub/cropper/CropOverlayView;->mPath:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->mBoundsPoints:[F

    aget v8, v0, v8

    aget v0, v0, v1

    invoke-virtual {p1, v8, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 749
    iget-object p1, p0, Lcom/canhub/cropper/CropOverlayView;->mPath:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->mBoundsPoints:[F

    aget v1, v0, v2

    const/4 v2, 0x5

    aget v0, v0, v2

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 750
    iget-object p1, p0, Lcom/canhub/cropper/CropOverlayView;->mPath:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->mBoundsPoints:[F

    const/4 v1, 0x6

    aget v1, v0, v1

    const/4 v2, 0x7

    aget v0, v0, v2

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 751
    iget-object p1, p0, Lcom/canhub/cropper/CropOverlayView;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    .line 752
    invoke-virtual {v3}, Landroid/graphics/Canvas;->save()I

    .line 755
    iget-object p1, p0, Lcom/canhub/cropper/CropOverlayView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v3, p1}, Landroid/graphics/Canvas;->clipOutPath(Landroid/graphics/Path;)Z

    .line 760
    iget-object v8, p0, Lcom/canhub/cropper/CropOverlayView;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 761
    invoke-virtual {v3}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private final drawBorders(Landroid/graphics/Canvas;)V
    .locals 4

    .line 867
    iget-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->mBorderPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_3

    .line 868
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    .line 869
    iget-object v1, p0, Lcom/canhub/cropper/CropOverlayView;->mCropWindowHandler:Lcom/canhub/cropper/CropWindowHandler;

    invoke-virtual {v1}, Lcom/canhub/cropper/CropWindowHandler;->getRect()Landroid/graphics/RectF;

    move-result-object v1

    const/4 v2, 0x2

    int-to-float v3, v2

    div-float/2addr v0, v3

    .line 870
    invoke-virtual {v1, v0, v0}, Landroid/graphics/RectF;->inset(FF)V

    .line 872
    iget-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->cropShape:Lcom/canhub/cropper/CropImageView$CropShape;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    sget-object v3, Lcom/canhub/cropper/CropOverlayView$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/canhub/cropper/CropImageView$CropShape;->ordinal()I

    move-result v0

    aget v0, v3, v0

    :goto_0
    const/4 v3, 0x1

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    .line 879
    iget-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void

    .line 880
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Unrecognized crop shape"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 877
    :cond_2
    iget-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_3
    return-void
.end method

.method private final drawCircleShape(Landroid/graphics/Canvas;Landroid/graphics/RectF;FF)V
    .locals 3

    .line 1071
    iget v0, p2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, p3

    .line 1072
    iget v1, p2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, p3

    .line 1074
    iget-object v2, p0, Lcom/canhub/cropper/CropOverlayView;->mBorderCornerPaint:Landroid/graphics/Paint;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1070
    invoke-virtual {p1, v0, v1, p4, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1078
    iget v0, p2, Landroid/graphics/RectF;->right:F

    add-float/2addr v0, p3

    .line 1079
    iget v1, p2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, p3

    .line 1081
    iget-object v2, p0, Lcom/canhub/cropper/CropOverlayView;->mBorderCornerPaint:Landroid/graphics/Paint;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1077
    invoke-virtual {p1, v0, v1, p4, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1085
    iget v0, p2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, p3

    .line 1086
    iget v1, p2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v1, p3

    .line 1088
    iget-object v2, p0, Lcom/canhub/cropper/CropOverlayView;->mBorderCornerPaint:Landroid/graphics/Paint;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1084
    invoke-virtual {p1, v0, v1, p4, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1092
    iget v0, p2, Landroid/graphics/RectF;->right:F

    add-float/2addr v0, p3

    .line 1093
    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr p2, p3

    .line 1095
    iget-object p3, p0, Lcom/canhub/cropper/CropOverlayView;->mBorderCornerPaint:Landroid/graphics/Paint;

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1091
    invoke-virtual {p1, v0, p2, p4, p3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private final drawCornerBasedOnShape(Landroid/graphics/Canvas;Landroid/graphics/RectF;FF)V
    .locals 15

    move-object/from16 v2, p2

    .line 923
    iget-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->cropShape:Lcom/canhub/cropper/CropImageView$CropShape;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/canhub/cropper/CropOverlayView$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/canhub/cropper/CropImageView$CropShape;->ordinal()I

    move-result v0

    aget v0, v1, v0

    :goto_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 928
    invoke-direct/range {p0 .. p4}, Lcom/canhub/cropper/CropOverlayView;->drawLineShape(Landroid/graphics/Canvas;Landroid/graphics/RectF;FF)V

    return-void

    .line 966
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unrecognized crop shape"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 952
    :cond_2
    iget v0, v2, Landroid/graphics/RectF;->left:F

    sub-float v4, v0, p3

    .line 953
    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    iget v1, p0, Lcom/canhub/cropper/CropOverlayView;->mBorderCornerLength:F

    sub-float v5, v0, v1

    .line 954
    iget v0, v2, Landroid/graphics/RectF;->left:F

    sub-float v6, v0, p3

    .line 955
    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    iget v1, p0, Lcom/canhub/cropper/CropOverlayView;->mBorderCornerLength:F

    add-float v7, v0, v1

    .line 956
    iget-object v8, p0, Lcom/canhub/cropper/CropOverlayView;->mBorderCornerPaint:Landroid/graphics/Paint;

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object/from16 v3, p1

    .line 951
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 959
    iget v0, v2, Landroid/graphics/RectF;->right:F

    add-float v10, v0, p3

    .line 960
    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    iget v1, p0, Lcom/canhub/cropper/CropOverlayView;->mBorderCornerLength:F

    sub-float v11, v0, v1

    .line 961
    iget v0, v2, Landroid/graphics/RectF;->right:F

    add-float v12, v0, p3

    .line 962
    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    iget v1, p0, Lcom/canhub/cropper/CropOverlayView;->mBorderCornerLength:F

    add-float v13, v0, v1

    .line 963
    iget-object v14, p0, Lcom/canhub/cropper/CropOverlayView;->mBorderCornerPaint:Landroid/graphics/Paint;

    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object/from16 v9, p1

    .line 958
    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void

    .line 934
    :cond_3
    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget v1, p0, Lcom/canhub/cropper/CropOverlayView;->mBorderCornerLength:F

    sub-float v10, v0, v1

    .line 935
    iget v0, v2, Landroid/graphics/RectF;->top:F

    sub-float v11, v0, p3

    .line 936
    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget v1, p0, Lcom/canhub/cropper/CropOverlayView;->mBorderCornerLength:F

    add-float v12, v0, v1

    .line 937
    iget v0, v2, Landroid/graphics/RectF;->top:F

    sub-float v13, v0, p3

    .line 938
    iget-object v14, p0, Lcom/canhub/cropper/CropOverlayView;->mBorderCornerPaint:Landroid/graphics/Paint;

    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object/from16 v9, p1

    .line 933
    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 941
    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget v1, p0, Lcom/canhub/cropper/CropOverlayView;->mBorderCornerLength:F

    sub-float v10, v0, v1

    .line 942
    iget v0, v2, Landroid/graphics/RectF;->bottom:F

    add-float v11, v0, p3

    .line 943
    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget v1, p0, Lcom/canhub/cropper/CropOverlayView;->mBorderCornerLength:F

    add-float v12, v0, v1

    .line 944
    iget v0, v2, Landroid/graphics/RectF;->bottom:F

    add-float v13, v0, p3

    .line 945
    iget-object v14, p0, Lcom/canhub/cropper/CropOverlayView;->mBorderCornerPaint:Landroid/graphics/Paint;

    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 940
    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void

    .line 925
    :cond_4
    iget v5, p0, Lcom/canhub/cropper/CropOverlayView;->mCropCornerRadius:F

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/canhub/cropper/CropOverlayView;->drawCornerShape(Landroid/graphics/Canvas;Landroid/graphics/RectF;FFF)V

    return-void
.end method

.method private final drawCornerShape(Landroid/graphics/Canvas;Landroid/graphics/RectF;FFF)V
    .locals 3

    .line 1051
    iget-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->cornerShape:Lcom/canhub/cropper/CropImageView$CropCornerShape;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/canhub/cropper/CropOverlayView$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v0}, Lcom/canhub/cropper/CropImageView$CropCornerShape;->ordinal()I

    move-result v0

    aget v0, v2, v0

    :goto_0
    if-eq v0, v1, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 p5, 0x2

    if-ne v0, p5, :cond_1

    .line 1055
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/canhub/cropper/CropOverlayView;->drawLineShape(Landroid/graphics/Canvas;Landroid/graphics/RectF;FF)V

    return-void

    .line 1051
    :cond_1
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 1053
    :cond_2
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/canhub/cropper/CropOverlayView;->drawCircleShape(Landroid/graphics/Canvas;Landroid/graphics/RectF;FF)V

    :cond_3
    return-void
.end method

.method private final drawCorners(Landroid/graphics/Canvas;)V
    .locals 6

    .line 887
    iget-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->mBorderCornerPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_5

    .line 888
    iget-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->mBorderPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 889
    :goto_0
    iget-object v1, p0, Lcom/canhub/cropper/CropOverlayView;->mBorderCornerPaint:Landroid/graphics/Paint;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    sub-float v0, v1, v0

    const/4 v2, 0x2

    int-to-float v3, v2

    div-float/2addr v0, v3

    div-float/2addr v1, v3

    add-float v3, v1, v0

    .line 892
    iget-object v4, p0, Lcom/canhub/cropper/CropOverlayView;->cropShape:Lcom/canhub/cropper/CropImageView$CropShape;

    if-nez v4, :cond_1

    const/4 v4, -0x1

    goto :goto_1

    :cond_1
    sget-object v5, Lcom/canhub/cropper/CropOverlayView$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v4}, Lcom/canhub/cropper/CropImageView$CropShape;->ordinal()I

    move-result v4

    aget v4, v5, v4

    :goto_1
    const/4 v5, 0x1

    if-eq v4, v5, :cond_3

    if-eq v4, v2, :cond_3

    const/4 v2, 0x3

    if-eq v4, v2, :cond_3

    const/4 v2, 0x4

    if-ne v4, v2, :cond_2

    goto :goto_2

    .line 899
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Unrecognized crop shape"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 897
    :cond_3
    iget v2, p0, Lcom/canhub/cropper/CropOverlayView;->mBorderCornerOffset:F

    add-float/2addr v1, v2

    .line 901
    :goto_2
    iget-object v2, p0, Lcom/canhub/cropper/CropOverlayView;->mCropWindowHandler:Lcom/canhub/cropper/CropWindowHandler;

    invoke-virtual {v2}, Lcom/canhub/cropper/CropWindowHandler;->getRect()Landroid/graphics/RectF;

    move-result-object v2

    .line 902
    invoke-virtual {v2, v1, v1}, Landroid/graphics/RectF;->inset(FF)V

    .line 903
    invoke-direct {p0, p1, v2, v0, v3}, Lcom/canhub/cropper/CropOverlayView;->drawCornerBasedOnShape(Landroid/graphics/Canvas;Landroid/graphics/RectF;FF)V

    .line 904
    iget-object v1, p0, Lcom/canhub/cropper/CropOverlayView;->cornerShape:Lcom/canhub/cropper/CropImageView$CropCornerShape;

    sget-object v4, Lcom/canhub/cropper/CropImageView$CropCornerShape;->OVAL:Lcom/canhub/cropper/CropImageView$CropCornerShape;

    if-ne v1, v4, :cond_5

    .line 906
    iget-object v1, p0, Lcom/canhub/cropper/CropOverlayView;->mCircleCornerFillColor:Ljava/lang/Integer;

    if-eqz v1, :cond_4

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    sget-object v4, Lcom/canhub/cropper/CropOverlayView;->Companion:Lcom/canhub/cropper/CropOverlayView$Companion;

    invoke-virtual {v4, v1}, Lcom/canhub/cropper/CropOverlayView$Companion;->getNewPaintWithFill$cropper_release(I)Landroid/graphics/Paint;

    move-result-object v1

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    :goto_3
    iput-object v1, p0, Lcom/canhub/cropper/CropOverlayView;->mBorderCornerPaint:Landroid/graphics/Paint;

    .line 907
    invoke-direct {p0, p1, v2, v0, v3}, Lcom/canhub/cropper/CropOverlayView;->drawCornerBasedOnShape(Landroid/graphics/Canvas;Landroid/graphics/RectF;FF)V

    :cond_5
    return-void
.end method

.method private final drawCropLabelText(Landroid/graphics/Canvas;)V
    .locals 4

    .line 715
    iget-boolean v0, p0, Lcom/canhub/cropper/CropOverlayView;->isCropLabelEnabled:Z

    if-eqz v0, :cond_1

    .line 716
    iget-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->mCropWindowHandler:Lcom/canhub/cropper/CropWindowHandler;

    invoke-virtual {v0}, Lcom/canhub/cropper/CropWindowHandler;->getRect()Landroid/graphics/RectF;

    move-result-object v0

    .line 717
    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v2, v0, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, v2

    const/4 v2, 0x2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 718
    iget v0, v0, Landroid/graphics/RectF;->top:F

    const/16 v2, 0x32

    int-to-float v2, v2

    sub-float/2addr v0, v2

    .line 719
    iget-object v2, p0, Lcom/canhub/cropper/CropOverlayView;->textLabelPaint:Landroid/graphics/Paint;

    if-eqz v2, :cond_0

    .line 720
    iget v3, p0, Lcom/canhub/cropper/CropOverlayView;->cropLabelTextSize:F

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 721
    iget v3, p0, Lcom/canhub/cropper/CropOverlayView;->cropLabelTextColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 723
    :cond_0
    iget-object v2, p0, Lcom/canhub/cropper/CropOverlayView;->cropLabelText:Ljava/lang/String;

    iget-object v3, p0, Lcom/canhub/cropper/CropOverlayView;->textLabelPaint:Landroid/graphics/Paint;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, v2, v1, v0, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 724
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    :cond_1
    return-void
.end method

.method private final drawGuidelines(Landroid/graphics/Canvas;)V
    .locals 20

    move-object/from16 v0, p0

    .line 789
    iget-object v1, v0, Lcom/canhub/cropper/CropOverlayView;->mGuidelinePaint:Landroid/graphics/Paint;

    if-eqz v1, :cond_4

    .line 790
    iget-object v1, v0, Lcom/canhub/cropper/CropOverlayView;->mBorderPaint:Landroid/graphics/Paint;

    if-eqz v1, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 791
    :goto_0
    iget-object v2, v0, Lcom/canhub/cropper/CropOverlayView;->mCropWindowHandler:Lcom/canhub/cropper/CropWindowHandler;

    invoke-virtual {v2}, Lcom/canhub/cropper/CropWindowHandler;->getRect()Landroid/graphics/RectF;

    move-result-object v2

    .line 792
    invoke-virtual {v2, v1, v1}, Landroid/graphics/RectF;->inset(FF)V

    .line 793
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v3

    const/4 v4, 0x3

    int-to-float v5, v4

    div-float/2addr v3, v5

    .line 794
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v6

    div-float/2addr v6, v5

    .line 799
    iget-object v5, v0, Lcom/canhub/cropper/CropOverlayView;->cropShape:Lcom/canhub/cropper/CropImageView$CropShape;

    if-nez v5, :cond_1

    const/4 v5, -0x1

    goto :goto_1

    :cond_1
    sget-object v7, Lcom/canhub/cropper/CropOverlayView$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v5}, Lcom/canhub/cropper/CropImageView$CropShape;->ordinal()I

    move-result v5

    aget v5, v7, v5

    :goto_1
    const/4 v7, 0x1

    if-eq v5, v7, :cond_3

    const/4 v7, 0x2

    if-eq v5, v7, :cond_3

    if-eq v5, v4, :cond_3

    const/4 v4, 0x4

    if-ne v5, v4, :cond_2

    .line 801
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v4

    int-to-float v5, v7

    div-float/2addr v4, v5

    sub-float/2addr v4, v1

    .line 802
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v7

    div-float/2addr v7, v5

    sub-float/2addr v7, v1

    .line 804
    iget v1, v2, Landroid/graphics/RectF;->left:F

    add-float v9, v1, v3

    .line 805
    iget v1, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v3

    float-to-double v10, v7

    sub-float v3, v4, v3

    div-float/2addr v3, v4

    float-to-double v12, v3

    .line 806
    invoke-static {v12, v13}, Ljava/lang/Math;->acos(D)D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    double-to-float v3, v10

    .line 811
    iget v5, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v5, v7

    sub-float v10, v5, v3

    .line 813
    iget v5, v2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v5, v7

    add-float v12, v5, v3

    .line 814
    iget-object v13, v0, Lcom/canhub/cropper/CropOverlayView;->mGuidelinePaint:Landroid/graphics/Paint;

    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move v11, v9

    move-object/from16 v8, p1

    .line 809
    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 819
    iget v5, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v5, v7

    sub-float v12, v5, v3

    .line 821
    iget v5, v2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v5, v7

    add-float v14, v5, v3

    .line 822
    iget-object v15, v0, Lcom/canhub/cropper/CropOverlayView;->mGuidelinePaint:Landroid/graphics/Paint;

    invoke-static {v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move v13, v1

    move-object/from16 v10, p1

    move v11, v1

    .line 817
    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 825
    iget v1, v2, Landroid/graphics/RectF;->top:F

    add-float v16, v1, v6

    .line 826
    iget v1, v2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, v6

    float-to-double v8, v4

    sub-float v3, v7, v6

    div-float/2addr v3, v7

    float-to-double v5, v3

    .line 827
    invoke-static {v5, v6}, Ljava/lang/Math;->asin(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    mul-double/2addr v8, v5

    double-to-float v3, v8

    .line 830
    iget v5, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v5, v4

    sub-float v15, v5, v3

    .line 832
    iget v5, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v5, v4

    add-float v17, v5, v3

    .line 834
    iget-object v5, v0, Lcom/canhub/cropper/CropOverlayView;->mGuidelinePaint:Landroid/graphics/Paint;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move/from16 v18, v16

    move-object/from16 v14, p1

    move-object/from16 v19, v5

    .line 829
    invoke-virtual/range {v14 .. v19}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 838
    iget v5, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v5, v4

    sub-float v15, v5, v3

    .line 840
    iget v2, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v4

    add-float v17, v2, v3

    .line 842
    iget-object v2, v0, Lcom/canhub/cropper/CropOverlayView;->mGuidelinePaint:Landroid/graphics/Paint;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move/from16 v18, v1

    move/from16 v16, v1

    move-object/from16 v19, v2

    .line 837
    invoke-virtual/range {v14 .. v19}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void

    .line 860
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unrecognized crop shape"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 850
    :cond_3
    iget v1, v2, Landroid/graphics/RectF;->left:F

    add-float v15, v1, v3

    .line 851
    iget v1, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v3

    .line 852
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v5, v0, Lcom/canhub/cropper/CropOverlayView;->mGuidelinePaint:Landroid/graphics/Paint;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move/from16 v17, v15

    move-object/from16 v14, p1

    move/from16 v16, v3

    move/from16 v18, v4

    move-object/from16 v19, v5

    invoke-virtual/range {v14 .. v19}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 853
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v5, v0, Lcom/canhub/cropper/CropOverlayView;->mGuidelinePaint:Landroid/graphics/Paint;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move/from16 v17, v1

    move v15, v1

    move/from16 v16, v3

    move/from16 v18, v4

    move-object/from16 v19, v5

    invoke-virtual/range {v14 .. v19}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 855
    iget v1, v2, Landroid/graphics/RectF;->top:F

    add-float v16, v1, v6

    .line 856
    iget v1, v2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, v6

    .line 857
    iget v15, v2, Landroid/graphics/RectF;->left:F

    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget-object v4, v0, Lcom/canhub/cropper/CropOverlayView;->mGuidelinePaint:Landroid/graphics/Paint;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move/from16 v18, v16

    move/from16 v17, v3

    move-object/from16 v19, v4

    invoke-virtual/range {v14 .. v19}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 858
    iget v15, v2, Landroid/graphics/RectF;->left:F

    iget v2, v2, Landroid/graphics/RectF;->right:F

    iget-object v3, v0, Lcom/canhub/cropper/CropOverlayView;->mGuidelinePaint:Landroid/graphics/Paint;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move/from16 v18, v1

    move/from16 v16, v1

    move/from16 v17, v2

    move-object/from16 v19, v3

    invoke-virtual/range {v14 .. v19}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_4
    return-void
.end method

.method private final drawLineShape(Landroid/graphics/Canvas;Landroid/graphics/RectF;FF)V
    .locals 14

    move-object/from16 v0, p2

    .line 981
    iget v1, v0, Landroid/graphics/RectF;->left:F

    sub-float v3, v1, p3

    .line 982
    iget v1, v0, Landroid/graphics/RectF;->top:F

    sub-float v4, v1, p4

    .line 983
    iget v1, v0, Landroid/graphics/RectF;->left:F

    sub-float v5, v1, p3

    .line 984
    iget v1, v0, Landroid/graphics/RectF;->top:F

    iget v2, p0, Lcom/canhub/cropper/CropOverlayView;->mBorderCornerLength:F

    add-float v6, v1, v2

    .line 985
    iget-object v7, p0, Lcom/canhub/cropper/CropOverlayView;->mBorderCornerPaint:Landroid/graphics/Paint;

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v2, p1

    .line 980
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 988
    iget v1, v0, Landroid/graphics/RectF;->left:F

    sub-float v9, v1, p4

    .line 989
    iget v1, v0, Landroid/graphics/RectF;->top:F

    sub-float v10, v1, p3

    .line 990
    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/canhub/cropper/CropOverlayView;->mBorderCornerLength:F

    add-float v11, v1, v2

    .line 991
    iget v1, v0, Landroid/graphics/RectF;->top:F

    sub-float v12, v1, p3

    .line 992
    iget-object v13, p0, Lcom/canhub/cropper/CropOverlayView;->mBorderCornerPaint:Landroid/graphics/Paint;

    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v8, p1

    .line 987
    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 996
    iget v1, v0, Landroid/graphics/RectF;->right:F

    add-float v9, v1, p3

    .line 997
    iget v1, v0, Landroid/graphics/RectF;->top:F

    sub-float v10, v1, p4

    .line 998
    iget v1, v0, Landroid/graphics/RectF;->right:F

    add-float v11, v1, p3

    .line 999
    iget v1, v0, Landroid/graphics/RectF;->top:F

    iget v2, p0, Lcom/canhub/cropper/CropOverlayView;->mBorderCornerLength:F

    add-float v12, v1, v2

    .line 1000
    iget-object v13, p0, Lcom/canhub/cropper/CropOverlayView;->mBorderCornerPaint:Landroid/graphics/Paint;

    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 995
    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1003
    iget v1, v0, Landroid/graphics/RectF;->right:F

    add-float v9, v1, p4

    .line 1004
    iget v1, v0, Landroid/graphics/RectF;->top:F

    sub-float v10, v1, p3

    .line 1005
    iget v1, v0, Landroid/graphics/RectF;->right:F

    iget v2, p0, Lcom/canhub/cropper/CropOverlayView;->mBorderCornerLength:F

    sub-float v11, v1, v2

    .line 1006
    iget v1, v0, Landroid/graphics/RectF;->top:F

    sub-float v12, v1, p3

    .line 1007
    iget-object v13, p0, Lcom/canhub/cropper/CropOverlayView;->mBorderCornerPaint:Landroid/graphics/Paint;

    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1002
    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1011
    iget v1, v0, Landroid/graphics/RectF;->left:F

    sub-float v9, v1, p3

    .line 1012
    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    add-float v10, v1, p4

    .line 1013
    iget v1, v0, Landroid/graphics/RectF;->left:F

    sub-float v11, v1, p3

    .line 1014
    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    iget v2, p0, Lcom/canhub/cropper/CropOverlayView;->mBorderCornerLength:F

    sub-float v12, v1, v2

    .line 1015
    iget-object v13, p0, Lcom/canhub/cropper/CropOverlayView;->mBorderCornerPaint:Landroid/graphics/Paint;

    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1010
    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1018
    iget v1, v0, Landroid/graphics/RectF;->left:F

    sub-float v9, v1, p4

    .line 1019
    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    add-float v10, v1, p3

    .line 1020
    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/canhub/cropper/CropOverlayView;->mBorderCornerLength:F

    add-float v11, v1, v2

    .line 1021
    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    add-float v12, v1, p3

    .line 1022
    iget-object v13, p0, Lcom/canhub/cropper/CropOverlayView;->mBorderCornerPaint:Landroid/graphics/Paint;

    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1017
    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1026
    iget v1, v0, Landroid/graphics/RectF;->right:F

    add-float v9, v1, p3

    .line 1027
    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    add-float v10, v1, p4

    .line 1028
    iget v1, v0, Landroid/graphics/RectF;->right:F

    add-float v11, v1, p3

    .line 1029
    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    iget v2, p0, Lcom/canhub/cropper/CropOverlayView;->mBorderCornerLength:F

    sub-float v12, v1, v2

    .line 1030
    iget-object v13, p0, Lcom/canhub/cropper/CropOverlayView;->mBorderCornerPaint:Landroid/graphics/Paint;

    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1025
    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1033
    iget v1, v0, Landroid/graphics/RectF;->right:F

    add-float v9, v1, p4

    .line 1034
    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    add-float v10, v1, p3

    .line 1035
    iget v1, v0, Landroid/graphics/RectF;->right:F

    iget v2, p0, Lcom/canhub/cropper/CropOverlayView;->mBorderCornerLength:F

    sub-float v11, v1, v2

    .line 1036
    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    add-float v12, v0, p3

    .line 1037
    iget-object v13, p0, Lcom/canhub/cropper/CropOverlayView;->mBorderCornerPaint:Landroid/graphics/Paint;

    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1032
    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private final fixCropWindowRectByRules(Landroid/graphics/RectF;)V
    .locals 6

    .line 602
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lcom/canhub/cropper/CropOverlayView;->mCropWindowHandler:Lcom/canhub/cropper/CropWindowHandler;

    invoke-virtual {v1}, Lcom/canhub/cropper/CropWindowHandler;->getMinCropWidth()F

    move-result v1

    cmpg-float v0, v0, v1

    const/4 v1, 0x2

    if-gez v0, :cond_0

    .line 603
    iget-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->mCropWindowHandler:Lcom/canhub/cropper/CropWindowHandler;

    invoke-virtual {v0}, Lcom/canhub/cropper/CropWindowHandler;->getMinCropWidth()F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v2

    sub-float/2addr v0, v2

    int-to-float v2, v1

    div-float/2addr v0, v2

    .line 604
    iget v2, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v0

    iput v2, p1, Landroid/graphics/RectF;->left:F

    .line 605
    iget v2, p1, Landroid/graphics/RectF;->right:F

    add-float/2addr v2, v0

    iput v2, p1, Landroid/graphics/RectF;->right:F

    .line 608
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget-object v2, p0, Lcom/canhub/cropper/CropOverlayView;->mCropWindowHandler:Lcom/canhub/cropper/CropWindowHandler;

    invoke-virtual {v2}, Lcom/canhub/cropper/CropWindowHandler;->getMinCropHeight()F

    move-result v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    .line 609
    iget-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->mCropWindowHandler:Lcom/canhub/cropper/CropWindowHandler;

    invoke-virtual {v0}, Lcom/canhub/cropper/CropWindowHandler;->getMinCropHeight()F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v2

    sub-float/2addr v0, v2

    int-to-float v2, v1

    div-float/2addr v0, v2

    .line 610
    iget v2, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, v0

    iput v2, p1, Landroid/graphics/RectF;->top:F

    .line 611
    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v2, v0

    iput v2, p1, Landroid/graphics/RectF;->bottom:F

    .line 614
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v2, p0, Lcom/canhub/cropper/CropOverlayView;->mCropWindowHandler:Lcom/canhub/cropper/CropWindowHandler;

    invoke-virtual {v2}, Lcom/canhub/cropper/CropWindowHandler;->getMaxCropWidth()F

    move-result v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    .line 615
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v2, p0, Lcom/canhub/cropper/CropOverlayView;->mCropWindowHandler:Lcom/canhub/cropper/CropWindowHandler;

    invoke-virtual {v2}, Lcom/canhub/cropper/CropWindowHandler;->getMaxCropWidth()F

    move-result v2

    sub-float/2addr v0, v2

    int-to-float v2, v1

    div-float/2addr v0, v2

    .line 616
    iget v2, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v0

    iput v2, p1, Landroid/graphics/RectF;->left:F

    .line 617
    iget v2, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v0

    iput v2, p1, Landroid/graphics/RectF;->right:F

    .line 620
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget-object v2, p0, Lcom/canhub/cropper/CropOverlayView;->mCropWindowHandler:Lcom/canhub/cropper/CropWindowHandler;

    invoke-virtual {v2}, Lcom/canhub/cropper/CropWindowHandler;->getMaxCropHeight()F

    move-result v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_3

    .line 621
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget-object v2, p0, Lcom/canhub/cropper/CropOverlayView;->mCropWindowHandler:Lcom/canhub/cropper/CropWindowHandler;

    invoke-virtual {v2}, Lcom/canhub/cropper/CropWindowHandler;->getMaxCropHeight()F

    move-result v2

    sub-float/2addr v0, v2

    int-to-float v2, v1

    div-float/2addr v0, v2

    .line 622
    iget v2, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v0

    iput v2, p1, Landroid/graphics/RectF;->top:F

    .line 623
    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v2, v0

    iput v2, p1, Landroid/graphics/RectF;->bottom:F

    .line 626
    :cond_3
    invoke-direct {p0, p1}, Lcom/canhub/cropper/CropOverlayView;->calculateBounds(Landroid/graphics/RectF;)Z

    .line 628
    iget-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->mCalcBounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_7

    iget-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->mCalcBounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_7

    .line 629
    iget-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->mCalcBounds:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 630
    iget-object v3, p0, Lcom/canhub/cropper/CropOverlayView;->mCalcBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 631
    iget-object v3, p0, Lcom/canhub/cropper/CropOverlayView;->mCalcBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    invoke-virtual {p0}, Lcom/canhub/cropper/CropOverlayView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 632
    iget-object v4, p0, Lcom/canhub/cropper/CropOverlayView;->mCalcBounds:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0}, Lcom/canhub/cropper/CropOverlayView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 634
    iget v5, p1, Landroid/graphics/RectF;->left:F

    cmpg-float v5, v5, v0

    if-gez v5, :cond_4

    iput v0, p1, Landroid/graphics/RectF;->left:F

    .line 635
    :cond_4
    iget v0, p1, Landroid/graphics/RectF;->top:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_5

    iput v2, p1, Landroid/graphics/RectF;->top:F

    .line 636
    :cond_5
    iget v0, p1, Landroid/graphics/RectF;->right:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_6

    iput v3, p1, Landroid/graphics/RectF;->right:F

    .line 637
    :cond_6
    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    cmpl-float v0, v0, v4

    if-lez v0, :cond_7

    iput v4, p1, Landroid/graphics/RectF;->bottom:F

    .line 640
    :cond_7
    iget-boolean v0, p0, Lcom/canhub/cropper/CropOverlayView;->isFixAspectRatio:Z

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v2

    iget v3, p0, Lcom/canhub/cropper/CropOverlayView;->mTargetAspectRatio:F

    mul-float/2addr v2, v3

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v2, v0

    const-wide v4, 0x3fb999999999999aL    # 0.1

    cmpl-double v0, v2, v4

    if-lez v0, :cond_9

    .line 641
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v2

    iget v3, p0, Lcom/canhub/cropper/CropOverlayView;->mTargetAspectRatio:F

    mul-float/2addr v2, v3

    cmpl-float v0, v0, v2

    if-lez v0, :cond_8

    .line 642
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget v2, p0, Lcom/canhub/cropper/CropOverlayView;->mTargetAspectRatio:F

    mul-float/2addr v0, v2

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v2

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 643
    iget v1, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v0

    iput v1, p1, Landroid/graphics/RectF;->left:F

    .line 644
    iget v1, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v0

    iput v1, p1, Landroid/graphics/RectF;->right:F

    return-void

    .line 646
    :cond_8
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget v2, p0, Lcom/canhub/cropper/CropOverlayView;->mTargetAspectRatio:F

    div-float/2addr v0, v2

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v2

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 647
    iget v1, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, v0

    iput v1, p1, Landroid/graphics/RectF;->top:F

    .line 648
    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, v0

    iput v1, p1, Landroid/graphics/RectF;->bottom:F

    :cond_9
    return-void
.end method

.method private final initCropWindow()V
    .locals 10

    .line 532
    sget-object v0, Lcom/canhub/cropper/BitmapUtils;->INSTANCE:Lcom/canhub/cropper/BitmapUtils;

    iget-object v1, p0, Lcom/canhub/cropper/CropOverlayView;->mBoundsPoints:[F

    invoke-virtual {v0, v1}, Lcom/canhub/cropper/BitmapUtils;->getRectLeft([F)F

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 533
    sget-object v2, Lcom/canhub/cropper/BitmapUtils;->INSTANCE:Lcom/canhub/cropper/BitmapUtils;

    iget-object v3, p0, Lcom/canhub/cropper/CropOverlayView;->mBoundsPoints:[F

    invoke-virtual {v2, v3}, Lcom/canhub/cropper/BitmapUtils;->getRectTop([F)F

    move-result v2

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 534
    sget-object v2, Lcom/canhub/cropper/BitmapUtils;->INSTANCE:Lcom/canhub/cropper/BitmapUtils;

    iget-object v3, p0, Lcom/canhub/cropper/CropOverlayView;->mBoundsPoints:[F

    invoke-virtual {v2, v3}, Lcom/canhub/cropper/BitmapUtils;->getRectRight([F)F

    move-result v2

    invoke-virtual {p0}, Lcom/canhub/cropper/CropOverlayView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 535
    sget-object v3, Lcom/canhub/cropper/BitmapUtils;->INSTANCE:Lcom/canhub/cropper/BitmapUtils;

    iget-object v4, p0, Lcom/canhub/cropper/CropOverlayView;->mBoundsPoints:[F

    invoke-virtual {v3, v4}, Lcom/canhub/cropper/BitmapUtils;->getRectBottom([F)F

    move-result v3

    invoke-virtual {p0}, Lcom/canhub/cropper/CropOverlayView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    cmpg-float v4, v2, v0

    if-lez v4, :cond_4

    cmpg-float v4, v3, v1

    if-gtz v4, :cond_0

    goto/16 :goto_1

    .line 537
    :cond_0
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    const/4 v5, 0x1

    .line 539
    iput-boolean v5, p0, Lcom/canhub/cropper/CropOverlayView;->initializedCropWindow:Z

    .line 540
    iget v5, p0, Lcom/canhub/cropper/CropOverlayView;->mInitialCropWindowPaddingRatio:F

    sub-float v6, v2, v0

    mul-float v7, v5, v6

    sub-float v8, v3, v1

    mul-float/2addr v5, v8

    .line 542
    iget-object v9, p0, Lcom/canhub/cropper/CropOverlayView;->mInitialCropWindowRect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    if-lez v9, :cond_1

    iget-object v9, p0, Lcom/canhub/cropper/CropOverlayView;->mInitialCropWindowRect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    if-lez v9, :cond_1

    .line 545
    iget-object v5, p0, Lcom/canhub/cropper/CropOverlayView;->mInitialCropWindowRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/canhub/cropper/CropOverlayView;->mCropWindowHandler:Lcom/canhub/cropper/CropWindowHandler;

    invoke-virtual {v6}, Lcom/canhub/cropper/CropWindowHandler;->getScaleFactorWidth()F

    move-result v6

    div-float/2addr v5, v6

    add-float/2addr v5, v0

    .line 544
    iput v5, v4, Landroid/graphics/RectF;->left:F

    .line 547
    iget-object v5, p0, Lcom/canhub/cropper/CropOverlayView;->mInitialCropWindowRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/canhub/cropper/CropOverlayView;->mCropWindowHandler:Lcom/canhub/cropper/CropWindowHandler;

    invoke-virtual {v6}, Lcom/canhub/cropper/CropWindowHandler;->getScaleFactorHeight()F

    move-result v6

    div-float/2addr v5, v6

    add-float/2addr v5, v1

    .line 546
    iput v5, v4, Landroid/graphics/RectF;->top:F

    .line 549
    iget v5, v4, Landroid/graphics/RectF;->left:F

    iget-object v6, p0, Lcom/canhub/cropper/CropOverlayView;->mInitialCropWindowRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lcom/canhub/cropper/CropOverlayView;->mCropWindowHandler:Lcom/canhub/cropper/CropWindowHandler;

    invoke-virtual {v7}, Lcom/canhub/cropper/CropWindowHandler;->getScaleFactorWidth()F

    move-result v7

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    .line 548
    iput v5, v4, Landroid/graphics/RectF;->right:F

    .line 551
    iget v5, v4, Landroid/graphics/RectF;->top:F

    iget-object v6, p0, Lcom/canhub/cropper/CropOverlayView;->mInitialCropWindowRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lcom/canhub/cropper/CropOverlayView;->mCropWindowHandler:Lcom/canhub/cropper/CropWindowHandler;

    invoke-virtual {v7}, Lcom/canhub/cropper/CropWindowHandler;->getScaleFactorHeight()F

    move-result v7

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    .line 550
    iput v5, v4, Landroid/graphics/RectF;->bottom:F

    .line 554
    iget v5, v4, Landroid/graphics/RectF;->left:F

    invoke-static {v0, v5}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, v4, Landroid/graphics/RectF;->left:F

    .line 555
    iget v0, v4, Landroid/graphics/RectF;->top:F

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, v4, Landroid/graphics/RectF;->top:F

    .line 556
    iget v0, v4, Landroid/graphics/RectF;->right:F

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, v4, Landroid/graphics/RectF;->right:F

    .line 557
    iget v0, v4, Landroid/graphics/RectF;->bottom:F

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, v4, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_0

    .line 558
    :cond_1
    iget-boolean v9, p0, Lcom/canhub/cropper/CropOverlayView;->isFixAspectRatio:Z

    if-eqz v9, :cond_3

    cmpl-float v9, v2, v0

    if-lez v9, :cond_3

    cmpl-float v9, v3, v1

    if-lez v9, :cond_3

    div-float/2addr v6, v8

    .line 562
    iget v8, p0, Lcom/canhub/cropper/CropOverlayView;->mTargetAspectRatio:F

    cmpl-float v6, v6, v8

    const/high16 v8, 0x40000000    # 2.0f

    if-lez v6, :cond_2

    add-float/2addr v1, v5

    .line 563
    iput v1, v4, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, v5

    .line 564
    iput v3, v4, Landroid/graphics/RectF;->bottom:F

    .line 565
    invoke-virtual {p0}, Lcom/canhub/cropper/CropOverlayView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v8

    .line 567
    iget v1, p0, Lcom/canhub/cropper/CropOverlayView;->mAspectRatioX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/canhub/cropper/CropOverlayView;->mAspectRatioY:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/canhub/cropper/CropOverlayView;->mTargetAspectRatio:F

    .line 570
    iget-object v1, p0, Lcom/canhub/cropper/CropOverlayView;->mCropWindowHandler:Lcom/canhub/cropper/CropWindowHandler;

    invoke-virtual {v1}, Lcom/canhub/cropper/CropWindowHandler;->getMinCropWidth()F

    move-result v1

    .line 571
    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v2

    iget v3, p0, Lcom/canhub/cropper/CropOverlayView;->mTargetAspectRatio:F

    mul-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    div-float/2addr v1, v8

    sub-float v2, v0, v1

    .line 574
    iput v2, v4, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, v1

    .line 575
    iput v0, v4, Landroid/graphics/RectF;->right:F

    goto :goto_0

    :cond_2
    add-float/2addr v0, v7

    .line 577
    iput v0, v4, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v7

    .line 578
    iput v2, v4, Landroid/graphics/RectF;->right:F

    .line 579
    invoke-virtual {p0}, Lcom/canhub/cropper/CropOverlayView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v8

    .line 582
    iget-object v1, p0, Lcom/canhub/cropper/CropOverlayView;->mCropWindowHandler:Lcom/canhub/cropper/CropWindowHandler;

    invoke-virtual {v1}, Lcom/canhub/cropper/CropWindowHandler;->getMinCropHeight()F

    move-result v1

    .line 583
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v2

    iget v3, p0, Lcom/canhub/cropper/CropOverlayView;->mTargetAspectRatio:F

    div-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    div-float/2addr v1, v8

    sub-float v2, v0, v1

    .line 586
    iput v2, v4, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, v1

    .line 587
    iput v0, v4, Landroid/graphics/RectF;->bottom:F

    goto :goto_0

    :cond_3
    add-float/2addr v0, v7

    .line 591
    iput v0, v4, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v5

    .line 592
    iput v1, v4, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, v7

    .line 593
    iput v2, v4, Landroid/graphics/RectF;->right:F

    sub-float/2addr v3, v5

    .line 594
    iput v3, v4, Landroid/graphics/RectF;->bottom:F

    .line 596
    :goto_0
    invoke-direct {p0, v4}, Lcom/canhub/cropper/CropOverlayView;->fixCropWindowRectByRules(Landroid/graphics/RectF;)V

    .line 597
    iget-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->mCropWindowHandler:Lcom/canhub/cropper/CropWindowHandler;

    invoke-virtual {v0, v4}, Lcom/canhub/cropper/CropWindowHandler;->setRect(Landroid/graphics/RectF;)V

    :cond_4
    :goto_1
    return-void
.end method

.method private final isNonStraightAngleRotated()Z
    .locals 5

    .line 1278
    iget-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->mBoundsPoints:[F

    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x6

    aget v3, v0, v3

    cmpg-float v2, v2, v3

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    aget v3, v0, v2

    const/4 v4, 0x7

    aget v0, v0, v4

    cmpg-float v0, v3, v0

    if-nez v0, :cond_1

    :goto_0
    return v1

    :cond_1
    return v2
.end method

.method private final onActionDown(FF)V
    .locals 6

    .line 1140
    iget-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->mCropWindowHandler:Lcom/canhub/cropper/CropWindowHandler;

    iget v3, p0, Lcom/canhub/cropper/CropOverlayView;->mTouchRadius:F

    iget-object v4, p0, Lcom/canhub/cropper/CropOverlayView;->cropShape:Lcom/canhub/cropper/CropImageView$CropShape;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-boolean v5, p0, Lcom/canhub/cropper/CropOverlayView;->mCenterMoveEnabled:Z

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/canhub/cropper/CropWindowHandler;->getMoveHandler(FFFLcom/canhub/cropper/CropImageView$CropShape;Z)Lcom/canhub/cropper/CropWindowMoveHandler;

    move-result-object p1

    .line 1139
    iput-object p1, p0, Lcom/canhub/cropper/CropOverlayView;->mMoveHandler:Lcom/canhub/cropper/CropWindowMoveHandler;

    if-eqz p1, :cond_0

    .line 1142
    invoke-virtual {p0}, Lcom/canhub/cropper/CropOverlayView;->invalidate()V

    :cond_0
    return-void
.end method

.method private final onActionMove(FF)V
    .locals 12

    .line 1159
    iget-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->mMoveHandler:Lcom/canhub/cropper/CropWindowMoveHandler;

    if-eqz v0, :cond_2

    .line 1160
    iget v0, p0, Lcom/canhub/cropper/CropOverlayView;->mSnapRadius:F

    .line 1161
    iget-object v1, p0, Lcom/canhub/cropper/CropOverlayView;->mCropWindowHandler:Lcom/canhub/cropper/CropWindowHandler;

    invoke-virtual {v1}, Lcom/canhub/cropper/CropWindowHandler;->getRect()Landroid/graphics/RectF;

    move-result-object v3

    .line 1162
    invoke-direct {p0, v3}, Lcom/canhub/cropper/CropOverlayView;->calculateBounds(Landroid/graphics/RectF;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    move v9, v0

    .line 1165
    iget-object v2, p0, Lcom/canhub/cropper/CropOverlayView;->mMoveHandler:Lcom/canhub/cropper/CropWindowMoveHandler;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1169
    iget-object v6, p0, Lcom/canhub/cropper/CropOverlayView;->mCalcBounds:Landroid/graphics/RectF;

    .line 1170
    iget v7, p0, Lcom/canhub/cropper/CropOverlayView;->mViewWidth:I

    .line 1171
    iget v8, p0, Lcom/canhub/cropper/CropOverlayView;->mViewHeight:I

    .line 1173
    iget-boolean v10, p0, Lcom/canhub/cropper/CropOverlayView;->isFixAspectRatio:Z

    .line 1174
    iget v11, p0, Lcom/canhub/cropper/CropOverlayView;->mTargetAspectRatio:F

    move v4, p1

    move v5, p2

    .line 1165
    invoke-virtual/range {v2 .. v11}, Lcom/canhub/cropper/CropWindowMoveHandler;->move(Landroid/graphics/RectF;FFLandroid/graphics/RectF;IIFZF)V

    .line 1176
    iget-object p1, p0, Lcom/canhub/cropper/CropOverlayView;->mCropWindowHandler:Lcom/canhub/cropper/CropWindowHandler;

    invoke-virtual {p1, v3}, Lcom/canhub/cropper/CropWindowHandler;->setRect(Landroid/graphics/RectF;)V

    .line 1177
    iget-object p1, p0, Lcom/canhub/cropper/CropOverlayView;->mCropWindowChangeListener:Lcom/canhub/cropper/CropOverlayView$CropWindowChangeListener;

    if-eqz p1, :cond_1

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Lcom/canhub/cropper/CropOverlayView$CropWindowChangeListener;->onCropWindowChanged(Z)V

    .line 1178
    :cond_1
    invoke-virtual {p0}, Lcom/canhub/cropper/CropOverlayView;->invalidate()V

    :cond_2
    return-void
.end method

.method private final onActionUp()V
    .locals 2

    .line 1147
    iget-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->mMoveHandler:Lcom/canhub/cropper/CropWindowMoveHandler;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 1148
    iput-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->mMoveHandler:Lcom/canhub/cropper/CropWindowMoveHandler;

    .line 1149
    iget-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->mCropWindowChangeListener:Lcom/canhub/cropper/CropOverlayView$CropWindowChangeListener;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/canhub/cropper/CropOverlayView$CropWindowChangeListener;->onCropWindowChanged(Z)V

    .line 1150
    :cond_0
    invoke-virtual {p0}, Lcom/canhub/cropper/CropOverlayView;->invalidate()V

    :cond_1
    return-void
.end method

.method private final setSystemGestureExclusionRects()V
    .locals 11

    .line 690
    iget-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->mCropWindowHandler:Lcom/canhub/cropper/CropWindowHandler;

    invoke-virtual {v0}, Lcom/canhub/cropper/CropWindowHandler;->getRect()Landroid/graphics/RectF;

    move-result-object v0

    .line 691
    invoke-virtual {p0}, Lcom/canhub/cropper/CropOverlayView;->getSystemGestureExclusionRects()Ljava/util/List;

    move-result-object v1

    const-string v2, "getSystemGestureExclusionRects(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    if-lez v3, :cond_0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    :goto_0
    check-cast v1, Landroid/graphics/Rect;

    .line 692
    invoke-virtual {p0}, Lcom/canhub/cropper/CropOverlayView;->getSystemGestureExclusionRects()Ljava/util/List;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ge v6, v5, :cond_1

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    goto :goto_1

    :cond_1
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    :goto_1
    check-cast v3, Landroid/graphics/Rect;

    .line 693
    invoke-virtual {p0}, Lcom/canhub/cropper/CropOverlayView;->getSystemGestureExclusionRects()Ljava/util/List;

    move-result-object v5

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    const/4 v7, 0x2

    if-ge v7, v2, :cond_2

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    goto :goto_2

    :cond_2
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    :goto_2
    check-cast v2, Landroid/graphics/Rect;

    .line 695
    iget v5, v0, Landroid/graphics/RectF;->left:F

    iget v8, p0, Lcom/canhub/cropper/CropOverlayView;->mTouchRadius:F

    sub-float/2addr v5, v8

    float-to-int v5, v5

    iput v5, v1, Landroid/graphics/Rect;->left:I

    .line 696
    iget v5, v0, Landroid/graphics/RectF;->right:F

    iget v8, p0, Lcom/canhub/cropper/CropOverlayView;->mTouchRadius:F

    add-float/2addr v5, v8

    float-to-int v5, v5

    iput v5, v1, Landroid/graphics/Rect;->right:I

    .line 697
    iget v5, v0, Landroid/graphics/RectF;->top:F

    iget v8, p0, Lcom/canhub/cropper/CropOverlayView;->mTouchRadius:F

    sub-float/2addr v5, v8

    float-to-int v5, v5

    iput v5, v1, Landroid/graphics/Rect;->top:I

    .line 698
    iget v5, v1, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    iget v8, p0, Lcom/canhub/cropper/CropOverlayView;->maxVerticalGestureExclusion:F

    const v9, 0x3e99999a    # 0.3f

    mul-float/2addr v8, v9

    add-float/2addr v5, v8

    float-to-int v5, v5

    iput v5, v1, Landroid/graphics/Rect;->bottom:I

    .line 700
    iget v5, v1, Landroid/graphics/Rect;->left:I

    iput v5, v3, Landroid/graphics/Rect;->left:I

    .line 701
    iget v5, v1, Landroid/graphics/Rect;->right:I

    iput v5, v3, Landroid/graphics/Rect;->right:I

    .line 702
    iget v5, v0, Landroid/graphics/RectF;->top:F

    iget v8, v0, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v5, v8

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v5, v8

    iget v8, p0, Lcom/canhub/cropper/CropOverlayView;->maxVerticalGestureExclusion:F

    const v10, 0x3e4ccccd    # 0.2f

    mul-float/2addr v8, v10

    sub-float/2addr v5, v8

    float-to-int v5, v5

    iput v5, v3, Landroid/graphics/Rect;->top:I

    .line 703
    iget v5, v3, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    iget v8, p0, Lcom/canhub/cropper/CropOverlayView;->maxVerticalGestureExclusion:F

    const v10, 0x3ecccccd    # 0.4f

    mul-float/2addr v8, v10

    add-float/2addr v5, v8

    float-to-int v5, v5

    iput v5, v3, Landroid/graphics/Rect;->bottom:I

    .line 705
    iget v5, v1, Landroid/graphics/Rect;->left:I

    iput v5, v2, Landroid/graphics/Rect;->left:I

    .line 706
    iget v5, v1, Landroid/graphics/Rect;->right:I

    iput v5, v2, Landroid/graphics/Rect;->right:I

    .line 707
    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget v5, p0, Lcom/canhub/cropper/CropOverlayView;->mTouchRadius:F

    add-float/2addr v0, v5

    float-to-int v0, v0

    iput v0, v2, Landroid/graphics/Rect;->bottom:I

    .line 708
    iget v0, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    iget v5, p0, Lcom/canhub/cropper/CropOverlayView;->maxVerticalGestureExclusion:F

    mul-float/2addr v5, v9

    sub-float/2addr v0, v5

    float-to-int v0, v0

    iput v0, v2, Landroid/graphics/Rect;->top:I

    const/4 v0, 0x3

    .line 710
    new-array v0, v0, [Landroid/graphics/Rect;

    aput-object v1, v0, v4

    aput-object v3, v0, v6

    aput-object v2, v0, v7

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/canhub/cropper/CropOverlayView;->setSystemGestureExclusionRects(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final fixCurrentCropWindowRect()V
    .locals 2

    .line 229
    invoke-virtual {p0}, Lcom/canhub/cropper/CropOverlayView;->getCropWindowRect()Landroid/graphics/RectF;

    move-result-object v0

    .line 230
    invoke-direct {p0, v0}, Lcom/canhub/cropper/CropOverlayView;->fixCropWindowRectByRules(Landroid/graphics/RectF;)V

    .line 231
    iget-object v1, p0, Lcom/canhub/cropper/CropOverlayView;->mCropWindowHandler:Lcom/canhub/cropper/CropWindowHandler;

    invoke-virtual {v1, v0}, Lcom/canhub/cropper/CropWindowHandler;->setRect(Landroid/graphics/RectF;)V

    return-void
.end method

.method public final getAspectRatioX()I
    .locals 1

    .line 346
    iget v0, p0, Lcom/canhub/cropper/CropOverlayView;->mAspectRatioX:I

    return v0
.end method

.method public final getAspectRatioY()I
    .locals 1

    .line 365
    iget v0, p0, Lcom/canhub/cropper/CropOverlayView;->mAspectRatioY:I

    return v0
.end method

.method public final getCornerShape()Lcom/canhub/cropper/CropImageView$CropCornerShape;
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->cornerShape:Lcom/canhub/cropper/CropImageView$CropCornerShape;

    return-object v0
.end method

.method public final getCropShape()Lcom/canhub/cropper/CropImageView$CropShape;
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->cropShape:Lcom/canhub/cropper/CropImageView$CropShape;

    return-object v0
.end method

.method public final getCropWindowRect()Landroid/graphics/RectF;
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->mCropWindowHandler:Lcom/canhub/cropper/CropWindowHandler;

    invoke-virtual {v0}, Lcom/canhub/cropper/CropWindowHandler;->getRect()Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public final getGuidelines()Lcom/canhub/cropper/CropImageView$Guidelines;
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->guidelines:Lcom/canhub/cropper/CropImageView$Guidelines;

    return-object v0
.end method

.method public final getInitialCropWindowRect()Landroid/graphics/Rect;
    .locals 1

    .line 448
    iget-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->mInitialCropWindowRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public final isFixAspectRatio()Z
    .locals 1

    .line 164
    iget-boolean v0, p0, Lcom/canhub/cropper/CropOverlayView;->isFixAspectRatio:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 658
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 660
    invoke-direct {p0, p1}, Lcom/canhub/cropper/CropOverlayView;->drawBackground(Landroid/graphics/Canvas;)V

    .line 661
    iget-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->mCropWindowHandler:Lcom/canhub/cropper/CropWindowHandler;

    invoke-virtual {v0}, Lcom/canhub/cropper/CropWindowHandler;->showGuidelines()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 663
    iget-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->guidelines:Lcom/canhub/cropper/CropImageView$Guidelines;

    sget-object v1, Lcom/canhub/cropper/CropImageView$Guidelines;->ON:Lcom/canhub/cropper/CropImageView$Guidelines;

    if-ne v0, v1, :cond_0

    .line 664
    invoke-direct {p0, p1}, Lcom/canhub/cropper/CropOverlayView;->drawGuidelines(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 665
    :cond_0
    iget-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->guidelines:Lcom/canhub/cropper/CropImageView$Guidelines;

    sget-object v1, Lcom/canhub/cropper/CropImageView$Guidelines;->ON_TOUCH:Lcom/canhub/cropper/CropImageView$Guidelines;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->mMoveHandler:Lcom/canhub/cropper/CropWindowMoveHandler;

    if-eqz v0, :cond_1

    .line 666
    invoke-direct {p0, p1}, Lcom/canhub/cropper/CropOverlayView;->drawGuidelines(Landroid/graphics/Canvas;)V

    .line 672
    :cond_1
    :goto_0
    sget-object v0, Lcom/canhub/cropper/CropOverlayView;->Companion:Lcom/canhub/cropper/CropOverlayView$Companion;

    iget-object v1, p0, Lcom/canhub/cropper/CropOverlayView;->mOptions:Lcom/canhub/cropper/CropImageOptions;

    if-eqz v1, :cond_2

    iget v1, v1, Lcom/canhub/cropper/CropImageOptions;->borderCornerThickness:F

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lcom/canhub/cropper/CropOverlayView;->mOptions:Lcom/canhub/cropper/CropImageOptions;

    if-eqz v2, :cond_3

    iget v2, v2, Lcom/canhub/cropper/CropImageOptions;->borderCornerColor:I

    goto :goto_2

    :cond_3
    const/4 v2, -0x1

    :goto_2
    invoke-virtual {v0, v1, v2}, Lcom/canhub/cropper/CropOverlayView$Companion;->getNewPaintOrNull$cropper_release(FI)Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->mBorderCornerPaint:Landroid/graphics/Paint;

    .line 673
    invoke-direct {p0, p1}, Lcom/canhub/cropper/CropOverlayView;->drawCropLabelText(Landroid/graphics/Canvas;)V

    .line 674
    invoke-direct {p0, p1}, Lcom/canhub/cropper/CropOverlayView;->drawBorders(Landroid/graphics/Canvas;)V

    .line 675
    invoke-direct {p0, p1}, Lcom/canhub/cropper/CropOverlayView;->drawCorners(Landroid/graphics/Canvas;)V

    .line 677
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1d

    if-lt p1, v0, :cond_4

    .line 678
    invoke-direct {p0}, Lcom/canhub/cropper/CropOverlayView;->setSystemGestureExclusionRects()V

    :cond_4
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1102
    invoke-virtual {p0}, Lcom/canhub/cropper/CropOverlayView;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 1103
    iget-boolean v0, p0, Lcom/canhub/cropper/CropOverlayView;->mMultiTouchEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1105
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    if-eq v0, v2, :cond_4

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_4

    return v1

    .line 1120
    :cond_1
    iget-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->currentPointerId:Ljava/lang/Integer;

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v3, :cond_3

    :goto_0
    return v1

    .line 1122
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/canhub/cropper/CropOverlayView;->onActionMove(FF)V

    .line 1123
    invoke-virtual {p0}, Lcom/canhub/cropper/CropOverlayView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    return v2

    .line 1112
    :cond_4
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/canhub/cropper/CropOverlayView;->currentPointerId:Ljava/lang/Integer;

    .line 1113
    invoke-virtual {p0}, Lcom/canhub/cropper/CropOverlayView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1114
    invoke-direct {p0}, Lcom/canhub/cropper/CropOverlayView;->onActionUp()V

    return v2

    .line 1107
    :cond_5
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->currentPointerId:Ljava/lang/Integer;

    .line 1108
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/canhub/cropper/CropOverlayView;->onActionDown(FF)V

    return v2

    :cond_6
    return v1
.end method

.method public final resetCropOverlayView()V
    .locals 1

    .line 259
    iget-boolean v0, p0, Lcom/canhub/cropper/CropOverlayView;->initializedCropWindow:Z

    if-eqz v0, :cond_0

    .line 260
    sget-object v0, Lcom/canhub/cropper/BitmapUtils;->INSTANCE:Lcom/canhub/cropper/BitmapUtils;

    invoke-virtual {v0}, Lcom/canhub/cropper/BitmapUtils;->getEMPTY_RECT_F()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/canhub/cropper/CropOverlayView;->setCropWindowRect(Landroid/graphics/RectF;)V

    .line 261
    invoke-direct {p0}, Lcom/canhub/cropper/CropOverlayView;->initCropWindow()V

    .line 262
    invoke-virtual {p0}, Lcom/canhub/cropper/CropOverlayView;->invalidate()V

    :cond_0
    return-void
.end method

.method public final resetCropWindowRect()V
    .locals 2

    .line 460
    iget-boolean v0, p0, Lcom/canhub/cropper/CropOverlayView;->initializedCropWindow:Z

    if-eqz v0, :cond_0

    .line 461
    invoke-direct {p0}, Lcom/canhub/cropper/CropOverlayView;->initCropWindow()V

    .line 462
    invoke-virtual {p0}, Lcom/canhub/cropper/CropOverlayView;->invalidate()V

    .line 463
    iget-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->mCropWindowChangeListener:Lcom/canhub/cropper/CropOverlayView$CropWindowChangeListener;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/canhub/cropper/CropOverlayView$CropWindowChangeListener;->onCropWindowChanged(Z)V

    :cond_0
    return-void
.end method

.method public final setAspectRatioX(I)V
    .locals 1

    if-lez p1, :cond_1

    .line 349
    iget v0, p0, Lcom/canhub/cropper/CropOverlayView;->mAspectRatioX:I

    if-eq v0, p1, :cond_0

    .line 350
    iput p1, p0, Lcom/canhub/cropper/CropOverlayView;->mAspectRatioX:I

    int-to-float p1, p1

    .line 351
    iget v0, p0, Lcom/canhub/cropper/CropOverlayView;->mAspectRatioY:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    iput p1, p0, Lcom/canhub/cropper/CropOverlayView;->mTargetAspectRatio:F

    .line 352
    iget-boolean p1, p0, Lcom/canhub/cropper/CropOverlayView;->initializedCropWindow:Z

    if-eqz p1, :cond_0

    .line 353
    invoke-direct {p0}, Lcom/canhub/cropper/CropOverlayView;->initCropWindow()V

    .line 354
    invoke-virtual {p0}, Lcom/canhub/cropper/CropOverlayView;->invalidate()V

    :cond_0
    return-void

    .line 348
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot set aspect ratio value to a number less than or equal to 0."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setAspectRatioY(I)V
    .locals 1

    if-lez p1, :cond_1

    .line 368
    iget v0, p0, Lcom/canhub/cropper/CropOverlayView;->mAspectRatioY:I

    if-eq v0, p1, :cond_0

    .line 369
    iput p1, p0, Lcom/canhub/cropper/CropOverlayView;->mAspectRatioY:I

    .line 370
    iget v0, p0, Lcom/canhub/cropper/CropOverlayView;->mAspectRatioX:I

    int-to-float v0, v0

    int-to-float p1, p1

    div-float/2addr v0, p1

    iput v0, p0, Lcom/canhub/cropper/CropOverlayView;->mTargetAspectRatio:F

    .line 371
    iget-boolean p1, p0, Lcom/canhub/cropper/CropOverlayView;->initializedCropWindow:Z

    if-eqz p1, :cond_0

    .line 372
    invoke-direct {p0}, Lcom/canhub/cropper/CropOverlayView;->initCropWindow()V

    .line 373
    invoke-virtual {p0}, Lcom/canhub/cropper/CropOverlayView;->invalidate()V

    :cond_0
    return-void

    .line 367
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot set aspect ratio value to a number less than or equal to 0."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setBounds([FII)V
    .locals 4

    if-eqz p1, :cond_1

    .line 243
    iget-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->mBoundsPoints:[F

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    const/4 v0, 0x0

    if-nez p1, :cond_2

    .line 245
    iget-object p1, p0, Lcom/canhub/cropper/CropOverlayView;->mBoundsPoints:[F

    invoke-static {p1, v0}, Ljava/util/Arrays;->fill([FF)V

    goto :goto_1

    .line 247
    :cond_2
    iget-object v1, p0, Lcom/canhub/cropper/CropOverlayView;->mBoundsPoints:[F

    array-length v2, p1

    const/4 v3, 0x0

    invoke-static {p1, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 250
    :goto_1
    iput p2, p0, Lcom/canhub/cropper/CropOverlayView;->mViewWidth:I

    .line 251
    iput p3, p0, Lcom/canhub/cropper/CropOverlayView;->mViewHeight:I

    .line 252
    iget-object p1, p0, Lcom/canhub/cropper/CropOverlayView;->mCropWindowHandler:Lcom/canhub/cropper/CropWindowHandler;

    invoke-virtual {p1}, Lcom/canhub/cropper/CropWindowHandler;->getRect()Landroid/graphics/RectF;

    move-result-object p1

    .line 253
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p2

    cmpg-float p2, p2, v0

    if-nez p2, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    cmpg-float p1, p1, v0

    if-nez p1, :cond_4

    :goto_2
    invoke-direct {p0}, Lcom/canhub/cropper/CropOverlayView;->initCropWindow()V

    :cond_4
    return-void
.end method

.method public final setCenterMoveEnabled(Z)Z
    .locals 1

    .line 409
    iget-boolean v0, p0, Lcom/canhub/cropper/CropOverlayView;->mCenterMoveEnabled:Z

    if-eq v0, p1, :cond_0

    .line 410
    iput-boolean p1, p0, Lcom/canhub/cropper/CropOverlayView;->mCenterMoveEnabled:Z

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final setCropCornerRadius(F)V
    .locals 0

    .line 392
    iput p1, p0, Lcom/canhub/cropper/CropOverlayView;->mCropCornerRadius:F

    return-void
.end method

.method public final setCropCornerShape(Lcom/canhub/cropper/CropImageView$CropCornerShape;)V
    .locals 1

    const-string v0, "cropCornerShape"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 278
    iget-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->cornerShape:Lcom/canhub/cropper/CropImageView$CropCornerShape;

    if-eq v0, p1, :cond_0

    .line 279
    iput-object p1, p0, Lcom/canhub/cropper/CropOverlayView;->cornerShape:Lcom/canhub/cropper/CropImageView$CropCornerShape;

    .line 280
    invoke-virtual {p0}, Lcom/canhub/cropper/CropOverlayView;->invalidate()V

    :cond_0
    return-void
.end method

.method public final setCropLabelText(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 297
    iput-object p1, p0, Lcom/canhub/cropper/CropOverlayView;->cropLabelText:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public final setCropLabelTextColor(I)V
    .locals 0

    .line 313
    iput p1, p0, Lcom/canhub/cropper/CropOverlayView;->cropLabelTextColor:I

    .line 314
    invoke-virtual {p0}, Lcom/canhub/cropper/CropOverlayView;->invalidate()V

    return-void
.end method

.method public final setCropLabelTextSize(F)V
    .locals 0

    .line 305
    iput p1, p0, Lcom/canhub/cropper/CropOverlayView;->cropLabelTextSize:F

    .line 306
    invoke-virtual {p0}, Lcom/canhub/cropper/CropOverlayView;->invalidate()V

    return-void
.end method

.method public final setCropShape(Lcom/canhub/cropper/CropImageView$CropShape;)V
    .locals 1

    const-string v0, "cropShape"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 268
    iget-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->cropShape:Lcom/canhub/cropper/CropImageView$CropShape;

    if-eq v0, p1, :cond_0

    .line 269
    iput-object p1, p0, Lcom/canhub/cropper/CropOverlayView;->cropShape:Lcom/canhub/cropper/CropImageView$CropShape;

    .line 270
    invoke-virtual {p0}, Lcom/canhub/cropper/CropOverlayView;->invalidate()V

    :cond_0
    return-void
.end method

.method public final setCropWindowChangeListener(Lcom/canhub/cropper/CropOverlayView$CropWindowChangeListener;)V
    .locals 0

    .line 216
    iput-object p1, p0, Lcom/canhub/cropper/CropOverlayView;->mCropWindowChangeListener:Lcom/canhub/cropper/CropOverlayView$CropWindowChangeListener;

    return-void
.end method

.method public final setCropWindowLimits(FFFF)V
    .locals 1

    .line 442
    iget-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->mCropWindowHandler:Lcom/canhub/cropper/CropWindowHandler;

    .line 443
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/canhub/cropper/CropWindowHandler;->setCropWindowLimits(FFFF)V

    return-void
.end method

.method public final setCropWindowRect(Landroid/graphics/RectF;)V
    .locals 1

    const-string v0, "rect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->mCropWindowHandler:Lcom/canhub/cropper/CropWindowHandler;

    invoke-virtual {v0, p1}, Lcom/canhub/cropper/CropWindowHandler;->setRect(Landroid/graphics/RectF;)V

    return-void
.end method

.method public final setCropperTextLabelVisibility(Z)V
    .locals 0

    .line 288
    iput-boolean p1, p0, Lcom/canhub/cropper/CropOverlayView;->isCropLabelEnabled:Z

    .line 289
    invoke-virtual {p0}, Lcom/canhub/cropper/CropOverlayView;->invalidate()V

    return-void
.end method

.method public final setFixedAspectRatio(Z)V
    .locals 1

    .line 335
    iget-boolean v0, p0, Lcom/canhub/cropper/CropOverlayView;->isFixAspectRatio:Z

    if-eq v0, p1, :cond_0

    .line 336
    iput-boolean p1, p0, Lcom/canhub/cropper/CropOverlayView;->isFixAspectRatio:Z

    .line 337
    iget-boolean p1, p0, Lcom/canhub/cropper/CropOverlayView;->initializedCropWindow:Z

    if-eqz p1, :cond_0

    .line 338
    invoke-direct {p0}, Lcom/canhub/cropper/CropOverlayView;->initCropWindow()V

    .line 339
    invoke-virtual {p0}, Lcom/canhub/cropper/CropOverlayView;->invalidate()V

    :cond_0
    return-void
.end method

.method public final setGuidelines(Lcom/canhub/cropper/CropImageView$Guidelines;)V
    .locals 1

    const-string v0, "guidelines"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 322
    iget-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->guidelines:Lcom/canhub/cropper/CropImageView$Guidelines;

    if-eq v0, p1, :cond_0

    .line 323
    iput-object p1, p0, Lcom/canhub/cropper/CropOverlayView;->guidelines:Lcom/canhub/cropper/CropImageView$Guidelines;

    .line 324
    iget-boolean p1, p0, Lcom/canhub/cropper/CropOverlayView;->initializedCropWindow:Z

    if-eqz p1, :cond_0

    .line 325
    invoke-virtual {p0}, Lcom/canhub/cropper/CropOverlayView;->invalidate()V

    :cond_0
    return-void
.end method

.method public final setInitialAttributeValues(Lcom/canhub/cropper/CropImageOptions;)V
    .locals 6

    const-string v0, "options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 472
    iget-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->mOptions:Lcom/canhub/cropper/CropImageOptions;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 473
    iget-object v1, p0, Lcom/canhub/cropper/CropOverlayView;->mOptions:Lcom/canhub/cropper/CropImageOptions;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-boolean v3, p1, Lcom/canhub/cropper/CropImageOptions;->fixAspectRatio:Z

    iget-boolean v1, v1, Lcom/canhub/cropper/CropImageOptions;->fixAspectRatio:Z

    if-ne v3, v1, :cond_0

    .line 474
    iget-object v1, p0, Lcom/canhub/cropper/CropOverlayView;->mOptions:Lcom/canhub/cropper/CropImageOptions;

    if-eqz v1, :cond_0

    iget v3, p1, Lcom/canhub/cropper/CropImageOptions;->aspectRatioX:I

    iget v1, v1, Lcom/canhub/cropper/CropImageOptions;->aspectRatioX:I

    if-ne v3, v1, :cond_0

    .line 475
    iget-object v1, p0, Lcom/canhub/cropper/CropOverlayView;->mOptions:Lcom/canhub/cropper/CropImageOptions;

    if-eqz v1, :cond_0

    iget v3, p1, Lcom/canhub/cropper/CropImageOptions;->aspectRatioY:I

    iget v1, v1, Lcom/canhub/cropper/CropImageOptions;->aspectRatioY:I

    if-ne v3, v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 477
    :goto_0
    iput-object p1, p0, Lcom/canhub/cropper/CropOverlayView;->mOptions:Lcom/canhub/cropper/CropImageOptions;

    .line 479
    iget-object v3, p0, Lcom/canhub/cropper/CropOverlayView;->mCropWindowHandler:Lcom/canhub/cropper/CropWindowHandler;

    iget v4, p1, Lcom/canhub/cropper/CropImageOptions;->minCropResultWidth:I

    iget v5, p1, Lcom/canhub/cropper/CropImageOptions;->minCropResultHeight:I

    invoke-virtual {v3, v4, v5}, Lcom/canhub/cropper/CropWindowHandler;->setMinCropResultSize(II)V

    .line 480
    iget-object v3, p0, Lcom/canhub/cropper/CropOverlayView;->mCropWindowHandler:Lcom/canhub/cropper/CropWindowHandler;

    iget v4, p1, Lcom/canhub/cropper/CropImageOptions;->maxCropResultWidth:I

    iget v5, p1, Lcom/canhub/cropper/CropImageOptions;->maxCropResultHeight:I

    invoke-virtual {v3, v4, v5}, Lcom/canhub/cropper/CropWindowHandler;->setMaxCropResultSize(II)V

    if-eqz v0, :cond_1

    goto/16 :goto_1

    .line 486
    :cond_1
    iget-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->mCropWindowHandler:Lcom/canhub/cropper/CropWindowHandler;

    invoke-virtual {v0, p1}, Lcom/canhub/cropper/CropWindowHandler;->setInitialAttributeValues(Lcom/canhub/cropper/CropImageOptions;)V

    .line 487
    iget v0, p1, Lcom/canhub/cropper/CropImageOptions;->cropperLabelTextColor:I

    iput v0, p0, Lcom/canhub/cropper/CropOverlayView;->cropLabelTextColor:I

    .line 488
    iget v0, p1, Lcom/canhub/cropper/CropImageOptions;->cropperLabelTextSize:F

    iput v0, p0, Lcom/canhub/cropper/CropOverlayView;->cropLabelTextSize:F

    .line 489
    iget-object v0, p1, Lcom/canhub/cropper/CropImageOptions;->cropperLabelText:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v0, ""

    :cond_2
    iput-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->cropLabelText:Ljava/lang/String;

    .line 490
    iget-boolean v0, p1, Lcom/canhub/cropper/CropImageOptions;->showCropLabel:Z

    iput-boolean v0, p0, Lcom/canhub/cropper/CropOverlayView;->isCropLabelEnabled:Z

    .line 491
    iget v0, p1, Lcom/canhub/cropper/CropImageOptions;->cropCornerRadius:F

    iput v0, p0, Lcom/canhub/cropper/CropOverlayView;->mCropCornerRadius:F

    .line 492
    iget-object v0, p1, Lcom/canhub/cropper/CropImageOptions;->cornerShape:Lcom/canhub/cropper/CropImageView$CropCornerShape;

    iput-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->cornerShape:Lcom/canhub/cropper/CropImageView$CropCornerShape;

    .line 493
    iget-object v0, p1, Lcom/canhub/cropper/CropImageOptions;->cropShape:Lcom/canhub/cropper/CropImageView$CropShape;

    iput-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->cropShape:Lcom/canhub/cropper/CropImageView$CropShape;

    .line 494
    iget v0, p1, Lcom/canhub/cropper/CropImageOptions;->snapRadius:F

    iput v0, p0, Lcom/canhub/cropper/CropOverlayView;->mSnapRadius:F

    .line 495
    iget-boolean v0, p1, Lcom/canhub/cropper/CropImageOptions;->canChangeCropWindow:Z

    invoke-virtual {p0, v0}, Lcom/canhub/cropper/CropOverlayView;->setEnabled(Z)V

    .line 496
    iget-object v0, p1, Lcom/canhub/cropper/CropImageOptions;->guidelines:Lcom/canhub/cropper/CropImageView$Guidelines;

    iput-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->guidelines:Lcom/canhub/cropper/CropImageView$Guidelines;

    .line 497
    iget-boolean v0, p1, Lcom/canhub/cropper/CropImageOptions;->fixAspectRatio:Z

    iput-boolean v0, p0, Lcom/canhub/cropper/CropOverlayView;->isFixAspectRatio:Z

    .line 498
    iget v0, p1, Lcom/canhub/cropper/CropImageOptions;->aspectRatioX:I

    invoke-virtual {p0, v0}, Lcom/canhub/cropper/CropOverlayView;->setAspectRatioX(I)V

    .line 499
    iget v0, p1, Lcom/canhub/cropper/CropImageOptions;->aspectRatioY:I

    invoke-virtual {p0, v0}, Lcom/canhub/cropper/CropOverlayView;->setAspectRatioY(I)V

    .line 500
    iget-boolean v0, p1, Lcom/canhub/cropper/CropImageOptions;->multiTouchEnabled:Z

    iput-boolean v0, p0, Lcom/canhub/cropper/CropOverlayView;->mMultiTouchEnabled:Z

    if-eqz v0, :cond_3

    .line 501
    iget-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    if-nez v0, :cond_3

    .line 502
    new-instance v0, Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0}, Lcom/canhub/cropper/CropOverlayView;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Lcom/canhub/cropper/CropOverlayView$ScaleListener;

    invoke-direct {v4, p0}, Lcom/canhub/cropper/CropOverlayView$ScaleListener;-><init>(Lcom/canhub/cropper/CropOverlayView;)V

    check-cast v4, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    invoke-direct {v0, v3, v4}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    .line 504
    :cond_3
    iget-boolean v0, p1, Lcom/canhub/cropper/CropImageOptions;->centerMoveEnabled:Z

    iput-boolean v0, p0, Lcom/canhub/cropper/CropOverlayView;->mCenterMoveEnabled:Z

    .line 505
    iget v0, p1, Lcom/canhub/cropper/CropImageOptions;->touchRadius:F

    iput v0, p0, Lcom/canhub/cropper/CropOverlayView;->mTouchRadius:F

    .line 506
    iget v0, p1, Lcom/canhub/cropper/CropImageOptions;->initialCropWindowPaddingRatio:F

    iput v0, p0, Lcom/canhub/cropper/CropOverlayView;->mInitialCropWindowPaddingRatio:F

    .line 507
    sget-object v0, Lcom/canhub/cropper/CropOverlayView;->Companion:Lcom/canhub/cropper/CropOverlayView$Companion;

    iget v3, p1, Lcom/canhub/cropper/CropImageOptions;->borderLineThickness:F

    iget v4, p1, Lcom/canhub/cropper/CropImageOptions;->borderLineColor:I

    invoke-virtual {v0, v3, v4}, Lcom/canhub/cropper/CropOverlayView$Companion;->getNewPaintOrNull$cropper_release(FI)Landroid/graphics/Paint;

    move-result-object v3

    iput-object v3, p0, Lcom/canhub/cropper/CropOverlayView;->mBorderPaint:Landroid/graphics/Paint;

    .line 508
    iget v3, p1, Lcom/canhub/cropper/CropImageOptions;->borderCornerOffset:F

    iput v3, p0, Lcom/canhub/cropper/CropOverlayView;->mBorderCornerOffset:F

    .line 509
    iget v3, p1, Lcom/canhub/cropper/CropImageOptions;->borderCornerLength:F

    iput v3, p0, Lcom/canhub/cropper/CropOverlayView;->mBorderCornerLength:F

    .line 510
    iget v3, p1, Lcom/canhub/cropper/CropImageOptions;->circleCornerFillColorHexValue:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lcom/canhub/cropper/CropOverlayView;->mCircleCornerFillColor:Ljava/lang/Integer;

    .line 511
    iget v3, p1, Lcom/canhub/cropper/CropImageOptions;->borderCornerThickness:F

    iget v4, p1, Lcom/canhub/cropper/CropImageOptions;->borderCornerColor:I

    invoke-virtual {v0, v3, v4}, Lcom/canhub/cropper/CropOverlayView$Companion;->getNewPaintOrNull$cropper_release(FI)Landroid/graphics/Paint;

    move-result-object v3

    iput-object v3, p0, Lcom/canhub/cropper/CropOverlayView;->mBorderCornerPaint:Landroid/graphics/Paint;

    .line 512
    iget v3, p1, Lcom/canhub/cropper/CropImageOptions;->guidelinesThickness:F

    iget v4, p1, Lcom/canhub/cropper/CropImageOptions;->guidelinesColor:I

    invoke-virtual {v0, v3, v4}, Lcom/canhub/cropper/CropOverlayView$Companion;->getNewPaintOrNull$cropper_release(FI)Landroid/graphics/Paint;

    move-result-object v3

    iput-object v3, p0, Lcom/canhub/cropper/CropOverlayView;->mGuidelinePaint:Landroid/graphics/Paint;

    .line 513
    iget v3, p1, Lcom/canhub/cropper/CropImageOptions;->backgroundColor:I

    invoke-virtual {v0, v3}, Lcom/canhub/cropper/CropOverlayView$Companion;->getNewPaint$cropper_release(I)Landroid/graphics/Paint;

    move-result-object v3

    iput-object v3, p0, Lcom/canhub/cropper/CropOverlayView;->mBackgroundPaint:Landroid/graphics/Paint;

    .line 514
    invoke-virtual {v0, p1}, Lcom/canhub/cropper/CropOverlayView$Companion;->getTextPaint$cropper_release(Lcom/canhub/cropper/CropImageOptions;)Landroid/graphics/Paint;

    move-result-object p1

    iput-object p1, p0, Lcom/canhub/cropper/CropOverlayView;->textLabelPaint:Landroid/graphics/Paint;

    if-eqz v1, :cond_4

    .line 517
    invoke-direct {p0}, Lcom/canhub/cropper/CropOverlayView;->initCropWindow()V

    .line 520
    :cond_4
    invoke-virtual {p0}, Lcom/canhub/cropper/CropOverlayView;->invalidate()V

    if-eqz v1, :cond_5

    .line 523
    iget-object p1, p0, Lcom/canhub/cropper/CropOverlayView;->mCropWindowChangeListener:Lcom/canhub/cropper/CropOverlayView$CropWindowChangeListener;

    if-eqz p1, :cond_5

    invoke-interface {p1, v2}, Lcom/canhub/cropper/CropOverlayView$CropWindowChangeListener;->onCropWindowChanged(Z)V

    :cond_5
    :goto_1
    return-void
.end method

.method public final setInitialCropWindowRect(Landroid/graphics/Rect;)V
    .locals 1

    .line 450
    iget-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->mInitialCropWindowRect:Landroid/graphics/Rect;

    if-nez p1, :cond_0

    sget-object p1, Lcom/canhub/cropper/BitmapUtils;->INSTANCE:Lcom/canhub/cropper/BitmapUtils;

    invoke-virtual {p1}, Lcom/canhub/cropper/BitmapUtils;->getEMPTY_RECT()Landroid/graphics/Rect;

    move-result-object p1

    :cond_0
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 451
    iget-boolean p1, p0, Lcom/canhub/cropper/CropOverlayView;->initializedCropWindow:Z

    if-eqz p1, :cond_1

    .line 452
    invoke-direct {p0}, Lcom/canhub/cropper/CropOverlayView;->initCropWindow()V

    .line 453
    invoke-virtual {p0}, Lcom/canhub/cropper/CropOverlayView;->invalidate()V

    .line 454
    iget-object p1, p0, Lcom/canhub/cropper/CropOverlayView;->mCropWindowChangeListener:Lcom/canhub/cropper/CropOverlayView$CropWindowChangeListener;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/canhub/cropper/CropOverlayView$CropWindowChangeListener;->onCropWindowChanged(Z)V

    :cond_1
    return-void
.end method

.method public final setMaxCropResultSize(II)V
    .locals 1

    .line 429
    iget-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->mCropWindowHandler:Lcom/canhub/cropper/CropWindowHandler;

    invoke-virtual {v0, p1, p2}, Lcom/canhub/cropper/CropWindowHandler;->setMaxCropResultSize(II)V

    return-void
.end method

.method public final setMinCropResultSize(II)V
    .locals 1

    .line 421
    iget-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->mCropWindowHandler:Lcom/canhub/cropper/CropWindowHandler;

    invoke-virtual {v0, p1, p2}, Lcom/canhub/cropper/CropWindowHandler;->setMinCropResultSize(II)V

    return-void
.end method

.method public final setMultiTouchEnabled(Z)Z
    .locals 2

    .line 397
    iget-boolean v0, p0, Lcom/canhub/cropper/CropOverlayView;->mMultiTouchEnabled:Z

    if-eq v0, p1, :cond_1

    .line 398
    iput-boolean p1, p0, Lcom/canhub/cropper/CropOverlayView;->mMultiTouchEnabled:Z

    if-eqz p1, :cond_0

    .line 399
    iget-object p1, p0, Lcom/canhub/cropper/CropOverlayView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    if-nez p1, :cond_0

    .line 400
    new-instance p1, Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0}, Lcom/canhub/cropper/CropOverlayView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/canhub/cropper/CropOverlayView$ScaleListener;

    invoke-direct {v1, p0}, Lcom/canhub/cropper/CropOverlayView$ScaleListener;-><init>(Lcom/canhub/cropper/CropOverlayView;)V

    check-cast v1, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    invoke-direct {p1, v0, v1}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object p1, p0, Lcom/canhub/cropper/CropOverlayView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final setSnapRadius(F)V
    .locals 0

    .line 384
    iput p1, p0, Lcom/canhub/cropper/CropOverlayView;->mSnapRadius:F

    return-void
.end method
