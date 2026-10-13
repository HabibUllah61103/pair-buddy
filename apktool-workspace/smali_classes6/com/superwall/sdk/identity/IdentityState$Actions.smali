.class public abstract Lcom/superwall/sdk/identity/IdentityState$Actions;
.super Ljava/lang/Object;
.source "IdentityManagerActor.kt"

# interfaces
.implements Lcom/superwall/sdk/misc/primitives/TypedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/superwall/sdk/identity/IdentityState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Actions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/superwall/sdk/identity/IdentityState$Actions$CheckWebEntitlements;,
        Lcom/superwall/sdk/identity/IdentityState$Actions$Configure;,
        Lcom/superwall/sdk/identity/IdentityState$Actions$FetchAssignments;,
        Lcom/superwall/sdk/identity/IdentityState$Actions$FullReset;,
        Lcom/superwall/sdk/identity/IdentityState$Actions$Identify;,
        Lcom/superwall/sdk/identity/IdentityState$Actions$IdentityChanged;,
        Lcom/superwall/sdk/identity/IdentityState$Actions$MergeAttributes;,
        Lcom/superwall/sdk/identity/IdentityState$Actions$NotifyUserChange;,
        Lcom/superwall/sdk/identity/IdentityState$Actions$Reset;,
        Lcom/superwall/sdk/identity/IdentityState$Actions$ResolveSeed;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/superwall/sdk/misc/primitives/TypedAction<",
        "Lcom/superwall/sdk/identity/IdentityContext;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00080\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\n\u000e\u000f\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0017B2\u0008\u0004\u0012\'\u0010\u0003\u001a#\u0008\u0001\u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0004\u00a2\u0006\u0002\u0008\u0008\u00a2\u0006\u0004\u0008\t\u0010\nR7\u0010\u0003\u001a#\u0008\u0001\u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0004\u00a2\u0006\u0002\u0008\u0008X\u0096\u0004\u00a2\u0006\n\n\u0002\u0010\r\u001a\u0004\u0008\u000b\u0010\u000c\u0082\u0001\n\u0018\u0019\u001a\u001b\u001c\u001d\u001e\u001f !\u00a8\u0006\""
    }
    d2 = {
        "Lcom/superwall/sdk/identity/IdentityState$Actions;",
        "Lcom/superwall/sdk/misc/primitives/TypedAction;",
        "Lcom/superwall/sdk/identity/IdentityContext;",
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
        "Configure",
        "Identify",
        "IdentityChanged",
        "ResolveSeed",
        "FetchAssignments",
        "CheckWebEntitlements",
        "MergeAttributes",
        "NotifyUserChange",
        "Reset",
        "FullReset",
        "Lcom/superwall/sdk/identity/IdentityState$Actions$CheckWebEntitlements;",
        "Lcom/superwall/sdk/identity/IdentityState$Actions$Configure;",
        "Lcom/superwall/sdk/identity/IdentityState$Actions$FetchAssignments;",
        "Lcom/superwall/sdk/identity/IdentityState$Actions$FullReset;",
        "Lcom/superwall/sdk/identity/IdentityState$Actions$Identify;",
        "Lcom/superwall/sdk/identity/IdentityState$Actions$IdentityChanged;",
        "Lcom/superwall/sdk/identity/IdentityState$Actions$MergeAttributes;",
        "Lcom/superwall/sdk/identity/IdentityState$Actions$NotifyUserChange;",
        "Lcom/superwall/sdk/identity/IdentityState$Actions$Reset;",
        "Lcom/superwall/sdk/identity/IdentityState$Actions$ResolveSeed;",
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
            "Lcom/superwall/sdk/identity/IdentityContext;",
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
            "Lcom/superwall/sdk/identity/IdentityContext;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 246
    iput-object p1, p0, Lcom/superwall/sdk/identity/IdentityState$Actions;->execute:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/superwall/sdk/identity/IdentityState$Actions;-><init>(Lkotlin/jvm/functions/Function2;)V

    return-void
.end method


# virtual methods
.method public getExecute()Lkotlin/jvm/functions/Function2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2<",
            "Lcom/superwall/sdk/identity/IdentityContext;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 246
    iget-object v0, p0, Lcom/superwall/sdk/identity/IdentityState$Actions;->execute:Lkotlin/jvm/functions/Function2;

    return-object v0
.end method
