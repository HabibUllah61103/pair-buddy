.class public final enum Lcom/superwall/sdk/store/transactions/PlayBillingErrors;
.super Ljava/lang/Enum;
.source "PlayBillingErrors.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/superwall/sdk/store/transactions/PlayBillingErrors$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/superwall/sdk/store/transactions/PlayBillingErrors;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0014\u0008\u0086\u0081\u0002\u0018\u0000 \u00182\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0018B\u0019\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013j\u0002\u0008\u0014j\u0002\u0008\u0015j\u0002\u0008\u0016j\u0002\u0008\u0017\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/superwall/sdk/store/transactions/PlayBillingErrors;",
        "",
        "code",
        "",
        "message",
        "",
        "<init>",
        "(Ljava/lang/String;IILjava/lang/String;)V",
        "getCode",
        "()I",
        "getMessage",
        "()Ljava/lang/String;",
        "NETWORK_ERROR",
        "SERVICE_TIMEOUT",
        "SERVICE_DISCONNECTED",
        "FEATURE_NOT_SUPPORTED",
        "SERVICE_UNAVAILABLE",
        "BILLING_UNAVAILABLE",
        "USER_CANCELED",
        "ITEM_UNAVAILABLE",
        "DEVELOPER_ERROR",
        "ERROR",
        "ITEM_ALREADY_OWNED",
        "ITEM_NOT_OWNED",
        "Companion",
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

.field private static final synthetic $VALUES:[Lcom/superwall/sdk/store/transactions/PlayBillingErrors;

.field public static final enum BILLING_UNAVAILABLE:Lcom/superwall/sdk/store/transactions/PlayBillingErrors;

.field public static final Companion:Lcom/superwall/sdk/store/transactions/PlayBillingErrors$Companion;

.field public static final enum DEVELOPER_ERROR:Lcom/superwall/sdk/store/transactions/PlayBillingErrors;

.field public static final enum ERROR:Lcom/superwall/sdk/store/transactions/PlayBillingErrors;

.field public static final enum FEATURE_NOT_SUPPORTED:Lcom/superwall/sdk/store/transactions/PlayBillingErrors;

.field public static final enum ITEM_ALREADY_OWNED:Lcom/superwall/sdk/store/transactions/PlayBillingErrors;

.field public static final enum ITEM_NOT_OWNED:Lcom/superwall/sdk/store/transactions/PlayBillingErrors;

.field public static final enum ITEM_UNAVAILABLE:Lcom/superwall/sdk/store/transactions/PlayBillingErrors;

.field public static final enum NETWORK_ERROR:Lcom/superwall/sdk/store/transactions/PlayBillingErrors;

.field public static final enum SERVICE_DISCONNECTED:Lcom/superwall/sdk/store/transactions/PlayBillingErrors;

.field public static final enum SERVICE_TIMEOUT:Lcom/superwall/sdk/store/transactions/PlayBillingErrors;

.field public static final enum SERVICE_UNAVAILABLE:Lcom/superwall/sdk/store/transactions/PlayBillingErrors;

.field public static final enum USER_CANCELED:Lcom/superwall/sdk/store/transactions/PlayBillingErrors;


# instance fields
.field private final code:I

.field private final message:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcom/superwall/sdk/store/transactions/PlayBillingErrors;
    .locals 12

    sget-object v0, Lcom/superwall/sdk/store/transactions/PlayBillingErrors;->NETWORK_ERROR:Lcom/superwall/sdk/store/transactions/PlayBillingErrors;

    sget-object v1, Lcom/superwall/sdk/store/transactions/PlayBillingErrors;->SERVICE_TIMEOUT:Lcom/superwall/sdk/store/transactions/PlayBillingErrors;

    sget-object v2, Lcom/superwall/sdk/store/transactions/PlayBillingErrors;->SERVICE_DISCONNECTED:Lcom/superwall/sdk/store/transactions/PlayBillingErrors;

    sget-object v3, Lcom/superwall/sdk/store/transactions/PlayBillingErrors;->FEATURE_NOT_SUPPORTED:Lcom/superwall/sdk/store/transactions/PlayBillingErrors;

    sget-object v4, Lcom/superwall/sdk/store/transactions/PlayBillingErrors;->SERVICE_UNAVAILABLE:Lcom/superwall/sdk/store/transactions/PlayBillingErrors;

    sget-object v5, Lcom/superwall/sdk/store/transactions/PlayBillingErrors;->BILLING_UNAVAILABLE:Lcom/superwall/sdk/store/transactions/PlayBillingErrors;

    sget-object v6, Lcom/superwall/sdk/store/transactions/PlayBillingErrors;->USER_CANCELED:Lcom/superwall/sdk/store/transactions/PlayBillingErrors;

    sget-object v7, Lcom/superwall/sdk/store/transactions/PlayBillingErrors;->ITEM_UNAVAILABLE:Lcom/superwall/sdk/store/transactions/PlayBillingErrors;

    sget-object v8, Lcom/superwall/sdk/store/transactions/PlayBillingErrors;->DEVELOPER_ERROR:Lcom/superwall/sdk/store/transactions/PlayBillingErrors;

    sget-object v9, Lcom/superwall/sdk/store/transactions/PlayBillingErrors;->ERROR:Lcom/superwall/sdk/store/transactions/PlayBillingErrors;

    sget-object v10, Lcom/superwall/sdk/store/transactions/PlayBillingErrors;->ITEM_ALREADY_OWNED:Lcom/superwall/sdk/store/transactions/PlayBillingErrors;

    sget-object v11, Lcom/superwall/sdk/store/transactions/PlayBillingErrors;->ITEM_NOT_OWNED:Lcom/superwall/sdk/store/transactions/PlayBillingErrors;

    filled-new-array/range {v0 .. v11}, [Lcom/superwall/sdk/store/transactions/PlayBillingErrors;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 7

    .line 7
    new-instance v0, Lcom/superwall/sdk/store/transactions/PlayBillingErrors;

    const/16 v1, 0xc

    .line 9
    const-string v2, "There was a problem with the network connection. Please check your connection and try again."

    .line 7
    const-string v3, "NETWORK_ERROR"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/superwall/sdk/store/transactions/PlayBillingErrors;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/superwall/sdk/store/transactions/PlayBillingErrors;->NETWORK_ERROR:Lcom/superwall/sdk/store/transactions/PlayBillingErrors;

    .line 11
    new-instance v0, Lcom/superwall/sdk/store/transactions/PlayBillingErrors;

    const/4 v1, -0x3

    .line 13
    const-string v2, "The request timed out. This is usually a temporary issue. Please try again."

    .line 11
    const-string v3, "SERVICE_TIMEOUT"

    const/4 v4, 0x1

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/superwall/sdk/store/transactions/PlayBillingErrors;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/superwall/sdk/store/transactions/PlayBillingErrors;->SERVICE_TIMEOUT:Lcom/superwall/sdk/store/transactions/PlayBillingErrors;

    .line 15
    new-instance v0, Lcom/superwall/sdk/store/transactions/PlayBillingErrors;

    const/4 v1, -0x1

    .line 17
    const-string v2, "The connection to the Google Play Store was lost. We are attempting to reconnect. Please try again in a few moments."

    .line 15
    const-string v3, "SERVICE_DISCONNECTED"

    const/4 v5, 0x2

    invoke-direct {v0, v3, v5, v1, v2}, Lcom/superwall/sdk/store/transactions/PlayBillingErrors;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/superwall/sdk/store/transactions/PlayBillingErrors;->SERVICE_DISCONNECTED:Lcom/superwall/sdk/store/transactions/PlayBillingErrors;

    .line 19
    new-instance v0, Lcom/superwall/sdk/store/transactions/PlayBillingErrors;

    const/4 v1, -0x2

    .line 21
    const-string v2, "The requested feature is not supported on your device. You may need to update the Play Store app."

    .line 19
    const-string v3, "FEATURE_NOT_SUPPORTED"

    const/4 v6, 0x3

    invoke-direct {v0, v3, v6, v1, v2}, Lcom/superwall/sdk/store/transactions/PlayBillingErrors;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/superwall/sdk/store/transactions/PlayBillingErrors;->FEATURE_NOT_SUPPORTED:Lcom/superwall/sdk/store/transactions/PlayBillingErrors;

    .line 23
    new-instance v0, Lcom/superwall/sdk/store/transactions/PlayBillingErrors;

    .line 25
    const-string v1, "The Google Play Billing service is currently unavailable. This may be a temporary network issue. Please try again."

    .line 23
    const-string v2, "SERVICE_UNAVAILABLE"

    const/4 v3, 0x4

    invoke-direct {v0, v2, v3, v5, v1}, Lcom/superwall/sdk/store/transactions/PlayBillingErrors;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/superwall/sdk/store/transactions/PlayBillingErrors;->SERVICE_UNAVAILABLE:Lcom/superwall/sdk/store/transactions/PlayBillingErrors;

    .line 27
    new-instance v0, Lcom/superwall/sdk/store/transactions/PlayBillingErrors;

    .line 29
    const-string v1, "Billing is unavailable. This could be because the Play Store app is not available, you\'re in an unsupported country, or there\'s an issue with your payment method. Please check your Google Play account and try again."

    .line 27
    const-string v2, "BILLING_UNAVAILABLE"

    const/4 v5, 0x5

    invoke-direct {v0, v2, v5, v6, v1}, Lcom/superwall/sdk/store/transactions/PlayBillingErrors;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/superwall/sdk/store/transactions/PlayBillingErrors;->BILLING_UNAVAILABLE:Lcom/superwall/sdk/store/transactions/PlayBillingErrors;

    .line 31
    new-instance v0, Lcom/superwall/sdk/store/transactions/PlayBillingErrors;

    .line 33
    const-string v1, "You have canceled the purchase."

    .line 31
    const-string v2, "USER_CANCELED"

    const/4 v6, 0x6

    invoke-direct {v0, v2, v6, v4, v1}, Lcom/superwall/sdk/store/transactions/PlayBillingErrors;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/superwall/sdk/store/transactions/PlayBillingErrors;->USER_CANCELED:Lcom/superwall/sdk/store/transactions/PlayBillingErrors;

    .line 35
    new-instance v0, Lcom/superwall/sdk/store/transactions/PlayBillingErrors;

    .line 37
    const-string v1, "This item is not available for purchase. It may not be available in your country or the item is no longer for sale."

    .line 35
    const-string v2, "ITEM_UNAVAILABLE"

    const/4 v4, 0x7

    invoke-direct {v0, v2, v4, v3, v1}, Lcom/superwall/sdk/store/transactions/PlayBillingErrors;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/superwall/sdk/store/transactions/PlayBillingErrors;->ITEM_UNAVAILABLE:Lcom/superwall/sdk/store/transactions/PlayBillingErrors;

    .line 39
    new-instance v0, Lcom/superwall/sdk/store/transactions/PlayBillingErrors;

    .line 41
    const-string v1, "A developer error occurred. Please check the app\'s configuration."

    .line 39
    const-string v2, "DEVELOPER_ERROR"

    const/16 v3, 0x8

    invoke-direct {v0, v2, v3, v5, v1}, Lcom/superwall/sdk/store/transactions/PlayBillingErrors;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/superwall/sdk/store/transactions/PlayBillingErrors;->DEVELOPER_ERROR:Lcom/superwall/sdk/store/transactions/PlayBillingErrors;

    .line 43
    new-instance v0, Lcom/superwall/sdk/store/transactions/PlayBillingErrors;

    const/16 v1, 0x9

    .line 45
    const-string v2, "An internal error occurred in the Google Play Store. This might be a temporary issue. Please try again later."

    .line 43
    const-string v5, "ERROR"

    invoke-direct {v0, v5, v1, v6, v2}, Lcom/superwall/sdk/store/transactions/PlayBillingErrors;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/superwall/sdk/store/transactions/PlayBillingErrors;->ERROR:Lcom/superwall/sdk/store/transactions/PlayBillingErrors;

    .line 47
    new-instance v0, Lcom/superwall/sdk/store/transactions/PlayBillingErrors;

    const/16 v1, 0xa

    .line 49
    const-string v2, "You already own this item. If you don\'t see your purchase, please check your purchase history in the Play Store."

    .line 47
    const-string v5, "ITEM_ALREADY_OWNED"

    invoke-direct {v0, v5, v1, v4, v2}, Lcom/superwall/sdk/store/transactions/PlayBillingErrors;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/superwall/sdk/store/transactions/PlayBillingErrors;->ITEM_ALREADY_OWNED:Lcom/superwall/sdk/store/transactions/PlayBillingErrors;

    .line 51
    new-instance v0, Lcom/superwall/sdk/store/transactions/PlayBillingErrors;

    const/16 v1, 0xb

    .line 53
    const-string v2, "You do not own the item you are trying to manage. Please check your purchase history in the Play Store."

    .line 51
    const-string v4, "ITEM_NOT_OWNED"

    invoke-direct {v0, v4, v1, v3, v2}, Lcom/superwall/sdk/store/transactions/PlayBillingErrors;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/superwall/sdk/store/transactions/PlayBillingErrors;->ITEM_NOT_OWNED:Lcom/superwall/sdk/store/transactions/PlayBillingErrors;

    invoke-static {}, Lcom/superwall/sdk/store/transactions/PlayBillingErrors;->$values()[Lcom/superwall/sdk/store/transactions/PlayBillingErrors;

    move-result-object v0

    sput-object v0, Lcom/superwall/sdk/store/transactions/PlayBillingErrors;->$VALUES:[Lcom/superwall/sdk/store/transactions/PlayBillingErrors;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/superwall/sdk/store/transactions/PlayBillingErrors;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v0, Lcom/superwall/sdk/store/transactions/PlayBillingErrors$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/superwall/sdk/store/transactions/PlayBillingErrors$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/superwall/sdk/store/transactions/PlayBillingErrors;->Companion:Lcom/superwall/sdk/store/transactions/PlayBillingErrors$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4
    iput p3, p0, Lcom/superwall/sdk/store/transactions/PlayBillingErrors;->code:I

    .line 5
    iput-object p4, p0, Lcom/superwall/sdk/store/transactions/PlayBillingErrors;->message:Ljava/lang/String;

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/superwall/sdk/store/transactions/PlayBillingErrors;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/superwall/sdk/store/transactions/PlayBillingErrors;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/superwall/sdk/store/transactions/PlayBillingErrors;
    .locals 1

    const-class v0, Lcom/superwall/sdk/store/transactions/PlayBillingErrors;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 65
    check-cast p0, Lcom/superwall/sdk/store/transactions/PlayBillingErrors;

    return-object p0
.end method

.method public static values()[Lcom/superwall/sdk/store/transactions/PlayBillingErrors;
    .locals 1

    sget-object v0, Lcom/superwall/sdk/store/transactions/PlayBillingErrors;->$VALUES:[Lcom/superwall/sdk/store/transactions/PlayBillingErrors;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 65
    check-cast v0, [Lcom/superwall/sdk/store/transactions/PlayBillingErrors;

    return-object v0
.end method


# virtual methods
.method public final getCode()I
    .locals 1

    .line 4
    iget v0, p0, Lcom/superwall/sdk/store/transactions/PlayBillingErrors;->code:I

    return v0
.end method

.method public final getMessage()Ljava/lang/String;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/superwall/sdk/store/transactions/PlayBillingErrors;->message:Ljava/lang/String;

    return-object v0
.end method
