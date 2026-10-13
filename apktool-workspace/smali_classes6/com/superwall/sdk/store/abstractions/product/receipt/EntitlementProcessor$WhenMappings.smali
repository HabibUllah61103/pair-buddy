.class public final synthetic Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementProcessor$WhenMappings;
.super Ljava/lang/Object;
.source "EntitlementProcessor.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "WhenMappings"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransactionType;->values()[Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransactionType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransactionType;->NON_CONSUMABLE:Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransactionType;

    invoke-virtual {v1}, Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransactionType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v1, Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransactionType;->AUTO_RENEWABLE:Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransactionType;

    invoke-virtual {v1}, Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransactionType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v1, Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransactionType;->NON_RENEWABLE:Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransactionType;

    invoke-virtual {v1}, Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransactionType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v1, Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransactionType;->CONSUMABLE:Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransactionType;

    invoke-virtual {v1}, Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementTransactionType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    sput-object v0, Lcom/superwall/sdk/store/abstractions/product/receipt/EntitlementProcessor$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method
