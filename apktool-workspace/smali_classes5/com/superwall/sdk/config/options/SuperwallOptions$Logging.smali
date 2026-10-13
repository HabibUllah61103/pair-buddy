.class public final Lcom/superwall/sdk/config/options/SuperwallOptions$Logging;
.super Ljava/lang/Object;
.source "SuperwallOptions.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/superwall/sdk/config/options/SuperwallOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Logging"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003B\"\u0008\u0016\u0012\u0017\u0010\u0004\u001a\u0013\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0002\u0008\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0008R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR \u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/superwall/sdk/config/options/SuperwallOptions$Logging;",
        "",
        "<init>",
        "()V",
        "definition",
        "Lkotlin/Function1;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "(Lkotlin/jvm/functions/Function1;)V",
        "level",
        "Lcom/superwall/sdk/logger/LogLevel;",
        "getLevel",
        "()Lcom/superwall/sdk/logger/LogLevel;",
        "setLevel",
        "(Lcom/superwall/sdk/logger/LogLevel;)V",
        "scopes",
        "Ljava/util/EnumSet;",
        "Lcom/superwall/sdk/logger/LogScope;",
        "getScopes",
        "()Ljava/util/EnumSet;",
        "setScopes",
        "(Ljava/util/EnumSet;)V",
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


# instance fields
.field private level:Lcom/superwall/sdk/logger/LogLevel;

.field private scopes:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/superwall/sdk/logger/LogScope;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    sget-object v0, Lcom/superwall/sdk/logger/LogLevel;->warn:Lcom/superwall/sdk/logger/LogLevel;

    iput-object v0, p0, Lcom/superwall/sdk/config/options/SuperwallOptions$Logging;->level:Lcom/superwall/sdk/logger/LogLevel;

    .line 115
    sget-object v0, Lcom/superwall/sdk/logger/LogScope;->all:Lcom/superwall/sdk/logger/LogScope;

    check-cast v0, Ljava/lang/Enum;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    const-string v1, "of(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/superwall/sdk/config/options/SuperwallOptions$Logging;->scopes:Ljava/util/EnumSet;

    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/superwall/sdk/config/options/SuperwallOptions$Logging;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "definition"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    invoke-direct {p0}, Lcom/superwall/sdk/config/options/SuperwallOptions$Logging;-><init>()V

    .line 108
    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final getLevel()Lcom/superwall/sdk/logger/LogLevel;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/superwall/sdk/config/options/SuperwallOptions$Logging;->level:Lcom/superwall/sdk/logger/LogLevel;

    return-object v0
.end method

.method public final getScopes()Ljava/util/EnumSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "Lcom/superwall/sdk/logger/LogScope;",
            ">;"
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lcom/superwall/sdk/config/options/SuperwallOptions$Logging;->scopes:Ljava/util/EnumSet;

    return-object v0
.end method

.method public final setLevel(Lcom/superwall/sdk/logger/LogLevel;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    iput-object p1, p0, Lcom/superwall/sdk/config/options/SuperwallOptions$Logging;->level:Lcom/superwall/sdk/logger/LogLevel;

    return-void
.end method

.method public final setScopes(Ljava/util/EnumSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lcom/superwall/sdk/logger/LogScope;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    iput-object p1, p0, Lcom/superwall/sdk/config/options/SuperwallOptions$Logging;->scopes:Ljava/util/EnumSet;

    return-void
.end method
