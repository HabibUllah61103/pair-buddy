.class public final Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig;
.super Lcom/superwall/sdk/config/models/ConfigState$Actions;
.source "ConfigState.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/superwall/sdk/config/models/ConfigState$Actions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FetchConfig"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig;",
        "Lcom/superwall/sdk/config/models/ConfigState$Actions;",
        "<init>",
        "()V",
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
.field public static final INSTANCE:Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig;

    invoke-direct {v0}, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig;-><init>()V

    sput-object v0, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig;->INSTANCE:Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 70
    new-instance v0, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig$1;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-direct {p0, v0, v1}, Lcom/superwall/sdk/config/models/ConfigState$Actions;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
