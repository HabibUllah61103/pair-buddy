.class public final Lcom/superwall/sdk/config/models/OnDeviceCaching$Disabled;
.super Lcom/superwall/sdk/config/models/OnDeviceCaching;
.source "OnDeviceCaching.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/superwall/sdk/config/models/OnDeviceCaching;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Disabled"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/superwall/sdk/config/models/OnDeviceCaching$Disabled;",
        "Lcom/superwall/sdk/config/models/OnDeviceCaching;",
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

.annotation runtime Lkotlinx/serialization/SerialName;
    value = "DISABLED"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/superwall/sdk/config/models/OnDeviceCaching$Disabled;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/superwall/sdk/config/models/OnDeviceCaching$Disabled;

    invoke-direct {v0}, Lcom/superwall/sdk/config/models/OnDeviceCaching$Disabled;-><init>()V

    sput-object v0, Lcom/superwall/sdk/config/models/OnDeviceCaching$Disabled;->INSTANCE:Lcom/superwall/sdk/config/models/OnDeviceCaching$Disabled;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 16
    invoke-direct {p0, v0}, Lcom/superwall/sdk/config/models/OnDeviceCaching;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
