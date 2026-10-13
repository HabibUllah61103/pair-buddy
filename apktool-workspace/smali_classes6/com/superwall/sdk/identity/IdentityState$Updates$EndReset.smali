.class public final Lcom/superwall/sdk/identity/IdentityState$Updates$EndReset;
.super Lcom/superwall/sdk/identity/IdentityState$Updates;
.source "IdentityManagerActor.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/superwall/sdk/identity/IdentityState$Updates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EndReset"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/superwall/sdk/identity/IdentityState$Updates$EndReset;",
        "Lcom/superwall/sdk/identity/IdentityState$Updates;",
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
.field public static final INSTANCE:Lcom/superwall/sdk/identity/IdentityState$Updates$EndReset;


# direct methods
.method public static synthetic $r8$lambda$nl-v8T1PFMsW4Jsde0wF_PFG0ko(Lcom/superwall/sdk/identity/IdentityState;)Lcom/superwall/sdk/identity/IdentityState;
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/identity/IdentityState$Updates$EndReset;->_init_$lambda$0(Lcom/superwall/sdk/identity/IdentityState;)Lcom/superwall/sdk/identity/IdentityState;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/superwall/sdk/identity/IdentityState$Updates$EndReset;

    invoke-direct {v0}, Lcom/superwall/sdk/identity/IdentityState$Updates$EndReset;-><init>()V

    sput-object v0, Lcom/superwall/sdk/identity/IdentityState$Updates$EndReset;->INSTANCE:Lcom/superwall/sdk/identity/IdentityState$Updates$EndReset;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 197
    new-instance v0, Lcom/superwall/sdk/identity/IdentityState$Updates$EndReset$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/superwall/sdk/identity/IdentityState$Updates$EndReset$$ExternalSyntheticLambda0;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/superwall/sdk/identity/IdentityState$Updates;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method private static final _init_$lambda$0(Lcom/superwall/sdk/identity/IdentityState;)Lcom/superwall/sdk/identity/IdentityState;
    .locals 1

    const-string v0, "state"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 198
    sget-object v0, Lcom/superwall/sdk/identity/IdentityState$Pending$Reset;->INSTANCE:Lcom/superwall/sdk/identity/IdentityState$Pending$Reset;

    check-cast v0, Lcom/superwall/sdk/identity/IdentityState$Pending;

    invoke-virtual {p0, v0}, Lcom/superwall/sdk/identity/IdentityState;->resolve(Lcom/superwall/sdk/identity/IdentityState$Pending;)Lcom/superwall/sdk/identity/IdentityState;

    move-result-object p0

    return-object p0
.end method
