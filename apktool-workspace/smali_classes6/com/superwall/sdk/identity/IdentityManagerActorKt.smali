.class public final Lcom/superwall/sdk/identity/IdentityManagerActorKt;
.super Ljava/lang/Object;
.source "IdentityManagerActor.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIdentityManagerActor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IdentityManagerActor.kt\ncom/superwall/sdk/identity/IdentityManagerActorKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,475:1\n1#2:476\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u001a\u0018\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0000\u00a8\u0006\u0006"
    }
    d2 = {
        "createInitialIdentityState",
        "Lcom/superwall/sdk/identity/IdentityState;",
        "storage",
        "Lcom/superwall/sdk/storage/Storage;",
        "appInstalledAtString",
        "",
        "superwall_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final createInitialIdentityState(Lcom/superwall/sdk/storage/Storage;Ljava/lang/String;)Lcom/superwall/sdk/identity/IdentityState;
    .locals 13

    const-string v0, "storage"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appInstalledAtString"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 429
    sget-object v0, Lcom/superwall/sdk/storage/AliasId;->INSTANCE:Lcom/superwall/sdk/storage/AliasId;

    check-cast v0, Lcom/superwall/sdk/storage/Storable;

    invoke-interface {p0, v0}, Lcom/superwall/sdk/storage/Storage;->read(Lcom/superwall/sdk/storage/Storable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 430
    sget-object v1, Lcom/superwall/sdk/storage/Seed;->INSTANCE:Lcom/superwall/sdk/storage/Seed;

    check-cast v1, Lcom/superwall/sdk/storage/Storable;

    invoke-interface {p0, v1}, Lcom/superwall/sdk/storage/Storage;->read(Lcom/superwall/sdk/storage/Storable;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 433
    sget-object v2, Lcom/superwall/sdk/identity/IdentityLogic;->INSTANCE:Lcom/superwall/sdk/identity/IdentityLogic;

    invoke-virtual {v2}, Lcom/superwall/sdk/identity/IdentityLogic;->generateAlias()Ljava/lang/String;

    move-result-object v2

    .line 434
    sget-object v3, Lcom/superwall/sdk/storage/AliasId;->INSTANCE:Lcom/superwall/sdk/storage/AliasId;

    check-cast v3, Lcom/superwall/sdk/storage/Storable;

    invoke-interface {p0, v3, v2}, Lcom/superwall/sdk/storage/Storage;->write(Lcom/superwall/sdk/storage/Storable;Ljava/lang/Object;)V

    move-object v6, v2

    goto :goto_0

    :cond_0
    move-object v6, v0

    :goto_0
    if-eqz v1, :cond_1

    .line 437
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_1

    :cond_1
    sget-object v2, Lcom/superwall/sdk/identity/IdentityLogic;->INSTANCE:Lcom/superwall/sdk/identity/IdentityLogic;

    invoke-virtual {v2}, Lcom/superwall/sdk/identity/IdentityLogic;->generateSeed()I

    move-result v2

    .line 438
    sget-object v3, Lcom/superwall/sdk/storage/Seed;->INSTANCE:Lcom/superwall/sdk/storage/Seed;

    check-cast v3, Lcom/superwall/sdk/storage/Storable;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p0, v3, v4}, Lcom/superwall/sdk/storage/Storage;->write(Lcom/superwall/sdk/storage/Storable;Ljava/lang/Object;)V

    :goto_1
    move v7, v2

    .line 440
    sget-object v2, Lcom/superwall/sdk/storage/AppUserId;->INSTANCE:Lcom/superwall/sdk/storage/AppUserId;

    check-cast v2, Lcom/superwall/sdk/storage/Storable;

    invoke-interface {p0, v2}, Lcom/superwall/sdk/storage/Storage;->read(Lcom/superwall/sdk/storage/Storable;)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Ljava/lang/String;

    .line 441
    sget-object v2, Lcom/superwall/sdk/storage/UserAttributes;->INSTANCE:Lcom/superwall/sdk/storage/UserAttributes;

    check-cast v2, Lcom/superwall/sdk/storage/Storable;

    invoke-interface {p0, v2}, Lcom/superwall/sdk/storage/Storage;->read(Lcom/superwall/sdk/storage/Storable;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    if-nez v2, :cond_2

    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v2

    :cond_2
    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    .line 445
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    move-object v8, v2

    goto :goto_3

    .line 449
    :cond_4
    :goto_2
    sget-object v0, Lcom/superwall/sdk/identity/IdentityLogic;->INSTANCE:Lcom/superwall/sdk/identity/IdentityLogic;

    .line 451
    invoke-static {}, Lkotlin/collections/MapsKt;->createMapBuilder()Ljava/util/Map;

    move-result-object v1

    .line 452
    const-string v3, "aliasId"

    invoke-interface {v1, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    const-string v3, "seed"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v5, :cond_5

    .line 454
    const-string v3, "appUserId"

    invoke-interface {v1, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    :cond_5
    invoke-static {v1}, Lkotlin/collections/MapsKt;->build(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 449
    invoke-virtual {v0, v1, v2, p1}, Lcom/superwall/sdk/identity/IdentityLogic;->mergeAttributes(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 459
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 460
    sget-object v1, Lcom/superwall/sdk/storage/UserAttributes;->INSTANCE:Lcom/superwall/sdk/storage/UserAttributes;

    check-cast v1, Lcom/superwall/sdk/storage/Storable;

    invoke-interface {p0, v1, v0}, Lcom/superwall/sdk/storage/Storage;->write(Lcom/superwall/sdk/storage/Storable;Ljava/lang/Object;)V

    :cond_6
    move-object v8, v0

    .line 467
    :goto_3
    new-instance v4, Lcom/superwall/sdk/identity/IdentityState;

    const/16 v11, 0x10

    const/4 v12, 0x0

    const/4 v9, 0x0

    move-object v10, p1

    invoke-direct/range {v4 .. v12}, Lcom/superwall/sdk/identity/IdentityState;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;Lcom/superwall/sdk/identity/IdentityState$Phase;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v4
.end method
