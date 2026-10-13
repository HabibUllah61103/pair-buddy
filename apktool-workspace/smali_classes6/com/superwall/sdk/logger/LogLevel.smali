.class public final enum Lcom/superwall/sdk/logger/LogLevel;
.super Ljava/lang/Enum;
.source "LogLevel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/superwall/sdk/logger/LogLevel$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/superwall/sdk/logger/LogLevel;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\n\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0008\u0010\r\u001a\u00020\u000eH\u0016J\u0006\u0010\u000f\u001a\u00020\u000eR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000c\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/superwall/sdk/logger/LogLevel;",
        "",
        "level",
        "",
        "<init>",
        "(Ljava/lang/String;II)V",
        "getLevel",
        "()I",
        "debug",
        "info",
        "warn",
        "error",
        "none",
        "toString",
        "",
        "getDescriptionEmoji",
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

.field private static final synthetic $VALUES:[Lcom/superwall/sdk/logger/LogLevel;

.field public static final enum debug:Lcom/superwall/sdk/logger/LogLevel;

.field public static final enum error:Lcom/superwall/sdk/logger/LogLevel;

.field public static final enum info:Lcom/superwall/sdk/logger/LogLevel;

.field public static final enum none:Lcom/superwall/sdk/logger/LogLevel;

.field public static final enum warn:Lcom/superwall/sdk/logger/LogLevel;


# instance fields
.field private final level:I


# direct methods
.method private static final synthetic $values()[Lcom/superwall/sdk/logger/LogLevel;
    .locals 5

    sget-object v0, Lcom/superwall/sdk/logger/LogLevel;->debug:Lcom/superwall/sdk/logger/LogLevel;

    sget-object v1, Lcom/superwall/sdk/logger/LogLevel;->info:Lcom/superwall/sdk/logger/LogLevel;

    sget-object v2, Lcom/superwall/sdk/logger/LogLevel;->warn:Lcom/superwall/sdk/logger/LogLevel;

    sget-object v3, Lcom/superwall/sdk/logger/LogLevel;->error:Lcom/superwall/sdk/logger/LogLevel;

    sget-object v4, Lcom/superwall/sdk/logger/LogLevel;->none:Lcom/superwall/sdk/logger/LogLevel;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/superwall/sdk/logger/LogLevel;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 6
    new-instance v0, Lcom/superwall/sdk/logger/LogLevel;

    const/4 v1, 0x0

    const/16 v2, 0xa

    const-string v3, "debug"

    invoke-direct {v0, v3, v1, v2}, Lcom/superwall/sdk/logger/LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/superwall/sdk/logger/LogLevel;->debug:Lcom/superwall/sdk/logger/LogLevel;

    .line 7
    new-instance v0, Lcom/superwall/sdk/logger/LogLevel;

    const/4 v1, 0x1

    const/16 v2, 0x14

    const-string v3, "info"

    invoke-direct {v0, v3, v1, v2}, Lcom/superwall/sdk/logger/LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/superwall/sdk/logger/LogLevel;->info:Lcom/superwall/sdk/logger/LogLevel;

    .line 8
    new-instance v0, Lcom/superwall/sdk/logger/LogLevel;

    const/4 v1, 0x2

    const/16 v2, 0x1e

    const-string v3, "warn"

    invoke-direct {v0, v3, v1, v2}, Lcom/superwall/sdk/logger/LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/superwall/sdk/logger/LogLevel;->warn:Lcom/superwall/sdk/logger/LogLevel;

    .line 9
    new-instance v0, Lcom/superwall/sdk/logger/LogLevel;

    const/4 v1, 0x3

    const/16 v2, 0x28

    const-string v3, "error"

    invoke-direct {v0, v3, v1, v2}, Lcom/superwall/sdk/logger/LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/superwall/sdk/logger/LogLevel;->error:Lcom/superwall/sdk/logger/LogLevel;

    .line 10
    new-instance v0, Lcom/superwall/sdk/logger/LogLevel;

    const/4 v1, 0x4

    const/16 v2, 0x63

    const-string v3, "none"

    invoke-direct {v0, v3, v1, v2}, Lcom/superwall/sdk/logger/LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/superwall/sdk/logger/LogLevel;->none:Lcom/superwall/sdk/logger/LogLevel;

    invoke-static {}, Lcom/superwall/sdk/logger/LogLevel;->$values()[Lcom/superwall/sdk/logger/LogLevel;

    move-result-object v0

    sput-object v0, Lcom/superwall/sdk/logger/LogLevel;->$VALUES:[Lcom/superwall/sdk/logger/LogLevel;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/superwall/sdk/logger/LogLevel;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4
    iput p3, p0, Lcom/superwall/sdk/logger/LogLevel;->level:I

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/superwall/sdk/logger/LogLevel;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/superwall/sdk/logger/LogLevel;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/superwall/sdk/logger/LogLevel;
    .locals 1

    const-class v0, Lcom/superwall/sdk/logger/LogLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 30
    check-cast p0, Lcom/superwall/sdk/logger/LogLevel;

    return-object p0
.end method

.method public static values()[Lcom/superwall/sdk/logger/LogLevel;
    .locals 1

    sget-object v0, Lcom/superwall/sdk/logger/LogLevel;->$VALUES:[Lcom/superwall/sdk/logger/LogLevel;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 30
    check-cast v0, [Lcom/superwall/sdk/logger/LogLevel;

    return-object v0
.end method


# virtual methods
.method public final getDescriptionEmoji()Ljava/lang/String;
    .locals 2

    .line 23
    sget-object v0, Lcom/superwall/sdk/logger/LogLevel$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Lcom/superwall/sdk/logger/LogLevel;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 28
    const-string v0, ""

    return-object v0

    .line 23
    :cond_0
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 27
    :cond_1
    const-string v0, "\u203c\ufe0f"

    return-object v0

    .line 26
    :cond_2
    const-string v0, "\u26a0\ufe0f"

    return-object v0

    .line 25
    :cond_3
    const-string v0, "\u2139\ufe0f"

    return-object v0

    .line 24
    :cond_4
    const-string v0, "\ud83d\udcac"

    return-object v0
.end method

.method public final getLevel()I
    .locals 1

    .line 4
    iget v0, p0, Lcom/superwall/sdk/logger/LogLevel;->level:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 14
    sget-object v0, Lcom/superwall/sdk/logger/LogLevel$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Lcom/superwall/sdk/logger/LogLevel;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 19
    const-string v0, "NONE"

    return-object v0

    .line 14
    :cond_0
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 18
    :cond_1
    const-string v0, "ERROR"

    return-object v0

    .line 17
    :cond_2
    const-string v0, "WARN"

    return-object v0

    .line 16
    :cond_3
    const-string v0, "INFO"

    return-object v0

    .line 15
    :cond_4
    const-string v0, "DEBUG"

    return-object v0
.end method
