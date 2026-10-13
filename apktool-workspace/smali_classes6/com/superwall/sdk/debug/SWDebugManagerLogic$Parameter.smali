.class public final enum Lcom/superwall/sdk/debug/SWDebugManagerLogic$Parameter;
.super Ljava/lang/Enum;
.source "SWDebugManagerLogic.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/superwall/sdk/debug/SWDebugManagerLogic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Parameter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/superwall/sdk/debug/SWDebugManagerLogic$Parameter;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0008\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/superwall/sdk/debug/SWDebugManagerLogic$Parameter;",
        "",
        "value",
        "",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getValue",
        "()Ljava/lang/String;",
        "TOKEN",
        "PAYWALL_ID",
        "SUPERWALL_DEBUG",
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

.field private static final synthetic $VALUES:[Lcom/superwall/sdk/debug/SWDebugManagerLogic$Parameter;

.field public static final enum PAYWALL_ID:Lcom/superwall/sdk/debug/SWDebugManagerLogic$Parameter;

.field public static final enum SUPERWALL_DEBUG:Lcom/superwall/sdk/debug/SWDebugManagerLogic$Parameter;

.field public static final enum TOKEN:Lcom/superwall/sdk/debug/SWDebugManagerLogic$Parameter;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcom/superwall/sdk/debug/SWDebugManagerLogic$Parameter;
    .locals 3

    sget-object v0, Lcom/superwall/sdk/debug/SWDebugManagerLogic$Parameter;->TOKEN:Lcom/superwall/sdk/debug/SWDebugManagerLogic$Parameter;

    sget-object v1, Lcom/superwall/sdk/debug/SWDebugManagerLogic$Parameter;->PAYWALL_ID:Lcom/superwall/sdk/debug/SWDebugManagerLogic$Parameter;

    sget-object v2, Lcom/superwall/sdk/debug/SWDebugManagerLogic$Parameter;->SUPERWALL_DEBUG:Lcom/superwall/sdk/debug/SWDebugManagerLogic$Parameter;

    filled-new-array {v0, v1, v2}, [Lcom/superwall/sdk/debug/SWDebugManagerLogic$Parameter;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 9
    new-instance v0, Lcom/superwall/sdk/debug/SWDebugManagerLogic$Parameter;

    const/4 v1, 0x0

    const-string v2, "token"

    const-string v3, "TOKEN"

    invoke-direct {v0, v3, v1, v2}, Lcom/superwall/sdk/debug/SWDebugManagerLogic$Parameter;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/superwall/sdk/debug/SWDebugManagerLogic$Parameter;->TOKEN:Lcom/superwall/sdk/debug/SWDebugManagerLogic$Parameter;

    .line 10
    new-instance v0, Lcom/superwall/sdk/debug/SWDebugManagerLogic$Parameter;

    const/4 v1, 0x1

    const-string v2, "paywall_id"

    const-string v3, "PAYWALL_ID"

    invoke-direct {v0, v3, v1, v2}, Lcom/superwall/sdk/debug/SWDebugManagerLogic$Parameter;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/superwall/sdk/debug/SWDebugManagerLogic$Parameter;->PAYWALL_ID:Lcom/superwall/sdk/debug/SWDebugManagerLogic$Parameter;

    .line 11
    new-instance v0, Lcom/superwall/sdk/debug/SWDebugManagerLogic$Parameter;

    const/4 v1, 0x2

    const-string v2, "superwall_debug"

    const-string v3, "SUPERWALL_DEBUG"

    invoke-direct {v0, v3, v1, v2}, Lcom/superwall/sdk/debug/SWDebugManagerLogic$Parameter;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/superwall/sdk/debug/SWDebugManagerLogic$Parameter;->SUPERWALL_DEBUG:Lcom/superwall/sdk/debug/SWDebugManagerLogic$Parameter;

    invoke-static {}, Lcom/superwall/sdk/debug/SWDebugManagerLogic$Parameter;->$values()[Lcom/superwall/sdk/debug/SWDebugManagerLogic$Parameter;

    move-result-object v0

    sput-object v0, Lcom/superwall/sdk/debug/SWDebugManagerLogic$Parameter;->$VALUES:[Lcom/superwall/sdk/debug/SWDebugManagerLogic$Parameter;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/superwall/sdk/debug/SWDebugManagerLogic$Parameter;->$ENTRIES:Lkotlin/enums/EnumEntries;

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

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 7
    iput-object p3, p0, Lcom/superwall/sdk/debug/SWDebugManagerLogic$Parameter;->value:Ljava/lang/String;

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/superwall/sdk/debug/SWDebugManagerLogic$Parameter;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/superwall/sdk/debug/SWDebugManagerLogic$Parameter;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/superwall/sdk/debug/SWDebugManagerLogic$Parameter;
    .locals 1

    const-class v0, Lcom/superwall/sdk/debug/SWDebugManagerLogic$Parameter;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 12
    check-cast p0, Lcom/superwall/sdk/debug/SWDebugManagerLogic$Parameter;

    return-object p0
.end method

.method public static values()[Lcom/superwall/sdk/debug/SWDebugManagerLogic$Parameter;
    .locals 1

    sget-object v0, Lcom/superwall/sdk/debug/SWDebugManagerLogic$Parameter;->$VALUES:[Lcom/superwall/sdk/debug/SWDebugManagerLogic$Parameter;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 12
    check-cast v0, [Lcom/superwall/sdk/debug/SWDebugManagerLogic$Parameter;

    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/superwall/sdk/debug/SWDebugManagerLogic$Parameter;->value:Ljava/lang/String;

    return-object v0
.end method
