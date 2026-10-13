.class public interface abstract Lexpo/modules/interfaces/constants/ConstantsInterface;
.super Ljava/lang/Object;
.source "ConstantsInterface.kt"

# interfaces
.implements Lexpo/modules/kotlin/services/Service;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0008\u0008\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0008\u0003\u0008f\u0018\u00002\u00020\u0001R \u0010\u0002\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0007R\u0014\u0010\u0008\u001a\u0004\u0018\u00010\u0004X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\nR\u0012\u0010\u000b\u001a\u00020\u0004X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\nR\u0012\u0010\r\u001a\u00020\u000eX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\u0010R\u0012\u0010\u0011\u001a\u00020\u0004X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\nR\u0018\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0014X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\u0016\u00a8\u0006\u0017"
    }
    d2 = {
        "Lexpo/modules/interfaces/constants/ConstantsInterface;",
        "Lexpo/modules/kotlin/services/Service;",
        "constants",
        "",
        "",
        "",
        "getConstants",
        "()Ljava/util/Map;",
        "appScopeKey",
        "getAppScopeKey",
        "()Ljava/lang/String;",
        "deviceName",
        "getDeviceName",
        "statusBarHeight",
        "",
        "getStatusBarHeight",
        "()I",
        "systemVersion",
        "getSystemVersion",
        "systemFonts",
        "",
        "getSystemFonts",
        "()Ljava/util/List;",
        "expo-modules-core_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract getAppScopeKey()Ljava/lang/String;
.end method

.method public abstract getConstants()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDeviceName()Ljava/lang/String;
.end method

.method public abstract getStatusBarHeight()I
.end method

.method public abstract getSystemFonts()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSystemVersion()Ljava/lang/String;
.end method
