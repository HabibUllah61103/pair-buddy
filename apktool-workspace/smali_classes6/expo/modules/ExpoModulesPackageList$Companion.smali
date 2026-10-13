.class public final Lexpo/modules/ExpoModulesPackageList$Companion;
.super Ljava/lang/Object;
.source "ExpoModulesPackageList.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexpo/modules/ExpoModulesPackageList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005H\u0007R\u0017\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\'\u0010\t\u001a\u0018\u0012\u000c\u0012\n\u0012\u0006\u0008\u0001\u0012\u00020\u000c0\u000b\u0012\u0006\u0012\u0004\u0018\u00010\r0\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0011"
    }
    d2 = {
        "Lexpo/modules/ExpoModulesPackageList$Companion;",
        "",
        "<init>",
        "()V",
        "packagesList",
        "",
        "Lexpo/modules/core/interfaces/Package;",
        "getPackagesList",
        "()Ljava/util/List;",
        "modulesMap",
        "",
        "Ljava/lang/Class;",
        "Lexpo/modules/kotlin/modules/Module;",
        "",
        "getModulesMap",
        "()Ljava/util/Map;",
        "getPackageList",
        "expo_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lexpo/modules/ExpoModulesPackageList$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getModulesMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lexpo/modules/kotlin/modules/Module;",
            ">;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 21
    invoke-static {}, Lexpo/modules/ExpoModulesPackageList;->access$getModulesMap$cp()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getPackageList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lexpo/modules/core/interfaces/Package;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 69
    invoke-virtual {p0}, Lexpo/modules/ExpoModulesPackageList$Companion;->getPackagesList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getPackagesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lexpo/modules/core/interfaces/Package;",
            ">;"
        }
    .end annotation

    .line 9
    invoke-static {}, Lexpo/modules/ExpoModulesPackageList;->access$getPackagesList$cp()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
