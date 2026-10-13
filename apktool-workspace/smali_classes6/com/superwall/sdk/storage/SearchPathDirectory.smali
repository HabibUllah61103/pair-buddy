.class public final enum Lcom/superwall/sdk/storage/SearchPathDirectory;
.super Ljava/lang/Enum;
.source "CacheKeys.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/superwall/sdk/storage/SearchPathDirectory$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/superwall/sdk/storage/SearchPathDirectory;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nj\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/superwall/sdk/storage/SearchPathDirectory;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "CACHE",
        "USER_SPECIFIC_DOCUMENTS",
        "APP_SPECIFIC_DOCUMENTS",
        "fileDirectory",
        "Ljava/io/File;",
        "context",
        "Landroid/content/Context;",
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

.field private static final synthetic $VALUES:[Lcom/superwall/sdk/storage/SearchPathDirectory;

.field public static final enum APP_SPECIFIC_DOCUMENTS:Lcom/superwall/sdk/storage/SearchPathDirectory;

.field public static final enum CACHE:Lcom/superwall/sdk/storage/SearchPathDirectory;

.field public static final enum USER_SPECIFIC_DOCUMENTS:Lcom/superwall/sdk/storage/SearchPathDirectory;


# direct methods
.method private static final synthetic $values()[Lcom/superwall/sdk/storage/SearchPathDirectory;
    .locals 3

    sget-object v0, Lcom/superwall/sdk/storage/SearchPathDirectory;->CACHE:Lcom/superwall/sdk/storage/SearchPathDirectory;

    sget-object v1, Lcom/superwall/sdk/storage/SearchPathDirectory;->USER_SPECIFIC_DOCUMENTS:Lcom/superwall/sdk/storage/SearchPathDirectory;

    sget-object v2, Lcom/superwall/sdk/storage/SearchPathDirectory;->APP_SPECIFIC_DOCUMENTS:Lcom/superwall/sdk/storage/SearchPathDirectory;

    filled-new-array {v0, v1, v2}, [Lcom/superwall/sdk/storage/SearchPathDirectory;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 39
    new-instance v0, Lcom/superwall/sdk/storage/SearchPathDirectory;

    const-string v1, "CACHE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/superwall/sdk/storage/SearchPathDirectory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/superwall/sdk/storage/SearchPathDirectory;->CACHE:Lcom/superwall/sdk/storage/SearchPathDirectory;

    .line 42
    new-instance v0, Lcom/superwall/sdk/storage/SearchPathDirectory;

    const-string v1, "USER_SPECIFIC_DOCUMENTS"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/superwall/sdk/storage/SearchPathDirectory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/superwall/sdk/storage/SearchPathDirectory;->USER_SPECIFIC_DOCUMENTS:Lcom/superwall/sdk/storage/SearchPathDirectory;

    .line 45
    new-instance v0, Lcom/superwall/sdk/storage/SearchPathDirectory;

    const-string v1, "APP_SPECIFIC_DOCUMENTS"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/superwall/sdk/storage/SearchPathDirectory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/superwall/sdk/storage/SearchPathDirectory;->APP_SPECIFIC_DOCUMENTS:Lcom/superwall/sdk/storage/SearchPathDirectory;

    invoke-static {}, Lcom/superwall/sdk/storage/SearchPathDirectory;->$values()[Lcom/superwall/sdk/storage/SearchPathDirectory;

    move-result-object v0

    sput-object v0, Lcom/superwall/sdk/storage/SearchPathDirectory;->$VALUES:[Lcom/superwall/sdk/storage/SearchPathDirectory;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/superwall/sdk/storage/SearchPathDirectory;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/superwall/sdk/storage/SearchPathDirectory;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/superwall/sdk/storage/SearchPathDirectory;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/superwall/sdk/storage/SearchPathDirectory;
    .locals 1

    const-class v0, Lcom/superwall/sdk/storage/SearchPathDirectory;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 64
    check-cast p0, Lcom/superwall/sdk/storage/SearchPathDirectory;

    return-object p0
.end method

.method public static values()[Lcom/superwall/sdk/storage/SearchPathDirectory;
    .locals 1

    sget-object v0, Lcom/superwall/sdk/storage/SearchPathDirectory;->$VALUES:[Lcom/superwall/sdk/storage/SearchPathDirectory;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 64
    check-cast v0, [Lcom/superwall/sdk/storage/SearchPathDirectory;

    return-object v0
.end method


# virtual methods
.method public final fileDirectory(Landroid/content/Context;)Ljava/io/File;
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    sget-object v0, Lcom/superwall/sdk/storage/SearchPathDirectory$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Lcom/superwall/sdk/storage/SearchPathDirectory;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    const-string v2, "getDir(...)"

    const/4 v3, 0x0

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 60
    const-string v0, "app_specific_document_dir"

    .line 59
    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 50
    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 54
    :cond_1
    const-string v0, "user_specific_document_dir"

    .line 53
    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 51
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p1

    const-string v0, "getCacheDir(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
