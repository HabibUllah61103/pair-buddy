.class public final Lcom/superwall/sdk/network/session/TaskRetryLogic;
.super Ljava/lang/Object;
.source "TaskRetryLogic.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001d\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/superwall/sdk/network/session/TaskRetryLogic;",
        "",
        "<init>",
        "()V",
        "delay",
        "",
        "attempt",
        "",
        "maxRetries",
        "(II)Ljava/lang/Long;",
        "superwall_release"
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
.field public static final INSTANCE:Lcom/superwall/sdk/network/session/TaskRetryLogic;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/superwall/sdk/network/session/TaskRetryLogic;

    invoke-direct {v0}, Lcom/superwall/sdk/network/session/TaskRetryLogic;-><init>()V

    sput-object v0, Lcom/superwall/sdk/network/session/TaskRetryLogic;->INSTANCE:Lcom/superwall/sdk/network/session/TaskRetryLogic;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final delay(II)Ljava/lang/Long;
    .locals 7

    if-le p1, p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 16
    :cond_0
    sget-object v0, Lkotlin/random/Random;->Default:Lkotlin/random/Random$Default;

    const-wide/16 v1, 0x0

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v0, v1, v2, v3, v4}, Lkotlin/random/Random$Default;->nextDouble(DD)D

    move-result-wide v0

    int-to-double v5, p1

    int-to-double p1, p2

    div-double/2addr v5, p1

    add-double/2addr v5, v3

    const-wide/high16 p1, 0x4014000000000000L    # 5.0

    .line 20
    invoke-static {p1, p2, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    add-double/2addr p1, v0

    const/16 v0, 0x3e8

    int-to-double v0, v0

    mul-double/2addr p1, v0

    double-to-long p1, p1

    .line 22
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method
