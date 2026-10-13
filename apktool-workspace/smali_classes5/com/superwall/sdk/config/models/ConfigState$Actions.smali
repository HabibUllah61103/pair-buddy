.class public abstract Lcom/superwall/sdk/config/models/ConfigState$Actions;
.super Ljava/lang/Object;
.source "ConfigState.kt"

# interfaces
.implements Lcom/superwall/sdk/misc/primitives/TypedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/superwall/sdk/config/models/ConfigState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Actions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/superwall/sdk/config/models/ConfigState$Actions$ApplyConfig;,
        Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig;,
        Lcom/superwall/sdk/config/models/ConfigState$Actions$GetAssignments;,
        Lcom/superwall/sdk/config/models/ConfigState$Actions$HandleFetchFailure;,
        Lcom/superwall/sdk/config/models/ConfigState$Actions$PreloadAll;,
        Lcom/superwall/sdk/config/models/ConfigState$Actions$PreloadByNames;,
        Lcom/superwall/sdk/config/models/ConfigState$Actions$PreloadIfEnabled;,
        Lcom/superwall/sdk/config/models/ConfigState$Actions$ReevaluateTestMode;,
        Lcom/superwall/sdk/config/models/ConfigState$Actions$RefreshConfig;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/superwall/sdk/misc/primitives/TypedAction<",
        "Lcom/superwall/sdk/config/ConfigContext;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00080\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\t\u000e\u000f\u0010\u0011\u0012\u0013\u0014\u0015\u0016B2\u0008\u0004\u0012\'\u0010\u0003\u001a#\u0008\u0001\u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0004\u00a2\u0006\u0002\u0008\u0008\u00a2\u0006\u0004\u0008\t\u0010\nR7\u0010\u0003\u001a#\u0008\u0001\u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0004\u00a2\u0006\u0002\u0008\u0008X\u0096\u0004\u00a2\u0006\n\n\u0002\u0010\r\u001a\u0004\u0008\u000b\u0010\u000c\u0082\u0001\t\u0017\u0018\u0019\u001a\u001b\u001c\u001d\u001e\u001f\u00a8\u0006 "
    }
    d2 = {
        "Lcom/superwall/sdk/config/models/ConfigState$Actions;",
        "Lcom/superwall/sdk/misc/primitives/TypedAction;",
        "Lcom/superwall/sdk/config/ConfigContext;",
        "execute",
        "Lkotlin/Function2;",
        "Lkotlin/coroutines/Continuation;",
        "",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "<init>",
        "(Lkotlin/jvm/functions/Function2;)V",
        "getExecute",
        "()Lkotlin/jvm/functions/Function2;",
        "Lkotlin/jvm/functions/Function2;",
        "FetchConfig",
        "HandleFetchFailure",
        "RefreshConfig",
        "ApplyConfig",
        "ReevaluateTestMode",
        "PreloadIfEnabled",
        "PreloadAll",
        "PreloadByNames",
        "GetAssignments",
        "Lcom/superwall/sdk/config/models/ConfigState$Actions$ApplyConfig;",
        "Lcom/superwall/sdk/config/models/ConfigState$Actions$FetchConfig;",
        "Lcom/superwall/sdk/config/models/ConfigState$Actions$GetAssignments;",
        "Lcom/superwall/sdk/config/models/ConfigState$Actions$HandleFetchFailure;",
        "Lcom/superwall/sdk/config/models/ConfigState$Actions$PreloadAll;",
        "Lcom/superwall/sdk/config/models/ConfigState$Actions$PreloadByNames;",
        "Lcom/superwall/sdk/config/models/ConfigState$Actions$PreloadIfEnabled;",
        "Lcom/superwall/sdk/config/models/ConfigState$Actions$ReevaluateTestMode;",
        "Lcom/superwall/sdk/config/models/ConfigState$Actions$RefreshConfig;",
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


# instance fields
.field private final execute:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Lcom/superwall/sdk/config/ConfigContext;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lkotlin/jvm/functions/Function2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/superwall/sdk/config/ConfigContext;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/superwall/sdk/config/models/ConfigState$Actions;->execute:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/superwall/sdk/config/models/ConfigState$Actions;-><init>(Lkotlin/jvm/functions/Function2;)V

    return-void
.end method


# virtual methods
.method public getExecute()Lkotlin/jvm/functions/Function2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2<",
            "Lcom/superwall/sdk/config/ConfigContext;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/superwall/sdk/config/models/ConfigState$Actions;->execute:Lkotlin/jvm/functions/Function2;

    return-object v0
.end method
