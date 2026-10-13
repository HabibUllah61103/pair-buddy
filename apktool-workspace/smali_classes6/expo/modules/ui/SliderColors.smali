.class public final Lexpo/modules/ui/SliderColors;
.super Ljava/lang/Object;
.source "SliderView.kt"

# interfaces
.implements Lexpo/modules/kotlin/records/Record;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0010\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u001e\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0006\u0010\u0003\u001a\u0004\u0008\u0007\u0010\u0008R\u001e\u0010\t\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\n\u0010\u0003\u001a\u0004\u0008\u000b\u0010\u0008R\u001e\u0010\u000c\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\r\u0010\u0003\u001a\u0004\u0008\u000e\u0010\u0008R\u001e\u0010\u000f\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0010\u0010\u0003\u001a\u0004\u0008\u0011\u0010\u0008R\u001e\u0010\u0012\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0013\u0010\u0003\u001a\u0004\u0008\u0014\u0010\u0008\u00a8\u0006\u0015"
    }
    d2 = {
        "Lexpo/modules/ui/SliderColors;",
        "Lexpo/modules/kotlin/records/Record;",
        "<init>",
        "()V",
        "thumbColor",
        "Landroid/graphics/Color;",
        "getThumbColor$annotations",
        "getThumbColor",
        "()Landroid/graphics/Color;",
        "activeTrackColor",
        "getActiveTrackColor$annotations",
        "getActiveTrackColor",
        "inactiveTrackColor",
        "getInactiveTrackColor$annotations",
        "getInactiveTrackColor",
        "activeTickColor",
        "getActiveTickColor$annotations",
        "getActiveTickColor",
        "inactiveTickColor",
        "getInactiveTickColor$annotations",
        "getInactiveTickColor",
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
.field private final activeTickColor:Landroid/graphics/Color;

.field private final activeTrackColor:Landroid/graphics/Color;

.field private final inactiveTickColor:Landroid/graphics/Color;

.field private final inactiveTrackColor:Landroid/graphics/Color;

.field private final thumbColor:Landroid/graphics/Color;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic getActiveTickColor$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getActiveTrackColor$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getInactiveTickColor$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getInactiveTrackColor$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getThumbColor$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method


# virtual methods
.method public final getActiveTickColor()Landroid/graphics/Color;
    .locals 1

    .line 31
    iget-object v0, p0, Lexpo/modules/ui/SliderColors;->activeTickColor:Landroid/graphics/Color;

    return-object v0
.end method

.method public final getActiveTrackColor()Landroid/graphics/Color;
    .locals 1

    .line 25
    iget-object v0, p0, Lexpo/modules/ui/SliderColors;->activeTrackColor:Landroid/graphics/Color;

    return-object v0
.end method

.method public final getInactiveTickColor()Landroid/graphics/Color;
    .locals 1

    .line 34
    iget-object v0, p0, Lexpo/modules/ui/SliderColors;->inactiveTickColor:Landroid/graphics/Color;

    return-object v0
.end method

.method public final getInactiveTrackColor()Landroid/graphics/Color;
    .locals 1

    .line 28
    iget-object v0, p0, Lexpo/modules/ui/SliderColors;->inactiveTrackColor:Landroid/graphics/Color;

    return-object v0
.end method

.method public final getThumbColor()Landroid/graphics/Color;
    .locals 1

    .line 22
    iget-object v0, p0, Lexpo/modules/ui/SliderColors;->thumbColor:Landroid/graphics/Color;

    return-object v0
.end method
