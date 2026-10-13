.class public final enum Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$RequestReview$Type;
.super Ljava/lang/Enum;
.source "PaywallMessage.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$RequestReview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$RequestReview$Type;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0007\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\u0008j\u0002\u0008\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$RequestReview$Type;",
        "",
        "rawName",
        "",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getRawName",
        "()Ljava/lang/String;",
        "INAPP",
        "EXTERNAL",
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
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$RequestReview$Type;

.field public static final enum EXTERNAL:Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$RequestReview$Type;

.field public static final enum INAPP:Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$RequestReview$Type;


# instance fields
.field private final rawName:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$RequestReview$Type;
    .locals 2

    sget-object v0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$RequestReview$Type;->INAPP:Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$RequestReview$Type;

    sget-object v1, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$RequestReview$Type;->EXTERNAL:Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$RequestReview$Type;

    filled-new-array {v0, v1}, [Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$RequestReview$Type;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 109
    new-instance v0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$RequestReview$Type;

    const/4 v1, 0x0

    const-string v2, "in-app"

    const-string v3, "INAPP"

    invoke-direct {v0, v3, v1, v2}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$RequestReview$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$RequestReview$Type;->INAPP:Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$RequestReview$Type;

    .line 110
    new-instance v0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$RequestReview$Type;

    const/4 v1, 0x1

    const-string v2, "external"

    const-string v3, "EXTERNAL"

    invoke-direct {v0, v3, v1, v2}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$RequestReview$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$RequestReview$Type;->EXTERNAL:Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$RequestReview$Type;

    invoke-static {}, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$RequestReview$Type;->$values()[Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$RequestReview$Type;

    move-result-object v0

    sput-object v0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$RequestReview$Type;->$VALUES:[Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$RequestReview$Type;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$RequestReview$Type;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 106
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 107
    iput-object p3, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$RequestReview$Type;->rawName:Ljava/lang/String;

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$RequestReview$Type;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$RequestReview$Type;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$RequestReview$Type;
    .locals 1

    const-class v0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$RequestReview$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 111
    check-cast p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$RequestReview$Type;

    return-object p0
.end method

.method public static values()[Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$RequestReview$Type;
    .locals 1

    sget-object v0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$RequestReview$Type;->$VALUES:[Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$RequestReview$Type;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 111
    check-cast v0, [Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$RequestReview$Type;

    return-object v0
.end method


# virtual methods
.method public final getRawName()Ljava/lang/String;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/superwall/sdk/paywall/view/webview/messaging/PaywallMessage$RequestReview$Type;->rawName:Ljava/lang/String;

    return-object v0
.end method
