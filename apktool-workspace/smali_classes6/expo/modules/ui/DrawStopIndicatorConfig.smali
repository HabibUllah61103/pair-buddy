.class public final Lexpo/modules/ui/DrawStopIndicatorConfig;
.super Ljava/lang/Object;
.source "ProgressView.kt"

# interfaces
.implements Lexpo/modules/kotlin/records/Record;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u0007\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u001e\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0006\u0010\u0003\u001a\u0004\u0008\u0007\u0010\u0008R\u001e\u0010\t\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u000b\u0010\u0003\u001a\u0004\u0008\u000c\u0010\rR \u0010\u000e\u001a\u0004\u0018\u00010\u000f8\u0006X\u0087\u0004\u00a2\u0006\u0010\n\u0002\u0010\u0013\u0012\u0004\u0008\u0010\u0010\u0003\u001a\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0014"
    }
    d2 = {
        "Lexpo/modules/ui/DrawStopIndicatorConfig;",
        "Lexpo/modules/kotlin/records/Record;",
        "<init>",
        "()V",
        "color",
        "Landroid/graphics/Color;",
        "getColor$annotations",
        "getColor",
        "()Landroid/graphics/Color;",
        "strokeCap",
        "",
        "getStrokeCap$annotations",
        "getStrokeCap",
        "()Ljava/lang/String;",
        "stopSize",
        "",
        "getStopSize$annotations",
        "getStopSize",
        "()Ljava/lang/Float;",
        "Ljava/lang/Float;",
        "expo-ui_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private final color:Landroid/graphics/Color;

.field private final stopSize:Ljava/lang/Float;

.field private final strokeCap:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic getColor$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getStopSize$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getStrokeCap$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method


# virtual methods
.method public final getColor()Landroid/graphics/Color;
    .locals 1

    .line 25
    iget-object v0, p0, Lexpo/modules/ui/DrawStopIndicatorConfig;->color:Landroid/graphics/Color;

    return-object v0
.end method

.method public final getStopSize()Ljava/lang/Float;
    .locals 1

    .line 27
    iget-object v0, p0, Lexpo/modules/ui/DrawStopIndicatorConfig;->stopSize:Ljava/lang/Float;

    return-object v0
.end method

.method public final getStrokeCap()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lexpo/modules/ui/DrawStopIndicatorConfig;->strokeCap:Ljava/lang/String;

    return-object v0
.end method
