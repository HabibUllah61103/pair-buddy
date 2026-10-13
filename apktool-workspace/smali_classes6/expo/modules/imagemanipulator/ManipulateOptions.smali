.class public final Lexpo/modules/imagemanipulator/ManipulateOptions;
.super Ljava/lang/Object;
.source "ImageManipulatorArguments.kt"

# interfaces
.implements Lexpo/modules/kotlin/records/Record;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0006\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u001c\u0010\u0004\u001a\u00020\u00058\u0006X\u0087D\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0006\u0010\u0003\u001a\u0004\u0008\u0007\u0010\u0008R\u001c\u0010\t\u001a\u00020\n8\u0006X\u0087D\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u000b\u0010\u0003\u001a\u0004\u0008\u000c\u0010\rR\u001c\u0010\u000e\u001a\u00020\u000f8\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0010\u0010\u0003\u001a\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0013"
    }
    d2 = {
        "Lexpo/modules/imagemanipulator/ManipulateOptions;",
        "Lexpo/modules/kotlin/records/Record;",
        "<init>",
        "()V",
        "base64",
        "",
        "getBase64$annotations",
        "getBase64",
        "()Z",
        "compress",
        "",
        "getCompress$annotations",
        "getCompress",
        "()D",
        "format",
        "Lexpo/modules/imagemanipulator/ImageFormat;",
        "getFormat$annotations",
        "getFormat",
        "()Lexpo/modules/imagemanipulator/ImageFormat;",
        "expo-image-manipulator_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final base64:Z

.field private final compress:D

.field private final format:Lexpo/modules/imagemanipulator/ImageFormat;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 44
    iput-wide v0, p0, Lexpo/modules/imagemanipulator/ManipulateOptions;->compress:D

    .line 47
    sget-object v0, Lexpo/modules/imagemanipulator/ImageFormat;->JPEG:Lexpo/modules/imagemanipulator/ImageFormat;

    iput-object v0, p0, Lexpo/modules/imagemanipulator/ManipulateOptions;->format:Lexpo/modules/imagemanipulator/ImageFormat;

    return-void
.end method

.method public static synthetic getBase64$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getCompress$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getFormat$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method


# virtual methods
.method public final getBase64()Z
    .locals 1

    .line 40
    iget-boolean v0, p0, Lexpo/modules/imagemanipulator/ManipulateOptions;->base64:Z

    return v0
.end method

.method public final getCompress()D
    .locals 2

    .line 43
    iget-wide v0, p0, Lexpo/modules/imagemanipulator/ManipulateOptions;->compress:D

    return-wide v0
.end method

.method public final getFormat()Lexpo/modules/imagemanipulator/ImageFormat;
    .locals 1

    .line 46
    iget-object v0, p0, Lexpo/modules/imagemanipulator/ManipulateOptions;->format:Lexpo/modules/imagemanipulator/ImageFormat;

    return-object v0
.end method
