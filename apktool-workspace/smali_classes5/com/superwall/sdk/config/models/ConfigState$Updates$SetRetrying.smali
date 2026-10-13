.class public final Lcom/superwall/sdk/config/models/ConfigState$Updates$SetRetrying;
.super Lcom/superwall/sdk/config/models/ConfigState$Updates;
.source "ConfigState.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/superwall/sdk/config/models/ConfigState$Updates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SetRetrying"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/superwall/sdk/config/models/ConfigState$Updates$SetRetrying;",
        "Lcom/superwall/sdk/config/models/ConfigState$Updates;",
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
.field public static final INSTANCE:Lcom/superwall/sdk/config/models/ConfigState$Updates$SetRetrying;


# direct methods
.method public static synthetic $r8$lambda$26mZz1_cpcuZ-YheHAS3YQrJkFM(Lcom/superwall/sdk/config/models/ConfigState;)Lcom/superwall/sdk/config/models/ConfigState;
    .locals 0

    invoke-static {p0}, Lcom/superwall/sdk/config/models/ConfigState$Updates$SetRetrying;->_init_$lambda$0(Lcom/superwall/sdk/config/models/ConfigState;)Lcom/superwall/sdk/config/models/ConfigState;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/superwall/sdk/config/models/ConfigState$Updates$SetRetrying;

    invoke-direct {v0}, Lcom/superwall/sdk/config/models/ConfigState$Updates$SetRetrying;-><init>()V

    sput-object v0, Lcom/superwall/sdk/config/models/ConfigState$Updates$SetRetrying;->INSTANCE:Lcom/superwall/sdk/config/models/ConfigState$Updates$SetRetrying;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 55
    new-instance v0, Lcom/superwall/sdk/config/models/ConfigState$Updates$SetRetrying$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/superwall/sdk/config/models/ConfigState$Updates$SetRetrying$$ExternalSyntheticLambda0;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/superwall/sdk/config/models/ConfigState$Updates;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method private static final _init_$lambda$0(Lcom/superwall/sdk/config/models/ConfigState;)Lcom/superwall/sdk/config/models/ConfigState;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    sget-object p0, Lcom/superwall/sdk/config/models/ConfigState$Retrying;->INSTANCE:Lcom/superwall/sdk/config/models/ConfigState$Retrying;

    check-cast p0, Lcom/superwall/sdk/config/models/ConfigState;

    return-object p0
.end method
