.class public final Lexpo/modules/kotlin/edgeToEdge/EdgeToEdgePackage$createReactActivityLifecycleListeners$1;
.super Ljava/lang/Object;
.source "EdgeToEdgePackage.kt"

# interfaces
.implements Lexpo/modules/core/interfaces/ReactActivityLifecycleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/kotlin/edgeToEdge/EdgeToEdgePackage;->createReactActivityLifecycleListeners(Landroid/content/Context;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEdgeToEdgePackage.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EdgeToEdgePackage.kt\nexpo/modules/kotlin/edgeToEdge/EdgeToEdgePackage$createReactActivityLifecycleListeners$1\n+ 2 EdgeToEdgePackage.kt\nexpo/modules/kotlin/edgeToEdge/EdgeToEdgePackageKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 4 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,69:1\n55#2,5:70\n60#2,8:83\n55#2,5:91\n60#2:104\n61#2,7:109\n11228#3:75\n11563#3,3:76\n11228#3:96\n11563#3,3:97\n11228#3:105\n11563#3,3:106\n37#4:79\n36#4,3:80\n37#4:100\n36#4,3:101\n*S KotlinDebug\n*F\n+ 1 EdgeToEdgePackage.kt\nexpo/modules/kotlin/edgeToEdge/EdgeToEdgePackage$createReactActivityLifecycleListeners$1\n*L\n19#1:70,5\n19#1:83,8\n22#1:91,5\n22#1:104\n22#1:109,7\n19#1:75\n19#1:76,3\n22#1:96\n22#1:97,3\n22#1:105\n22#1:106,3\n19#1:79\n19#1:80,3\n22#1:100\n22#1:101,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001c\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "expo/modules/kotlin/edgeToEdge/EdgeToEdgePackage$createReactActivityLifecycleListeners$1",
        "Lexpo/modules/core/interfaces/ReactActivityLifecycleListener;",
        "onCreate",
        "",
        "activity",
        "Landroid/app/Activity;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
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


# direct methods
.method constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 9

    .line 19
    const-string p2, "isEdgeToEdgeFeatureFlagOn"

    const/4 v0, 0x0

    new-array v1, v0, [Lkotlin/Pair;

    .line 70
    const-string v1, "com.facebook.react.views.view.WindowUtilKt"

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 72
    :try_start_0
    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 73
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 75
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v5, Ljava/util/Collection;

    .line 78
    check-cast v5, Ljava/util/List;

    .line 75
    check-cast v5, Ljava/util/Collection;

    .line 82
    new-array v6, v0, [Ljava/lang/Class;

    invoke-interface {v5, v6}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    .line 74
    check-cast v5, [Ljava/lang/Class;

    .line 75
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v6, Ljava/util/Collection;

    .line 78
    check-cast v6, Ljava/util/List;

    .line 75
    check-cast v6, Ljava/util/Collection;

    .line 82
    new-array v7, v0, [Ljava/lang/Object;

    invoke-interface {v6, v7}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    .line 84
    array-length v7, v5

    invoke-static {v5, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Class;

    invoke-virtual {v4, p2, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    .line 86
    invoke-virtual {p2, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 87
    array-length v4, v6

    invoke-static {v6, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    instance-of v4, p2, Ljava/lang/Boolean;

    if-nez v4, :cond_0

    move-object p2, v3

    :cond_0
    check-cast p2, Ljava/lang/Boolean;

    .line 72
    invoke-static {p2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p2}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 88
    :goto_0
    invoke-static {p2}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v4

    const-string v5, "EdgeToEdgePackage"

    if-eqz v4, :cond_1

    .line 89
    const-string v6, "Failed to invoke \'isEdgeToEdgeFeatureFlagOn\' on com.facebook.react.views.view.WindowUtilKt"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 90
    :cond_1
    invoke-static {p2}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object p2, v3

    .line 19
    :cond_2
    check-cast p2, Ljava/lang/Boolean;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    goto :goto_1

    :cond_3
    move p2, v2

    :goto_1
    if-eqz p2, :cond_7

    .line 22
    const-string p2, "enableEdgeToEdge"

    new-array v4, v2, [Lkotlin/Pair;

    new-instance v6, Lkotlin/Pair;

    const-class v7, Landroid/view/Window;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v8

    goto :goto_2

    :cond_4
    move-object v8, v3

    :goto_2
    invoke-direct {v6, v7, v8}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v6, v4, v0

    .line 93
    :try_start_1
    sget-object v6, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 94
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 96
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v6, Ljava/util/Collection;

    .line 97
    aget-object v7, v4, v0

    .line 95
    invoke-virtual {v7}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Class;

    .line 98
    invoke-interface {v6, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 99
    check-cast v6, Ljava/util/List;

    .line 96
    check-cast v6, Ljava/util/Collection;

    .line 103
    new-array v7, v0, [Ljava/lang/Class;

    invoke-interface {v6, v7}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    .line 95
    check-cast v6, [Ljava/lang/Class;

    .line 105
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v7, Ljava/util/Collection;

    .line 106
    aget-object v4, v4, v0

    .line 104
    invoke-virtual {v4}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v4

    .line 107
    invoke-interface {v7, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 108
    check-cast v7, Ljava/util/List;

    .line 105
    check-cast v7, Ljava/util/Collection;

    .line 103
    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {v7, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .line 109
    array-length v4, v6

    invoke-static {v6, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Class;

    invoke-virtual {v1, p2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    .line 111
    invoke-virtual {p2, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 112
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v3, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    instance-of v0, p2, Lkotlin/Unit;

    if-nez v0, :cond_5

    goto :goto_3

    :cond_5
    move-object v3, p2

    :goto_3
    check-cast v3, Lkotlin/Unit;

    .line 93
    invoke-static {v3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception p2

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p2}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 113
    :goto_4
    invoke-static {p2}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 114
    const-string v1, "Failed to invoke \'enableEdgeToEdge\' on com.facebook.react.views.view.WindowUtilKt"

    invoke-static {v5, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 115
    :cond_6
    invoke-static {p2}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    if-eqz p1, :cond_7

    .line 26
    invoke-static {p1}, Lexpo/modules/kotlin/edgeToEdge/EdgeToEdgePackageKt;->access$enforceNavigationBarContrastFromTheme(Landroid/app/Activity;)V

    :cond_7
    return-void
.end method
