.class public final synthetic Lcom/superwall/sdk/store/testmode/TestMode$WhenMappings;
.super Ljava/lang/Object;
.source "TestMode.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/superwall/sdk/store/testmode/TestMode;
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

.field public static final synthetic $EnumSwitchMapping$1:[I

.field public static final synthetic $EnumSwitchMapping$2:[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    invoke-static {}, Lcom/superwall/sdk/store/testmode/TestModeBehavior;->values()[Lcom/superwall/sdk/store/testmode/TestModeBehavior;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/superwall/sdk/store/testmode/TestModeBehavior;->NEVER:Lcom/superwall/sdk/store/testmode/TestModeBehavior;

    invoke-virtual {v2}, Lcom/superwall/sdk/store/testmode/TestModeBehavior;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v2, 0x2

    :try_start_1
    sget-object v3, Lcom/superwall/sdk/store/testmode/TestModeBehavior;->ALWAYS:Lcom/superwall/sdk/store/testmode/TestModeBehavior;

    invoke-virtual {v3}, Lcom/superwall/sdk/store/testmode/TestModeBehavior;->ordinal()I

    move-result v3

    aput v2, v0, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v3, 0x3

    :try_start_2
    sget-object v4, Lcom/superwall/sdk/store/testmode/TestModeBehavior;->WHEN_ENABLED_FOR_USER:Lcom/superwall/sdk/store/testmode/TestModeBehavior;

    invoke-virtual {v4}, Lcom/superwall/sdk/store/testmode/TestModeBehavior;->ordinal()I

    move-result v4

    aput v3, v0, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v4, Lcom/superwall/sdk/store/testmode/TestModeBehavior;->AUTOMATIC:Lcom/superwall/sdk/store/testmode/TestModeBehavior;

    invoke-virtual {v4}, Lcom/superwall/sdk/store/testmode/TestModeBehavior;->ordinal()I

    move-result v4

    const/4 v5, 0x4

    aput v5, v0, v4
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    sput-object v0, Lcom/superwall/sdk/store/testmode/TestMode$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-static {}, Lcom/superwall/sdk/store/testmode/models/TestStoreUserType;->values()[Lcom/superwall/sdk/store/testmode/models/TestStoreUserType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_4
    sget-object v4, Lcom/superwall/sdk/store/testmode/models/TestStoreUserType;->UserId:Lcom/superwall/sdk/store/testmode/models/TestStoreUserType;

    invoke-virtual {v4}, Lcom/superwall/sdk/store/testmode/models/TestStoreUserType;->ordinal()I

    move-result v4

    aput v1, v0, v4
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v4, Lcom/superwall/sdk/store/testmode/models/TestStoreUserType;->AliasId:Lcom/superwall/sdk/store/testmode/models/TestStoreUserType;

    invoke-virtual {v4}, Lcom/superwall/sdk/store/testmode/models/TestStoreUserType;->ordinal()I

    move-result v4

    aput v2, v0, v4
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    sput-object v0, Lcom/superwall/sdk/store/testmode/TestMode$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-static {}, Lcom/superwall/sdk/store/testmode/FreeTrialOverride;->values()[Lcom/superwall/sdk/store/testmode/FreeTrialOverride;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_6
    sget-object v4, Lcom/superwall/sdk/store/testmode/FreeTrialOverride;->UseDefault:Lcom/superwall/sdk/store/testmode/FreeTrialOverride;

    invoke-virtual {v4}, Lcom/superwall/sdk/store/testmode/FreeTrialOverride;->ordinal()I

    move-result v4

    aput v1, v0, v4
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v1, Lcom/superwall/sdk/store/testmode/FreeTrialOverride;->ForceAvailable:Lcom/superwall/sdk/store/testmode/FreeTrialOverride;

    invoke-virtual {v1}, Lcom/superwall/sdk/store/testmode/FreeTrialOverride;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v1, Lcom/superwall/sdk/store/testmode/FreeTrialOverride;->ForceUnavailable:Lcom/superwall/sdk/store/testmode/FreeTrialOverride;

    invoke-virtual {v1}, Lcom/superwall/sdk/store/testmode/FreeTrialOverride;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    sput-object v0, Lcom/superwall/sdk/store/testmode/TestMode$WhenMappings;->$EnumSwitchMapping$2:[I

    return-void
.end method
