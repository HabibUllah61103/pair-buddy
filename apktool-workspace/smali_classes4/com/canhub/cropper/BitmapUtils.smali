.class public final Lcom/canhub/cropper/BitmapUtils;
.super Ljava/lang/Object;
.source "BitmapUtils.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/canhub/cropper/BitmapUtils$BitmapSampled;,
        Lcom/canhub/cropper/BitmapUtils$RotateBitmapResult;,
        Lcom/canhub/cropper/BitmapUtils$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBitmapUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BitmapUtils.kt\ncom/canhub/cropper/BitmapUtils\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,987:1\n1755#2,3:988\n*S KotlinDebug\n*F\n+ 1 BitmapUtils.kt\ncom/canhub/cropper/BitmapUtils\n*L\n450#1:988,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u009a\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0014\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010\u0007\n\u0002\u0008\u0011\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\r\u0008\u00c0\u0002\u0018\u00002\u00020\u0001:\u0002jkB\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J \u0010!\u001a\u00020\"2\u0008\u0010#\u001a\u0004\u0018\u00010\u001c2\u0006\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020\'J\u0018\u0010!\u001a\u00020\"2\u0008\u0010#\u001a\u0004\u0018\u00010\u001c2\u0006\u0010(\u001a\u00020)J&\u0010*\u001a\u00020+2\u0006\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020\'2\u0006\u0010,\u001a\u00020\r2\u0006\u0010-\u001a\u00020\rJH\u0010.\u001a\u00020+2\u0008\u0010#\u001a\u0004\u0018\u00010\u001c2\u0006\u0010/\u001a\u00020\u00132\u0006\u00100\u001a\u00020\r2\u0006\u00101\u001a\u0002022\u0006\u00103\u001a\u00020\r2\u0006\u00104\u001a\u00020\r2\u0006\u00105\u001a\u0002022\u0006\u00106\u001a\u000202JP\u00107\u001a\u00020\u001c2\u0006\u0010#\u001a\u00020\u001c2\u0006\u0010/\u001a\u00020\u00132\u0006\u00100\u001a\u00020\r2\u0006\u00101\u001a\u0002022\u0006\u00103\u001a\u00020\r2\u0006\u00104\u001a\u00020\r2\u0006\u00108\u001a\u0002092\u0006\u00105\u001a\u0002022\u0006\u00106\u001a\u000202H\u0002Jp\u0010:\u001a\u00020+2\u0006\u0010$\u001a\u00020%2\u0008\u0010;\u001a\u0004\u0018\u00010\'2\u0006\u0010/\u001a\u00020\u00132\u0006\u00100\u001a\u00020\r2\u0006\u0010<\u001a\u00020\r2\u0006\u0010=\u001a\u00020\r2\u0006\u00101\u001a\u0002022\u0006\u00103\u001a\u00020\r2\u0006\u00104\u001a\u00020\r2\u0006\u0010,\u001a\u00020\r2\u0006\u0010-\u001a\u00020\r2\u0006\u00105\u001a\u0002022\u0006\u00106\u001a\u000202J\u000e\u0010>\u001a\u0002092\u0006\u0010?\u001a\u00020\u0013J\u000e\u0010@\u001a\u0002092\u0006\u0010?\u001a\u00020\u0013J\u000e\u0010A\u001a\u0002092\u0006\u0010?\u001a\u00020\u0013J\u000e\u0010B\u001a\u0002092\u0006\u0010?\u001a\u00020\u0013J\u000e\u0010C\u001a\u0002092\u0006\u0010?\u001a\u00020\u0013J\u000e\u0010D\u001a\u0002092\u0006\u0010?\u001a\u00020\u0013J\u000e\u0010E\u001a\u0002092\u0006\u0010?\u001a\u00020\u0013J\u000e\u0010F\u001a\u0002092\u0006\u0010?\u001a\u00020\u0013J6\u0010G\u001a\u00020\u00052\u0006\u0010/\u001a\u00020\u00132\u0006\u0010H\u001a\u00020\r2\u0006\u0010I\u001a\u00020\r2\u0006\u00101\u001a\u0002022\u0006\u00103\u001a\u00020\r2\u0006\u00104\u001a\u00020\rJ \u0010J\u001a\u00020K2\u0006\u0010L\u001a\u00020\u00052\u0006\u00103\u001a\u00020\r2\u0006\u00104\u001a\u00020\rH\u0002J$\u0010M\u001a\u0004\u0018\u00010\'2\u0006\u0010$\u001a\u00020%2\u0008\u0010#\u001a\u0004\u0018\u00010\u001c2\u0008\u0010N\u001a\u0004\u0018\u00010\'J\u001d\u0010O\u001a\u00020K2\u0006\u0010&\u001a\u00020\'2\u0006\u0010P\u001a\u00020QH\u0000\u00a2\u0006\u0002\u0008RJ0\u0010S\u001a\u00020\'2\u0006\u0010$\u001a\u00020%2\u0006\u0010#\u001a\u00020\u001c2\u0006\u0010P\u001a\u00020Q2\u0006\u0010T\u001a\u00020\r2\u0008\u0010N\u001a\u0004\u0018\u00010\'J\u0018\u0010U\u001a\u00020\'2\u0006\u0010$\u001a\u00020%2\u0006\u0010P\u001a\u00020QH\u0002J(\u0010V\u001a\u00020\u001c2\u0008\u0010#\u001a\u0004\u0018\u00010\u001c2\u0006\u0010,\u001a\u00020\r2\u0006\u0010-\u001a\u00020\r2\u0006\u0010W\u001a\u00020XJx\u0010:\u001a\u00020+2\u0006\u0010$\u001a\u00020%2\u0006\u0010;\u001a\u00020\'2\u0006\u0010/\u001a\u00020\u00132\u0006\u00100\u001a\u00020\r2\u0006\u0010<\u001a\u00020\r2\u0006\u0010=\u001a\u00020\r2\u0006\u00101\u001a\u0002022\u0006\u00103\u001a\u00020\r2\u0006\u00104\u001a\u00020\r2\u0006\u0010,\u001a\u00020\r2\u0006\u0010-\u001a\u00020\r2\u0006\u00105\u001a\u0002022\u0006\u00106\u001a\u0002022\u0006\u0010Y\u001a\u00020\rH\u0002Jp\u0010:\u001a\u00020+2\u0006\u0010$\u001a\u00020%2\u0006\u0010;\u001a\u00020\'2\u0006\u0010/\u001a\u00020\u00132\u0006\u00100\u001a\u00020\r2\u0006\u00101\u001a\u0002022\u0006\u00103\u001a\u00020\r2\u0006\u00104\u001a\u00020\r2\u0006\u0010Y\u001a\u00020\r2\u0006\u0010L\u001a\u00020\u00052\u0006\u0010Z\u001a\u00020\r2\u0006\u0010[\u001a\u00020\r2\u0006\u00105\u001a\u0002022\u0006\u00106\u001a\u000202H\u0002J\u0018\u0010\\\u001a\u00020]2\u0006\u0010^\u001a\u00020_2\u0006\u0010&\u001a\u00020\'H\u0002J\"\u0010`\u001a\u0004\u0018\u00010\u001c2\u0006\u0010^\u001a\u00020_2\u0006\u0010&\u001a\u00020\'2\u0006\u0010W\u001a\u00020]H\u0002J8\u0010a\u001a\u00020+2\u0006\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020\'2\u0006\u0010L\u001a\u00020\u00052\u0006\u0010,\u001a\u00020\r2\u0006\u0010-\u001a\u00020\r2\u0006\u0010Y\u001a\u00020\rH\u0002J@\u0010b\u001a\u00020\u001c2\u0006\u0010#\u001a\u00020\u001c2\u0006\u0010/\u001a\u00020\u00132\u0006\u0010L\u001a\u00020\u00052\u0006\u00100\u001a\u00020\r2\u0006\u00101\u001a\u0002022\u0006\u00103\u001a\u00020\r2\u0006\u00104\u001a\u00020\rH\u0002J(\u0010c\u001a\u00020\r2\u0006\u0010Z\u001a\u00020\r2\u0006\u0010[\u001a\u00020\r2\u0006\u0010,\u001a\u00020\r2\u0006\u0010-\u001a\u00020\rH\u0002J\u0018\u0010d\u001a\u00020\r2\u0006\u0010Z\u001a\u00020\r2\u0006\u0010[\u001a\u00020\rH\u0002J(\u0010e\u001a\u00020\u001c2\u0006\u0010#\u001a\u00020\u001c2\u0006\u0010f\u001a\u00020\r2\u0006\u00105\u001a\u0002022\u0006\u00106\u001a\u000202H\u0002R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u000e\u0010\u000c\u001a\u00020\rX\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082T\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0010\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u000bR\u0011\u0010\u0012\u001a\u00020\u0013\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u0011\u0010\u0016\u001a\u00020\u0013\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0015R\u000e\u0010\u0018\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R.\u0010\u0019\u001a\u0016\u0012\u0004\u0012\u00020\u000f\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001c0\u001b\u0018\u00010\u001aX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 R\u0014\u0010g\u001a\u00020\r8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008h\u0010i\u00a8\u0006l"
    }
    d2 = {
        "Lcom/canhub/cropper/BitmapUtils;",
        "",
        "<init>",
        "()V",
        "EMPTY_RECT",
        "Landroid/graphics/Rect;",
        "getEMPTY_RECT",
        "()Landroid/graphics/Rect;",
        "EMPTY_RECT_F",
        "Landroid/graphics/RectF;",
        "getEMPTY_RECT_F",
        "()Landroid/graphics/RectF;",
        "IMAGE_MAX_BITMAP_DIMENSION",
        "",
        "WRITE_AND_TRUNCATE",
        "",
        "RECT",
        "getRECT",
        "POINTS",
        "",
        "getPOINTS",
        "()[F",
        "POINTS2",
        "getPOINTS2",
        "mMaxTextureSize",
        "mStateBitmap",
        "Landroid/util/Pair;",
        "Ljava/lang/ref/WeakReference;",
        "Landroid/graphics/Bitmap;",
        "getMStateBitmap",
        "()Landroid/util/Pair;",
        "setMStateBitmap",
        "(Landroid/util/Pair;)V",
        "orientateBitmapByExif",
        "Lcom/canhub/cropper/BitmapUtils$RotateBitmapResult;",
        "bitmap",
        "context",
        "Landroid/content/Context;",
        "uri",
        "Landroid/net/Uri;",
        "exif",
        "Landroidx/exifinterface/media/ExifInterface;",
        "decodeSampledBitmap",
        "Lcom/canhub/cropper/BitmapUtils$BitmapSampled;",
        "reqWidth",
        "reqHeight",
        "cropBitmapObjectHandleOOM",
        "cropPoints",
        "degreesRotated",
        "fixAspectRatio",
        "",
        "aspectRatioX",
        "aspectRatioY",
        "flipHorizontally",
        "flipVertically",
        "cropBitmapObjectWithScale",
        "scale",
        "",
        "cropBitmap",
        "loadedImageUri",
        "orgWidth",
        "orgHeight",
        "getRectLeft",
        "points",
        "getRectTop",
        "getRectRight",
        "getRectBottom",
        "getRectWidth",
        "getRectHeight",
        "getRectCenterX",
        "getRectCenterY",
        "getRectFromPoints",
        "imageWidth",
        "imageHeight",
        "fixRectForAspectRatio",
        "",
        "rect",
        "writeTempStateStoreBitmap",
        "customOutputUri",
        "validateOutputUri",
        "compressFormat",
        "Landroid/graphics/Bitmap$CompressFormat;",
        "validateOutputUri$cropper_release",
        "writeBitmapToUri",
        "compressQuality",
        "buildUri",
        "resizeBitmap",
        "options",
        "Lcom/canhub/cropper/CropImageView$RequestSizeOptions;",
        "sampleMulti",
        "width",
        "height",
        "decodeImageForOption",
        "Landroid/graphics/BitmapFactory$Options;",
        "resolver",
        "Landroid/content/ContentResolver;",
        "decodeImage",
        "decodeSampledBitmapRegion",
        "cropForRotatedImage",
        "calculateInSampleSizeByRequestedSize",
        "calculateInSampleSizeByMaxTextureSize",
        "rotateAndFlipBitmapInt",
        "degrees",
        "maxTextureSize",
        "getMaxTextureSize",
        "()I",
        "BitmapSampled",
        "RotateBitmapResult",
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
.field private static final EMPTY_RECT:Landroid/graphics/Rect;

.field private static final EMPTY_RECT_F:Landroid/graphics/RectF;

.field private static final IMAGE_MAX_BITMAP_DIMENSION:I = 0x800

.field public static final INSTANCE:Lcom/canhub/cropper/BitmapUtils;

.field private static final POINTS:[F

.field private static final POINTS2:[F

.field private static final RECT:Landroid/graphics/RectF;

.field private static final WRITE_AND_TRUNCATE:Ljava/lang/String; = "wt"

.field private static mMaxTextureSize:I

.field private static mStateBitmap:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/canhub/cropper/BitmapUtils;

    invoke-direct {v0}, Lcom/canhub/cropper/BitmapUtils;-><init>()V

    sput-object v0, Lcom/canhub/cropper/BitmapUtils;->INSTANCE:Lcom/canhub/cropper/BitmapUtils;

    .line 38
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/canhub/cropper/BitmapUtils;->EMPTY_RECT:Landroid/graphics/Rect;

    .line 39
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    sput-object v0, Lcom/canhub/cropper/BitmapUtils;->EMPTY_RECT_F:Landroid/graphics/RectF;

    .line 46
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    sput-object v0, Lcom/canhub/cropper/BitmapUtils;->RECT:Landroid/graphics/RectF;

    const/4 v0, 0x6

    .line 51
    new-array v1, v0, [F

    sput-object v1, Lcom/canhub/cropper/BitmapUtils;->POINTS:[F

    .line 56
    new-array v0, v0, [F

    sput-object v0, Lcom/canhub/cropper/BitmapUtils;->POINTS2:[F

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final buildUri(Landroid/content/Context;Landroid/graphics/Bitmap$CompressFormat;)Landroid/net/Uri;
    .locals 3

    .line 490
    :try_start_0
    sget-object v0, Lcom/canhub/cropper/BitmapUtils$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Landroid/graphics/Bitmap$CompressFormat;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    .line 493
    const-string p2, ".webp"

    goto :goto_0

    .line 492
    :cond_0
    const-string p2, ".png"

    goto :goto_0

    .line 491
    :cond_1
    const-string p2, ".jpg"

    .line 496
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v1, 0x1d

    const-string v2, "cropped"

    if-lt v0, v1, :cond_2

    .line 497
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-static {v2, p2, v0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object p2

    .line 498
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p1, p2}, Lcom/canhub/cropper/utils/GetUriForFileKt;->getUriForFile(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    return-object p1

    .line 500
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p1

    invoke-static {v2, p2, p1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 503
    new-instance p2, Ljava/lang/RuntimeException;

    const-string v0, "Failed to create temp file for output image"

    check-cast p1, Ljava/lang/Throwable;

    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method private final calculateInSampleSizeByMaxTextureSize(II)I
    .locals 3

    .line 874
    sget v0, Lcom/canhub/cropper/BitmapUtils;->mMaxTextureSize:I

    if-nez v0, :cond_0

    .line 875
    invoke-direct {p0}, Lcom/canhub/cropper/BitmapUtils;->getMaxTextureSize()I

    move-result v0

    sput v0, Lcom/canhub/cropper/BitmapUtils;->mMaxTextureSize:I

    .line 878
    :cond_0
    sget v0, Lcom/canhub/cropper/BitmapUtils;->mMaxTextureSize:I

    const/4 v1, 0x1

    if-lez v0, :cond_3

    .line 880
    :goto_0
    div-int v0, p2, v1

    sget v2, Lcom/canhub/cropper/BitmapUtils;->mMaxTextureSize:I

    if-gt v0, v2, :cond_2

    .line 881
    div-int v0, p1, v1

    if-le v0, v2, :cond_1

    goto :goto_1

    :cond_1
    return v1

    :cond_2
    :goto_1
    mul-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_3
    return v1
.end method

.method private final calculateInSampleSizeByRequestedSize(IIII)I
    .locals 2

    const/4 v0, 0x1

    if-gt p2, p4, :cond_1

    if-le p1, p3, :cond_0

    goto :goto_0

    :cond_0
    return v0

    .line 858
    :cond_1
    :goto_0
    div-int/lit8 v1, p2, 0x2

    div-int/2addr v1, v0

    if-le v1, p4, :cond_2

    div-int/lit8 v1, p1, 0x2

    div-int/2addr v1, v0

    if-le v1, p3, :cond_2

    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_2
    return v0
.end method

.method private final cropBitmap(Landroid/content/Context;Landroid/net/Uri;[FIIIZIIIIZZI)Lcom/canhub/cropper/BitmapUtils$BitmapSampled;
    .locals 16

    move/from16 v5, p4

    move-object/from16 v6, p0

    move-object/from16 v7, p3

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    .line 572
    invoke-virtual/range {v6 .. v12}, Lcom/canhub/cropper/BitmapUtils;->getRectFromPoints([FIIZII)Landroid/graphics/Rect;

    move-result-object v4

    if-lez p10, :cond_0

    move/from16 v10, p10

    goto :goto_0

    .line 580
    :cond_0
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v0

    move v10, v0

    :goto_0
    if-lez p11, :cond_1

    move/from16 v11, p11

    goto :goto_1

    .line 581
    :cond_1
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v0

    move v11, v0

    :goto_1
    const/4 v0, 0x0

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v12, p14

    move-object v9, v4

    .line 588
    :try_start_0
    invoke-direct/range {v6 .. v12}, Lcom/canhub/cropper/BitmapUtils;->decodeSampledBitmapRegion(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/Rect;III)Lcom/canhub/cropper/BitmapUtils$BitmapSampled;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 589
    :try_start_1
    invoke-virtual {v1}, Lcom/canhub/cropper/BitmapUtils$BitmapSampled;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 590
    invoke-virtual {v1}, Lcom/canhub/cropper/BitmapUtils$BitmapSampled;->getSampleSize()I

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_0
    move-object v4, v9

    :catch_1
    const/4 v1, 0x1

    :goto_2
    move v15, v1

    move-object v1, v0

    move v0, v15

    if-eqz v1, :cond_3

    move-object/from16 v6, p0

    move/from16 v13, p12

    move/from16 v14, p13

    .line 597
    :try_start_2
    invoke-direct {v6, v1, v5, v13, v14}, Lcom/canhub/cropper/BitmapUtils;->rotateAndFlipBitmapInt(Landroid/graphics/Bitmap;IZZ)Landroid/graphics/Bitmap;

    move-result-object v2
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_3

    .line 599
    :try_start_3
    rem-int/lit8 v1, v5, 0x5a

    if-eqz v1, :cond_2

    move-object/from16 v3, p3

    move/from16 v7, p8

    move/from16 v8, p9

    move-object v1, v6

    move/from16 v6, p7

    .line 602
    invoke-direct/range {v1 .. v8}, Lcom/canhub/cropper/BitmapUtils;->cropForRotatedImage(Landroid/graphics/Bitmap;[FLandroid/graphics/Rect;IZII)Landroid/graphics/Bitmap;

    move-result-object v2
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_2

    .line 616
    :cond_2
    new-instance v1, Lcom/canhub/cropper/BitmapUtils$BitmapSampled;

    invoke-direct {v1, v2, v0}, Lcom/canhub/cropper/BitmapUtils$BitmapSampled;-><init>(Landroid/graphics/Bitmap;I)V

    goto :goto_4

    :catch_2
    move-exception v0

    move-object v1, v2

    goto :goto_3

    :catch_3
    move-exception v0

    .line 613
    :goto_3
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 614
    throw v0

    :cond_3
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    move/from16 v13, p12

    move/from16 v14, p13

    move/from16 v9, p14

    move v12, v11

    move v11, v10

    move-object v10, v4

    move-object/from16 v4, p3

    .line 619
    invoke-direct/range {v1 .. v14}, Lcom/canhub/cropper/BitmapUtils;->cropBitmap(Landroid/content/Context;Landroid/net/Uri;[FIZIIILandroid/graphics/Rect;IIZZ)Lcom/canhub/cropper/BitmapUtils$BitmapSampled;

    move-result-object v0

    move-object v1, v0

    :goto_4
    return-object v1
.end method

.method private final cropBitmap(Landroid/content/Context;Landroid/net/Uri;[FIZIIILandroid/graphics/Rect;IIZZ)Lcom/canhub/cropper/BitmapUtils$BitmapSampled;
    .locals 14

    move-object/from16 v11, p2

    move-object/from16 v0, p3

    const/4 v12, 0x0

    .line 659
    :try_start_0
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 663
    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 664
    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Rect;->height()I

    move-result v4

    move/from16 v5, p10

    move/from16 v6, p11

    .line 662
    invoke-direct {p0, v3, v4, v5, v6}, Lcom/canhub/cropper/BitmapUtils;->calculateInSampleSizeByRequestedSize(IIII)I

    move-result v3

    mul-int v13, p8, v3

    .line 669
    iput v13, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 671
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "getContentResolver(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 670
    invoke-direct {p0, v3, v11, v2}, Lcom/canhub/cropper/BitmapUtils;->decodeImage(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_2

    .line 678
    :try_start_1
    array-length v4, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object v5, v3

    :try_start_2
    new-array v3, v4, [F

    .line 679
    array-length v6, v0

    const/4 v7, 0x0

    invoke-static {v0, v7, v3, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    if-ge v7, v4, :cond_0

    .line 681
    aget v0, v3, v7

    iget v6, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    int-to-float v6, v6

    div-float/2addr v0, v6

    aput v0, v3, v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    const/high16 v8, 0x3f800000    # 1.0f

    move-object v1, p0

    move/from16 v4, p4

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v9, p12

    move/from16 v10, p13

    move-object v2, v5

    move/from16 v5, p5

    .line 684
    :try_start_3
    invoke-direct/range {v1 .. v10}, Lcom/canhub/cropper/BitmapUtils;->cropBitmapObjectWithScale(Landroid/graphics/Bitmap;[FIZIIFZZ)Landroid/graphics/Bitmap;

    move-result-object v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 695
    :try_start_4
    invoke-static {v12, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 696
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v2, v5

    goto :goto_1

    :catchall_2
    move-exception v0

    move-object v2, v3

    .line 695
    :goto_1
    invoke-static {v12, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 696
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    throw v0
    :try_end_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 706
    :cond_2
    :goto_2
    new-instance v0, Lcom/canhub/cropper/BitmapUtils$BitmapSampled;

    invoke-direct {v0, v12, v13}, Lcom/canhub/cropper/BitmapUtils$BitmapSampled;-><init>(Landroid/graphics/Bitmap;I)V

    return-object v0

    :catch_0
    move-exception v0

    .line 704
    new-instance v1, Lcom/canhub/cropper/CropException$FailedToLoadBitmap;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v11, v0}, Lcom/canhub/cropper/CropException$FailedToLoadBitmap;-><init>(Landroid/net/Uri;Ljava/lang/String;)V

    throw v1

    :catch_1
    move-exception v0

    if-eqz v12, :cond_3

    .line 701
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->recycle()V

    .line 702
    :cond_3
    throw v0
.end method

.method private final cropBitmapObjectWithScale(Landroid/graphics/Bitmap;[FIZIIFZZ)Landroid/graphics/Bitmap;
    .locals 15

    move/from16 v7, p3

    move/from16 v0, p7

    .line 225
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    .line 226
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    move-object v8, p0

    move-object/from16 v9, p2

    move/from16 v12, p4

    move/from16 v13, p5

    move/from16 v14, p6

    .line 223
    invoke-virtual/range {v8 .. v14}, Lcom/canhub/cropper/BitmapUtils;->getRectFromPoints([FIIZII)Landroid/graphics/Rect;

    move-result-object v10

    .line 232
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    int-to-float v1, v7

    .line 233
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    invoke-virtual {v5, v1, v2, v4}, Landroid/graphics/Matrix;->setRotate(FFF)V

    if-eqz p8, :cond_0

    neg-float v1, v0

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    if-eqz p9, :cond_1

    neg-float v0, v0

    .line 234
    :cond_1
    invoke-virtual {v5, v1, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 240
    iget v1, v10, Landroid/graphics/Rect;->left:I

    .line 241
    iget v2, v10, Landroid/graphics/Rect;->top:I

    .line 242
    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 243
    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v4

    const/4 v6, 0x1

    move-object/from16 v0, p1

    .line 238
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    const-string v2, "createBitmap(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 247
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 249
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 252
    :cond_2
    rem-int/lit8 v0, v7, 0x5a

    if-eqz v0, :cond_3

    move-object v0, p0

    move-object/from16 v2, p2

    move/from16 v5, p4

    move/from16 v6, p5

    move v4, v7

    move-object v3, v10

    move/from16 v7, p6

    .line 255
    invoke-direct/range {v0 .. v7}, Lcom/canhub/cropper/BitmapUtils;->cropForRotatedImage(Landroid/graphics/Bitmap;[FLandroid/graphics/Rect;IZII)Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_3
    return-object v1
.end method

.method private final cropForRotatedImage(Landroid/graphics/Bitmap;[FLandroid/graphics/Rect;IZII)Landroid/graphics/Bitmap;
    .locals 8

    .line 809
    rem-int/lit8 v0, p4, 0x5a

    if-eqz v0, :cond_6

    int-to-double v0, p4

    .line 814
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    const/16 v2, 0x5a

    if-lt p4, v2, :cond_1

    const/16 v2, 0xb5

    if-gt v2, p4, :cond_0

    const/16 v2, 0x10e

    if-ge p4, v2, :cond_0

    goto :goto_0

    .line 815
    :cond_0
    iget p4, p3, Landroid/graphics/Rect;->right:I

    goto :goto_1

    :cond_1
    :goto_0
    iget p4, p3, Landroid/graphics/Rect;->left:I

    :goto_1
    const/4 v2, 0x0

    move v3, v2

    .line 817
    :goto_2
    array-length v4, p2

    if-ge v3, v4, :cond_3

    .line 818
    aget v4, p2, v3

    add-int/lit8 v5, p4, -0x1

    int-to-float v5, v5

    cmpl-float v5, v4, v5

    if-ltz v5, :cond_2

    add-int/lit8 v5, p4, 0x1

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_2

    .line 819
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    iget p4, p3, Landroid/graphics/Rect;->bottom:I

    int-to-float p4, p4

    add-int/lit8 v3, v3, 0x1

    aget v2, p2, v3

    sub-float/2addr p4, v2

    float-to-double v6, p4

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    double-to-int v2, v4

    .line 820
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    aget p4, p2, v3

    iget v6, p3, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    sub-float/2addr p4, v6

    float-to-double v6, p4

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    double-to-int p4, v4

    .line 821
    aget v4, p2, v3

    iget v5, p3, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    double-to-int v4, v4

    .line 822
    iget v5, p3, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    aget p2, p2, v3

    sub-float/2addr v5, p2

    float-to-double v5, v5

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    div-double/2addr v5, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    double-to-int p2, v0

    goto :goto_3

    :cond_2
    add-int/lit8 v3, v3, 0x2

    goto :goto_2

    :cond_3
    move p2, v2

    move p4, p2

    move v4, p4

    :goto_3
    add-int/2addr v4, v2

    add-int/2addr p2, p4

    .line 827
    invoke-virtual {p3, v2, p4, v4, p2}, Landroid/graphics/Rect;->set(IIII)V

    if-eqz p5, :cond_4

    .line 829
    invoke-direct {p0, p3, p6, p7}, Lcom/canhub/cropper/BitmapUtils;->fixRectForAspectRatio(Landroid/graphics/Rect;II)V

    .line 834
    :cond_4
    iget p2, p3, Landroid/graphics/Rect;->left:I

    .line 835
    iget p4, p3, Landroid/graphics/Rect;->top:I

    .line 836
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p5

    .line 837
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p3

    .line 832
    invoke-static {p1, p2, p4, p5, p3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 839
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_5

    .line 840
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_5
    return-object p2

    :cond_6
    return-object p1
.end method

.method private final decodeImage(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 732
    :goto_0
    invoke-virtual {p1, p2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    check-cast v0, Ljava/io/Closeable;

    :try_start_0
    move-object v1, v0

    check-cast v1, Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    .line 734
    :try_start_1
    sget-object v3, Lcom/canhub/cropper/BitmapUtils;->EMPTY_RECT:Landroid/graphics/Rect;

    invoke-static {v1, v3, p3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object p1

    .line 736
    :catch_0
    :try_start_2
    iget v1, p3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    mul-int/lit8 v1, v1, 0x2

    iput v1, p3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 738
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 732
    invoke-static {v0, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 739
    iget v0, p3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/16 v1, 0x200

    if-gt v0, v1, :cond_0

    goto :goto_0

    .line 740
    :cond_0
    new-instance p1, Lcom/canhub/cropper/CropException$FailedToDecodeImage;

    invoke-direct {p1, p2}, Lcom/canhub/cropper/CropException$FailedToDecodeImage;-><init>(Landroid/net/Uri;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 732
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p2

    invoke-static {v0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2
.end method

.method private final decodeImageForOption(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/BitmapFactory$Options;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 713
    invoke-virtual {p1, p2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1

    check-cast p1, Ljava/io/Closeable;

    :try_start_0
    move-object p2, p1

    check-cast p2, Ljava/io/InputStream;

    .line 714
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 715
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 716
    sget-object v1, Lcom/canhub/cropper/BitmapUtils;->EMPTY_RECT:Landroid/graphics/Rect;

    invoke-static {p2, v1, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    const/4 p2, 0x0

    .line 717
    iput-boolean p2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p2, 0x0

    .line 713
    invoke-static {p1, p2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    :catchall_0
    move-exception p2

    :try_start_1
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {p1, p2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private final decodeSampledBitmapRegion(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/Rect;III)Lcom/canhub/cropper/BitmapUtils$BitmapSampled;
    .locals 3

    .line 758
    :try_start_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 760
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 761
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 759
    invoke-direct {p0, v1, v2, p4, p5}, Lcom/canhub/cropper/BitmapUtils;->calculateInSampleSizeByRequestedSize(IIII)I

    move-result p4

    mul-int/2addr p6, p4

    iput p6, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 766
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1

    check-cast p1, Ljava/io/Closeable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    move-object p4, p1

    check-cast p4, Ljava/io/InputStream;

    .line 768
    sget p5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p6, 0x1f

    if-lt p5, p6, :cond_0

    invoke-static {p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p4}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/InputStream;)Landroid/graphics/BitmapRegionDecoder;

    move-result-object p4

    goto :goto_0

    .line 769
    :cond_0
    invoke-static {p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 p5, 0x0

    invoke-static {p4, p5}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object p4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_1
    :goto_0
    const/4 p5, 0x0

    .line 775
    :try_start_2
    new-instance p6, Lcom/canhub/cropper/BitmapUtils$BitmapSampled;

    .line 776
    invoke-static {p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p4, p3, v0}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 777
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 775
    invoke-direct {p6, v1, v2}, Lcom/canhub/cropper/BitmapUtils$BitmapSampled;-><init>(Landroid/graphics/Bitmap;I)V
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 784
    :try_start_3
    invoke-virtual {p4}, Landroid/graphics/BitmapRegionDecoder;->recycle()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 775
    :try_start_4
    invoke-static {p1, p5}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    return-object p6

    :catchall_0
    move-exception p3

    goto :goto_1

    .line 780
    :catch_0
    :try_start_5
    iget p6, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    mul-int/lit8 p6, p6, 0x2

    iput p6, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 782
    iget p6, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/16 v1, 0x200

    if-le p6, v1, :cond_1

    if-eqz p4, :cond_2

    .line 784
    :try_start_6
    invoke-virtual {p4}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    .line 786
    :cond_2
    sget-object p3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 766
    :try_start_7
    invoke-static {p1, p5}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 790
    new-instance p1, Lcom/canhub/cropper/BitmapUtils$BitmapSampled;

    const/4 p2, 0x1

    invoke-direct {p1, p5, p2}, Lcom/canhub/cropper/BitmapUtils$BitmapSampled;-><init>(Landroid/graphics/Bitmap;I)V

    return-object p1

    :goto_1
    if-eqz p4, :cond_3

    .line 784
    :try_start_8
    invoke-virtual {p4}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    :cond_3
    throw p3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :catchall_1
    move-exception p3

    .line 766
    :try_start_9
    throw p3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :catchall_2
    move-exception p4

    :try_start_a
    invoke-static {p1, p3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p4
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    :catch_1
    move-exception p1

    .line 788
    new-instance p3, Lcom/canhub/cropper/CropException$FailedToLoadBitmap;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p2, p1}, Lcom/canhub/cropper/CropException$FailedToLoadBitmap;-><init>(Landroid/net/Uri;Ljava/lang/String;)V

    throw p3
.end method

.method private final fixRectForAspectRatio(Landroid/graphics/Rect;II)V
    .locals 1

    if-ne p2, p3, :cond_1

    .line 390
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p3

    if-eq p2, p3, :cond_1

    .line 391
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p2

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p3

    if-le p2, p3, :cond_0

    .line 392
    iget p2, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p3

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    sub-int/2addr p3, v0

    sub-int/2addr p2, p3

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    return-void

    .line 394
    :cond_0
    iget p2, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    sub-int/2addr p3, v0

    sub-int/2addr p2, p3

    iput p2, p1, Landroid/graphics/Rect;->right:I

    :cond_1
    return-void
.end method

.method private final getMaxTextureSize()I
    .locals 11

    const/16 v0, 0x800

    .line 932
    :try_start_0
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type javax.microedition.khronos.egl.EGL10"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljavax/microedition/khronos/egl/EGL10;

    .line 933
    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v2

    const/4 v3, 0x2

    .line 935
    new-array v3, v3, [I

    .line 936
    invoke-interface {v1, v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    const/4 v3, 0x1

    .line 938
    new-array v4, v3, [I

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 939
    invoke-interface {v1, v2, v5, v6, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigs(Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 942
    aget v5, v4, v6

    new-array v7, v5, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 944
    invoke-interface {v1, v2, v7, v5, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigs(Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 950
    new-array v3, v3, [I

    .line 953
    aget v4, v4, v6

    move v5, v6

    move v8, v5

    :goto_0
    if-ge v5, v4, :cond_1

    .line 957
    aget-object v9, v7, v5

    const/16 v10, 0x302c

    .line 955
    invoke-interface {v1, v2, v9, v10, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 962
    aget v9, v3, v6

    if-ge v8, v9, :cond_0

    move v8, v9

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 967
    :cond_1
    invoke-interface {v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    .line 969
    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return v0
.end method

.method private final rotateAndFlipBitmapInt(Landroid/graphics/Bitmap;IZZ)Landroid/graphics/Bitmap;
    .locals 7

    if-gtz p2, :cond_1

    if-nez p3, :cond_1

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    return-object p1

    .line 899
    :cond_1
    :goto_0
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    int-to-float p2, p2

    .line 900
    invoke-virtual {v5, p2}, Landroid/graphics/Matrix;->setRotate(F)V

    const/4 p2, -0x1

    const/4 v0, 0x1

    if-eqz p3, :cond_2

    move p3, p2

    goto :goto_1

    :cond_2
    move p3, v0

    :goto_1
    int-to-float p3, p3

    if-eqz p4, :cond_3

    goto :goto_2

    :cond_3
    move p2, v0

    :goto_2
    int-to-float p2, p2

    .line 901
    invoke-virtual {v5, p3, p2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 905
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    const-string p2, "createBitmap(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 906
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 907
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_4
    return-object p1
.end method


# virtual methods
.method public final cropBitmap(Landroid/content/Context;Landroid/net/Uri;[FIIIZIIIIZZ)Lcom/canhub/cropper/BitmapUtils$BitmapSampled;
    .locals 16

    const-string v0, "context"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cropPoints"

    move-object/from16 v4, p3

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    move v15, v0

    .line 295
    :goto_0
    :try_start_0
    invoke-static/range {p2 .. p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    .line 293
    invoke-direct/range {v1 .. v15}, Lcom/canhub/cropper/BitmapUtils;->cropBitmap(Landroid/content/Context;Landroid/net/Uri;[FIIIZIIIIZZI)Lcom/canhub/cropper/BitmapUtils$BitmapSampled;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    mul-int/lit8 v15, v15, 0x2

    const/16 v1, 0x10

    if-gt v15, v1, :cond_0

    move-object/from16 v2, p1

    move-object/from16 v4, p3

    goto :goto_0

    .line 313
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    .line 314
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to handle OOM by sampling ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v4, p2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 315
    check-cast v0, Ljava/lang/Throwable;

    .line 313
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final cropBitmapObjectHandleOOM(Landroid/graphics/Bitmap;[FIZIIZZ)Lcom/canhub/cropper/BitmapUtils$BitmapSampled;
    .locals 13

    const-string v0, "cropPoints"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v11, 0x1

    move v12, v11

    .line 181
    :goto_0
    :try_start_0
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    int-to-float v0, v11

    int-to-float v1, v12

    div-float v8, v0, v1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v9, p7

    move/from16 v10, p8

    .line 180
    invoke-direct/range {v1 .. v10}, Lcom/canhub/cropper/BitmapUtils;->cropBitmapObjectWithScale(Landroid/graphics/Bitmap;[FIZIIFZZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 191
    new-instance v1, Lcom/canhub/cropper/BitmapUtils$BitmapSampled;

    invoke-direct {v1, v0, v12}, Lcom/canhub/cropper/BitmapUtils$BitmapSampled;-><init>(Landroid/graphics/Bitmap;I)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    mul-int/lit8 v12, v12, 0x2

    const/16 v1, 0x8

    if-gt v12, v1, :cond_0

    goto :goto_0

    .line 195
    :cond_0
    throw v0
.end method

.method public final decodeSampledBitmap(Landroid/content/Context;Landroid/net/Uri;II)Lcom/canhub/cropper/BitmapUtils$BitmapSampled;
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "uri"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 133
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, p1, p2}, Lcom/canhub/cropper/BitmapUtils;->decodeImageForOption(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    .line 134
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p3, "File is not a picture"

    invoke-direct {p1, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 138
    :cond_1
    :goto_0
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 139
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 137
    invoke-direct {p0, v1, v2, p3, p4}, Lcom/canhub/cropper/BitmapUtils;->calculateInSampleSizeByRequestedSize(IIII)I

    move-result p3

    .line 144
    iget p4, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 145
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 143
    invoke-direct {p0, p4, v1}, Lcom/canhub/cropper/BitmapUtils;->calculateInSampleSizeByMaxTextureSize(II)I

    move-result p4

    invoke-static {p3, p4}, Ljava/lang/Math;->max(II)I

    move-result p3

    .line 136
    iput p3, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 149
    invoke-direct {p0, p1, p2, v0}, Lcom/canhub/cropper/BitmapUtils;->decodeImage(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 154
    new-instance p3, Lcom/canhub/cropper/BitmapUtils$BitmapSampled;

    iget p4, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-direct {p3, p1, p4}, Lcom/canhub/cropper/BitmapUtils$BitmapSampled;-><init>(Landroid/graphics/Bitmap;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p3

    :catch_0
    move-exception p1

    .line 156
    new-instance p3, Lcom/canhub/cropper/CropException$FailedToLoadBitmap;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p2, p1}, Lcom/canhub/cropper/CropException$FailedToLoadBitmap;-><init>(Landroid/net/Uri;Ljava/lang/String;)V

    throw p3
.end method

.method public final getEMPTY_RECT()Landroid/graphics/Rect;
    .locals 1

    .line 38
    sget-object v0, Lcom/canhub/cropper/BitmapUtils;->EMPTY_RECT:Landroid/graphics/Rect;

    return-object v0
.end method

.method public final getEMPTY_RECT_F()Landroid/graphics/RectF;
    .locals 1

    .line 39
    sget-object v0, Lcom/canhub/cropper/BitmapUtils;->EMPTY_RECT_F:Landroid/graphics/RectF;

    return-object v0
.end method

.method public final getMStateBitmap()Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation

    .line 66
    sget-object v0, Lcom/canhub/cropper/BitmapUtils;->mStateBitmap:Landroid/util/Pair;

    return-object v0
.end method

.method public final getPOINTS()[F
    .locals 1

    .line 51
    sget-object v0, Lcom/canhub/cropper/BitmapUtils;->POINTS:[F

    return-object v0
.end method

.method public final getPOINTS2()[F
    .locals 1

    .line 56
    sget-object v0, Lcom/canhub/cropper/BitmapUtils;->POINTS2:[F

    return-object v0
.end method

.method public final getRECT()Landroid/graphics/RectF;
    .locals 1

    .line 46
    sget-object v0, Lcom/canhub/cropper/BitmapUtils;->RECT:Landroid/graphics/RectF;

    return-object v0
.end method

.method public final getRectBottom([F)F
    .locals 2

    const-string v0, "points"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 340
    aget v0, p1, v0

    const/4 v1, 0x3

    aget v1, p1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/4 v1, 0x5

    aget v1, p1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/4 v1, 0x7

    aget p1, p1, v1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    return p1
.end method

.method public final getRectCenterX([F)F
    .locals 1

    const-string v0, "points"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 355
    invoke-virtual {p0, p1}, Lcom/canhub/cropper/BitmapUtils;->getRectRight([F)F

    move-result v0

    invoke-virtual {p0, p1}, Lcom/canhub/cropper/BitmapUtils;->getRectLeft([F)F

    move-result p1

    add-float/2addr v0, p1

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr v0, p1

    return v0
.end method

.method public final getRectCenterY([F)F
    .locals 1

    const-string v0, "points"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 360
    invoke-virtual {p0, p1}, Lcom/canhub/cropper/BitmapUtils;->getRectBottom([F)F

    move-result v0

    invoke-virtual {p0, p1}, Lcom/canhub/cropper/BitmapUtils;->getRectTop([F)F

    move-result p1

    add-float/2addr v0, p1

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr v0, p1

    return v0
.end method

.method public final getRectFromPoints([FIIZII)Landroid/graphics/Rect;
    .locals 3

    const-string v0, "cropPoints"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 374
    invoke-virtual {p0, p1}, Lcom/canhub/cropper/BitmapUtils;->getRectLeft([F)F

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v0}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v0

    .line 375
    invoke-virtual {p0, p1}, Lcom/canhub/cropper/BitmapUtils;->getRectTop([F)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v1}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v1

    int-to-float p2, p2

    .line 376
    invoke-virtual {p0, p1}, Lcom/canhub/cropper/BitmapUtils;->getRectRight([F)F

    move-result v2

    invoke-static {p2, v2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    invoke-static {p2}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result p2

    int-to-float p3, p3

    .line 377
    invoke-virtual {p0, p1}, Lcom/canhub/cropper/BitmapUtils;->getRectBottom([F)F

    move-result p1

    invoke-static {p3, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {p1}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result p1

    .line 378
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3, v0, v1, p2, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    if-eqz p4, :cond_0

    .line 380
    invoke-direct {p0, p3, p5, p6}, Lcom/canhub/cropper/BitmapUtils;->fixRectForAspectRatio(Landroid/graphics/Rect;II)V

    :cond_0
    return-object p3
.end method

.method public final getRectHeight([F)F
    .locals 1

    const-string v0, "points"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 350
    invoke-virtual {p0, p1}, Lcom/canhub/cropper/BitmapUtils;->getRectBottom([F)F

    move-result v0

    invoke-virtual {p0, p1}, Lcom/canhub/cropper/BitmapUtils;->getRectTop([F)F

    move-result p1

    sub-float/2addr v0, p1

    return v0
.end method

.method public final getRectLeft([F)F
    .locals 2

    const-string v0, "points"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 325
    aget v0, p1, v0

    const/4 v1, 0x2

    aget v1, p1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/4 v1, 0x4

    aget v1, p1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/4 v1, 0x6

    aget p1, p1, v1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    return p1
.end method

.method public final getRectRight([F)F
    .locals 2

    const-string v0, "points"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 335
    aget v0, p1, v0

    const/4 v1, 0x2

    aget v1, p1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/4 v1, 0x4

    aget v1, p1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/4 v1, 0x6

    aget p1, p1, v1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    return p1
.end method

.method public final getRectTop([F)F
    .locals 2

    const-string v0, "points"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 330
    aget v0, p1, v0

    const/4 v1, 0x3

    aget v1, p1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/4 v1, 0x5

    aget v1, p1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/4 v1, 0x7

    aget p1, p1, v1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    return p1
.end method

.method public final getRectWidth([F)F
    .locals 1

    const-string v0, "points"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 345
    invoke-virtual {p0, p1}, Lcom/canhub/cropper/BitmapUtils;->getRectRight([F)F

    move-result v0

    invoke-virtual {p0, p1}, Lcom/canhub/cropper/BitmapUtils;->getRectLeft([F)F

    move-result p1

    sub-float/2addr v0, p1

    return v0
.end method

.method public final orientateBitmapByExif(Landroid/graphics/Bitmap;Landroid/content/Context;Landroid/net/Uri;)Lcom/canhub/cropper/BitmapUtils$RotateBitmapResult;
    .locals 2

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "uri"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 75
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p2

    if-eqz p2, :cond_0

    check-cast p2, Ljava/io/Closeable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    move-object p3, p2

    check-cast p3, Ljava/io/InputStream;

    .line 76
    new-instance v1, Landroidx/exifinterface/media/ExifInterface;

    invoke-direct {v1, p3}, Landroidx/exifinterface/media/ExifInterface;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    :try_start_2
    invoke-static {p2, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception p3

    :try_start_3
    throw p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    :try_start_4
    invoke-static {p2, p3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 83
    invoke-virtual {p0, p1, v0}, Lcom/canhub/cropper/BitmapUtils;->orientateBitmapByExif(Landroid/graphics/Bitmap;Landroidx/exifinterface/media/ExifInterface;)Lcom/canhub/cropper/BitmapUtils$RotateBitmapResult;

    move-result-object p1

    goto :goto_1

    .line 84
    :cond_1
    new-instance p2, Lcom/canhub/cropper/BitmapUtils$RotateBitmapResult;

    const/4 p3, 0x0

    invoke-direct {p2, p1, p3, p3, p3}, Lcom/canhub/cropper/BitmapUtils$RotateBitmapResult;-><init>(Landroid/graphics/Bitmap;IZZ)V

    move-object p1, p2

    :goto_1
    return-object p1
.end method

.method public final orientateBitmapByExif(Landroid/graphics/Bitmap;Landroidx/exifinterface/media/ExifInterface;)Lcom/canhub/cropper/BitmapUtils$RotateBitmapResult;
    .locals 6

    const-string v0, "exif"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    const-string v0, "Orientation"

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result p2

    const/4 v0, 0x3

    const/4 v2, 0x7

    const/4 v3, 0x5

    const/4 v4, 0x0

    if-eq p2, v0, :cond_2

    if-eq p2, v3, :cond_1

    const/4 v0, 0x6

    if-eq p2, v0, :cond_1

    if-eq p2, v2, :cond_1

    const/16 v0, 0x8

    if-eq p2, v0, :cond_0

    move v0, v4

    goto :goto_0

    :cond_0
    const/16 v0, 0x10e

    goto :goto_0

    :cond_1
    const/16 v0, 0x5a

    goto :goto_0

    :cond_2
    const/16 v0, 0xb4

    :goto_0
    const/4 v5, 0x2

    if-eq p2, v5, :cond_4

    if-ne p2, v3, :cond_3

    goto :goto_1

    :cond_3
    move v3, v4

    goto :goto_2

    :cond_4
    :goto_1
    move v3, v1

    :goto_2
    const/4 v5, 0x4

    if-eq p2, v5, :cond_6

    if-ne p2, v2, :cond_5

    goto :goto_3

    :cond_5
    move v1, v4

    .line 114
    :cond_6
    :goto_3
    new-instance p2, Lcom/canhub/cropper/BitmapUtils$RotateBitmapResult;

    invoke-direct {p2, p1, v0, v3, v1}, Lcom/canhub/cropper/BitmapUtils$RotateBitmapResult;-><init>(Landroid/graphics/Bitmap;IZZ)V

    return-object p2
.end method

.method public final resizeBitmap(Landroid/graphics/Bitmap;IILcom/canhub/cropper/CropImageView$RequestSizeOptions;)Landroid/graphics/Bitmap;
    .locals 3

    const-string v0, "options"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-lez p2, :cond_5

    if-lez p3, :cond_5

    .line 516
    :try_start_0
    sget-object v0, Lcom/canhub/cropper/CropImageView$RequestSizeOptions;->RESIZE_FIT:Lcom/canhub/cropper/CropImageView$RequestSizeOptions;

    if-eq p4, v0, :cond_0

    sget-object v0, Lcom/canhub/cropper/CropImageView$RequestSizeOptions;->RESIZE_INSIDE:Lcom/canhub/cropper/CropImageView$RequestSizeOptions;

    if-eq p4, v0, :cond_0

    sget-object v0, Lcom/canhub/cropper/CropImageView$RequestSizeOptions;->RESIZE_EXACT:Lcom/canhub/cropper/CropImageView$RequestSizeOptions;

    if-ne p4, v0, :cond_5

    .line 518
    :cond_0
    sget-object v0, Lcom/canhub/cropper/CropImageView$RequestSizeOptions;->RESIZE_EXACT:Lcom/canhub/cropper/CropImageView$RequestSizeOptions;

    const/4 v1, 0x0

    if-ne p4, v0, :cond_1

    .line 519
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p1, p2, p3, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p2

    goto :goto_1

    .line 521
    :cond_1
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 522
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v0, v0

    int-to-float p2, p2

    div-float p2, v0, p2

    int-to-float v2, v2

    int-to-float p3, p3

    div-float p3, v2, p3

    .line 523
    invoke-static {p2, p3}, Ljava/lang/Math;->max(FF)F

    move-result p2

    const/high16 p3, 0x3f800000    # 1.0f

    cmpl-float p3, p2, p3

    if-gtz p3, :cond_3

    .line 524
    sget-object p3, Lcom/canhub/cropper/CropImageView$RequestSizeOptions;->RESIZE_FIT:Lcom/canhub/cropper/CropImageView$RequestSizeOptions;

    if-ne p4, p3, :cond_2

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    div-float/2addr v0, p2

    float-to-int p3, v0

    div-float/2addr v2, p2

    float-to-int p2, v2

    .line 525
    invoke-static {p1, p3, p2, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p2

    :goto_1
    if-eqz p2, :cond_5

    .line 534
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_4

    .line 535
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    return-object p2

    :catch_0
    move-exception p2

    .line 541
    const-string p3, "Failed to resize cropped image, return bitmap before resize"

    check-cast p2, Ljava/lang/Throwable;

    const-string p4, "AIC"

    invoke-static {p4, p3, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 543
    :cond_5
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p1
.end method

.method public final setMStateBitmap(Landroid/util/Pair;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/graphics/Bitmap;",
            ">;>;)V"
        }
    .end annotation

    .line 66
    sput-object p1, Lcom/canhub/cropper/BitmapUtils;->mStateBitmap:Landroid/util/Pair;

    return-void
.end method

.method public final validateOutputUri$cropper_release(Landroid/net/Uri;Landroid/graphics/Bitmap$CompressFormat;)V
    .locals 12

    const-string/jumbo v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "compressFormat"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 436
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 443
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo p1, "toString(...)"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 444
    :cond_0
    sget-object p1, Lcom/canhub/cropper/BitmapUtils$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Landroid/graphics/Bitmap$CompressFormat;->ordinal()I

    move-result v1

    aget p1, p1, v1

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p1, v2, :cond_2

    if-eq p1, v1, :cond_1

    .line 447
    const-string p1, ".webp"

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 446
    :cond_1
    const-string p1, ".png"

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 445
    :cond_2
    new-array p1, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, ".jpg"

    aput-object v3, p1, v1

    const-string v1, ".jpeg"

    aput-object v1, p1, v2

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 450
    :goto_0
    move-object v3, p1

    check-cast v3, Ljava/lang/Iterable;

    .line 988
    instance-of p1, v3, Ljava/util/Collection;

    if-eqz p1, :cond_3

    move-object p1, v3

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    .line 989
    :cond_3
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 450
    invoke-static {v0, v1, v2}, Lkotlin/text/StringsKt;->endsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_4

    return-void

    .line 452
    :cond_5
    new-instance p1, Ljava/lang/SecurityException;

    .line 454
    const-string v1, ", "

    move-object v4, v1

    check-cast v4, Ljava/lang/CharSequence;

    const/16 v10, 0x3e

    const/4 v11, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v3 .. v11}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 456
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "File extension does not match compress format. Expected one of: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, ", Path: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 452
    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 437
    :cond_6
    new-instance p2, Ljava/lang/SecurityException;

    .line 438
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Only content:// URIs are allowed for security reasons. Received: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "://"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 437
    invoke-direct {p2, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final writeBitmapToUri(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;ILandroid/net/Uri;)Landroid/net/Uri;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bitmap"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "compressFormat"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p5, :cond_0

    .line 472
    invoke-direct {p0, p1, p3}, Lcom/canhub/cropper/BitmapUtils;->buildUri(Landroid/content/Context;Landroid/graphics/Bitmap$CompressFormat;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p5

    :goto_0
    if-eqz p5, :cond_1

    .line 476
    invoke-virtual {p0, p5, p3}, Lcom/canhub/cropper/BitmapUtils;->validateOutputUri$cropper_release(Landroid/net/Uri;Landroid/graphics/Bitmap$CompressFormat;)V

    .line 479
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo p5, "wt"

    invoke-virtual {p1, v0, p5}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Ljava/io/Closeable;

    :try_start_0
    move-object p5, p1

    check-cast p5, Ljava/io/OutputStream;

    .line 480
    invoke-virtual {p2, p3, p4, p5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p2, 0x0

    .line 479
    invoke-static {p1, p2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    :catchall_0
    move-exception p2

    :try_start_1
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p3

    invoke-static {p1, p2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p3
.end method

.method public final writeTempStateStoreBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 414
    :try_start_0
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 415
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x5f

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, p3

    .line 412
    invoke-virtual/range {v1 .. v6}, Lcom/canhub/cropper/BitmapUtils;->writeBitmapToUri(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;ILandroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 422
    const-string p2, "Failed to write bitmap to temp file for image-cropper save instance state"

    .line 423
    check-cast p1, Ljava/lang/Throwable;

    .line 420
    const-string p3, "AIC"

    invoke-static {p3, p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    return-object p1
.end method
