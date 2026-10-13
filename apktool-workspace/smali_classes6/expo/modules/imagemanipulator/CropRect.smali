.class public final Lexpo/modules/imagemanipulator/CropRect;
.super Ljava/lang/Object;
.source "ImageManipulatorArguments.kt"

# interfaces
.implements Lexpo/modules/kotlin/records/Record;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0006\n\u0002\u0008\r\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u001c\u0010\u0004\u001a\u00020\u00058\u0006X\u0087D\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0006\u0010\u0003\u001a\u0004\u0008\u0007\u0010\u0008R\u001c\u0010\t\u001a\u00020\u00058\u0006X\u0087D\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\n\u0010\u0003\u001a\u0004\u0008\u000b\u0010\u0008R\u001c\u0010\u000c\u001a\u00020\u00058\u0006X\u0087D\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\r\u0010\u0003\u001a\u0004\u0008\u000e\u0010\u0008R\u001c\u0010\u000f\u001a\u00020\u00058\u0006X\u0087D\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0010\u0010\u0003\u001a\u0004\u0008\u0011\u0010\u0008\u00a8\u0006\u0012"
    }
    d2 = {
        "Lexpo/modules/imagemanipulator/CropRect;",
        "Lexpo/modules/kotlin/records/Record;",
        "<init>",
        "()V",
        "originX",
        "",
        "getOriginX$annotations",
        "getOriginX",
        "()D",
        "originY",
        "getOriginY$annotations",
        "getOriginY",
        "width",
        "getWidth$annotations",
        "getWidth",
        "height",
        "getHeight$annotations",
        "getHeight",
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
.field private final height:D

.field private final originX:D

.field private final originY:D

.field private final width:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic getHeight$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getOriginX$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getOriginY$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getWidth$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method


# virtual methods
.method public final getHeight()D
    .locals 2

    .line 32
    iget-wide v0, p0, Lexpo/modules/imagemanipulator/CropRect;->height:D

    return-wide v0
.end method

.method public final getOriginX()D
    .locals 2

    .line 23
    iget-wide v0, p0, Lexpo/modules/imagemanipulator/CropRect;->originX:D

    return-wide v0
.end method

.method public final getOriginY()D
    .locals 2

    .line 26
    iget-wide v0, p0, Lexpo/modules/imagemanipulator/CropRect;->originY:D

    return-wide v0
.end method

.method public final getWidth()D
    .locals 2

    .line 29
    iget-wide v0, p0, Lexpo/modules/imagemanipulator/CropRect;->width:D

    return-wide v0
.end method
