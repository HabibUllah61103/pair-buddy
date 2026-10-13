.class public final Lexpo/modules/ui/button/ContentPaddingRecord;
.super Ljava/lang/Object;
.source "Button.kt"

# interfaces
.implements Lexpo/modules/kotlin/records/Record;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0006\n\u0002\u0008\u000e\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R \u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\u0010\n\u0002\u0010\t\u0012\u0004\u0008\u0006\u0010\u0003\u001a\u0004\u0008\u0007\u0010\u0008R \u0010\n\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\u0010\n\u0002\u0010\t\u0012\u0004\u0008\u000b\u0010\u0003\u001a\u0004\u0008\u000c\u0010\u0008R \u0010\r\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\u0010\n\u0002\u0010\t\u0012\u0004\u0008\u000e\u0010\u0003\u001a\u0004\u0008\u000f\u0010\u0008R \u0010\u0010\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\u0010\n\u0002\u0010\t\u0012\u0004\u0008\u0011\u0010\u0003\u001a\u0004\u0008\u0012\u0010\u0008\u00a8\u0006\u0013"
    }
    d2 = {
        "Lexpo/modules/ui/button/ContentPaddingRecord;",
        "Lexpo/modules/kotlin/records/Record;",
        "<init>",
        "()V",
        "start",
        "",
        "getStart$annotations",
        "getStart",
        "()Ljava/lang/Double;",
        "Ljava/lang/Double;",
        "top",
        "getTop$annotations",
        "getTop",
        "end",
        "getEnd$annotations",
        "getEnd",
        "bottom",
        "getBottom$annotations",
        "getBottom",
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
.field public static final $stable:I


# instance fields
.field private final bottom:Ljava/lang/Double;

.field private final end:Ljava/lang/Double;

.field private final start:Ljava/lang/Double;

.field private final top:Ljava/lang/Double;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic getBottom$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getEnd$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getStart$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getTop$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method


# virtual methods
.method public final getBottom()Ljava/lang/Double;
    .locals 1

    .line 37
    iget-object v0, p0, Lexpo/modules/ui/button/ContentPaddingRecord;->bottom:Ljava/lang/Double;

    return-object v0
.end method

.method public final getEnd()Ljava/lang/Double;
    .locals 1

    .line 36
    iget-object v0, p0, Lexpo/modules/ui/button/ContentPaddingRecord;->end:Ljava/lang/Double;

    return-object v0
.end method

.method public final getStart()Ljava/lang/Double;
    .locals 1

    .line 34
    iget-object v0, p0, Lexpo/modules/ui/button/ContentPaddingRecord;->start:Ljava/lang/Double;

    return-object v0
.end method

.method public final getTop()Ljava/lang/Double;
    .locals 1

    .line 35
    iget-object v0, p0, Lexpo/modules/ui/button/ContentPaddingRecord;->top:Ljava/lang/Double;

    return-object v0
.end method
