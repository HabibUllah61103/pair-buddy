.class public final Lcom/superwall/sdk/review/ReviewError$PlayServicesUnavailable;
.super Lcom/superwall/sdk/review/ReviewError;
.source "ReviewManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/superwall/sdk/review/ReviewError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PlayServicesUnavailable"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/superwall/sdk/review/ReviewError$PlayServicesUnavailable;",
        "Lcom/superwall/sdk/review/ReviewError;",
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
.field public static final INSTANCE:Lcom/superwall/sdk/review/ReviewError$PlayServicesUnavailable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/superwall/sdk/review/ReviewError$PlayServicesUnavailable;

    invoke-direct {v0}, Lcom/superwall/sdk/review/ReviewError$PlayServicesUnavailable;-><init>()V

    sput-object v0, Lcom/superwall/sdk/review/ReviewError$PlayServicesUnavailable;->INSTANCE:Lcom/superwall/sdk/review/ReviewError$PlayServicesUnavailable;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 54
    const-string v2, "Google Play Services not available"

    invoke-direct {p0, v2, v0, v1, v0}, Lcom/superwall/sdk/review/ReviewError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
