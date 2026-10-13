.class public final Lexpo/modules/video/VideoModuleKt;
.super Ljava/lang/Object;
.source "VideoModule.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVideoModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VideoModule.kt\nexpo/modules/video/VideoModuleKt\n+ 2 ViewDefinitionBuilder.kt\nexpo/modules/kotlin/views/ViewDefinitionBuilder\n+ 3 AnyType.kt\nexpo/modules/kotlin/types/AnyTypeKt\n+ 4 UntypedAsyncFunctionComponent.kt\nexpo/modules/kotlin/functions/UntypedAsyncFunctionComponentKt\n+ 5 EnforceType.kt\nexpo/modules/kotlin/types/EnforceTypeKt\n*L\n1#1,443:1\n127#2,3:444\n130#2,3:459\n127#2,3:462\n130#2,3:477\n127#2,3:480\n130#2,3:495\n127#2,3:498\n130#2,3:513\n127#2,3:516\n130#2,3:531\n127#2,3:534\n130#2,3:549\n127#2,3:552\n130#2,3:567\n127#2,3:570\n130#2,3:585\n235#2,8:588\n243#2,2:641\n216#2:643\n217#2,2:646\n235#2,8:648\n243#2,2:701\n216#2:703\n217#2,2:706\n89#2,4:708\n107#2,4:712\n168#3,2:447\n145#3,2:449\n159#3,8:451\n168#3,2:465\n145#3,2:467\n159#3,8:469\n168#3,2:483\n145#3,2:485\n159#3,8:487\n168#3,2:501\n145#3,2:503\n159#3,8:505\n168#3,2:519\n145#3,2:521\n159#3,8:523\n168#3,2:537\n145#3,2:539\n159#3,8:541\n168#3,2:555\n145#3,2:557\n159#3,8:559\n168#3,2:573\n145#3,2:575\n159#3,8:577\n172#3,7:596\n169#3:603\n145#3,2:604\n159#3,8:606\n177#3:614\n172#3,7:656\n169#3:663\n145#3,2:664\n159#3,8:666\n177#3:674\n13#4,6:615\n19#4,19:622\n13#4,2:644\n13#4,6:675\n19#4,19:682\n13#4,2:704\n11#5:621\n11#5:681\n*S KotlinDebug\n*F\n+ 1 VideoModule.kt\nexpo/modules/video/VideoModuleKt\n*L\n394#1:444,3\n394#1:459,3\n397#1:462,3\n397#1:477,3\n400#1:480,3\n400#1:495,3\n403#1:498,3\n403#1:513,3\n406#1:516,3\n406#1:531,3\n411#1:534,3\n411#1:549,3\n414#1:552,3\n414#1:567,3\n417#1:570,3\n417#1:585,3\n420#1:588,8\n420#1:641,2\n423#1:643\n423#1:646,2\n426#1:648,8\n426#1:701,2\n431#1:703\n431#1:706,2\n434#1:708,4\n437#1:712,4\n394#1:447,2\n394#1:449,2\n394#1:451,8\n397#1:465,2\n397#1:467,2\n397#1:469,8\n400#1:483,2\n400#1:485,2\n400#1:487,8\n403#1:501,2\n403#1:503,2\n403#1:505,8\n406#1:519,2\n406#1:521,2\n406#1:523,8\n411#1:537,2\n411#1:539,2\n411#1:541,8\n414#1:555,2\n414#1:557,2\n414#1:559,8\n417#1:573,2\n417#1:575,2\n417#1:577,8\n420#1:596,7\n420#1:603\n420#1:604,2\n420#1:606,8\n420#1:614\n426#1:656,7\n426#1:663\n426#1:664,2\n426#1:666,8\n426#1:674\n420#1:615,6\n420#1:622,19\n423#1:644,2\n426#1:675,6\n426#1:682,19\n431#1:704,2\n420#1:621\n426#1:681\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u001f\u0010\u0000\u001a\u00020\u0001\"\n\u0008\u0000\u0010\u0002\u0018\u0001*\u00020\u0003*\u0008\u0012\u0004\u0012\u0002H\u00020\u0004H\u0083\u0008\u00a8\u0006\u0005"
    }
    d2 = {
        "VideoViewComponent",
        "",
        "T",
        "Lexpo/modules/video/VideoView;",
        "Lexpo/modules/kotlin/views/ViewDefinitionBuilder;",
        "expo-video_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private static final synthetic VideoViewComponent(Lexpo/modules/kotlin/views/ViewDefinitionBuilder;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lexpo/modules/video/VideoView;",
            ">(",
            "Lexpo/modules/kotlin/views/ViewDefinitionBuilder<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x5

    .line 388
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "onPictureInPictureStart"

    const/4 v2, 0x0

    .line 467
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 388
    aput-object v1, v0, v2

    .line 389
    const-string v1, "onPictureInPictureStop"

    const/4 v4, 0x1

    .line 449
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 389
    aput-object v1, v0, v4

    const/4 v1, 0x2

    .line 390
    const-string v6, "onFullscreenEnter"

    aput-object v6, v0, v1

    .line 391
    const-string v1, "onFullscreenExit"

    const/4 v6, 0x3

    aput-object v1, v0, v6

    .line 392
    const-string v1, "onFirstFrameRender"

    const/4 v7, 0x4

    aput-object v1, v0, v7

    .line 387
    invoke-virtual {p0, v0}, Lexpo/modules/kotlin/views/ViewDefinitionBuilder;->Events([Ljava/lang/String;)V

    .line 394
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    sget-object v0, Lexpo/modules/video/VideoModuleKt$VideoViewComponent$1;->INSTANCE:Lexpo/modules/video/VideoModuleKt$VideoViewComponent$1;

    check-cast v0, Lkotlin/jvm/functions/Function2;

    .line 444
    invoke-virtual {p0}, Lexpo/modules/kotlin/views/ViewDefinitionBuilder;->getProps()Ljava/util/Map;

    move-result-object v1

    new-instance v8, Lexpo/modules/kotlin/views/ConcreteViewProp;

    .line 448
    sget-object v9, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .line 449
    new-instance v10, Lkotlin/Pair;

    const-class v11, Lexpo/modules/video/player/VideoPlayer;

    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    invoke-direct {v10, v11, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 450
    invoke-virtual {v9}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lexpo/modules/kotlin/types/AnyType;

    const/4 v10, 0x0

    if-nez v9, :cond_0

    .line 448
    sget-object v9, Lexpo/modules/video/VideoModuleKt$VideoViewComponent$$inlined$Prop$1;->INSTANCE:Lexpo/modules/video/VideoModuleKt$VideoViewComponent$$inlined$Prop$1;

    check-cast v9, Lkotlin/jvm/functions/Function0;

    .line 451
    new-instance v11, Lexpo/modules/kotlin/types/AnyType;

    .line 452
    new-instance v12, Lexpo/modules/kotlin/types/LazyKType;

    const-class v13, Lexpo/modules/video/player/VideoPlayer;

    invoke-static {v13}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v13

    invoke-direct {v12, v13, v4, v9}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v12, Lkotlin/reflect/KType;

    .line 451
    invoke-direct {v11, v12, v10}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    move-object v9, v11

    .line 444
    :cond_0
    const-string v11, "player"

    invoke-direct {v8, v11, v9, v0}, Lexpo/modules/kotlin/views/ConcreteViewProp;-><init>(Ljava/lang/String;Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function2;)V

    invoke-interface {v1, v11, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    sget-object v0, Lexpo/modules/video/VideoModuleKt$VideoViewComponent$2;->INSTANCE:Lexpo/modules/video/VideoModuleKt$VideoViewComponent$2;

    check-cast v0, Lkotlin/jvm/functions/Function2;

    .line 462
    invoke-virtual {p0}, Lexpo/modules/kotlin/views/ViewDefinitionBuilder;->getProps()Ljava/util/Map;

    move-result-object v1

    new-instance v8, Lexpo/modules/kotlin/views/ConcreteViewProp;

    .line 466
    sget-object v9, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .line 467
    new-instance v11, Lkotlin/Pair;

    const-class v12, Ljava/lang/Boolean;

    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v12

    invoke-direct {v11, v12, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 468
    invoke-virtual {v9}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lexpo/modules/kotlin/types/AnyType;

    if-nez v9, :cond_1

    .line 466
    sget-object v9, Lexpo/modules/video/VideoModuleKt$VideoViewComponent$$inlined$Prop$2;->INSTANCE:Lexpo/modules/video/VideoModuleKt$VideoViewComponent$$inlined$Prop$2;

    check-cast v9, Lkotlin/jvm/functions/Function0;

    .line 469
    new-instance v11, Lexpo/modules/kotlin/types/AnyType;

    .line 470
    new-instance v12, Lexpo/modules/kotlin/types/LazyKType;

    const-class v13, Ljava/lang/Boolean;

    invoke-static {v13}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v13

    invoke-direct {v12, v13, v2, v9}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v12, Lkotlin/reflect/KType;

    .line 469
    invoke-direct {v11, v12, v10}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    move-object v9, v11

    .line 462
    :cond_1
    const-string v11, "nativeControls"

    invoke-direct {v8, v11, v9, v0}, Lexpo/modules/kotlin/views/ConcreteViewProp;-><init>(Ljava/lang/String;Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function2;)V

    invoke-interface {v1, v11, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    sget-object v0, Lexpo/modules/video/VideoModuleKt$VideoViewComponent$3;->INSTANCE:Lexpo/modules/video/VideoModuleKt$VideoViewComponent$3;

    check-cast v0, Lkotlin/jvm/functions/Function2;

    .line 480
    invoke-virtual {p0}, Lexpo/modules/kotlin/views/ViewDefinitionBuilder;->getProps()Ljava/util/Map;

    move-result-object v1

    new-instance v8, Lexpo/modules/kotlin/views/ConcreteViewProp;

    .line 484
    sget-object v9, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .line 485
    new-instance v11, Lkotlin/Pair;

    const-class v12, Lexpo/modules/video/enums/ContentFit;

    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v12

    invoke-direct {v11, v12, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 486
    invoke-virtual {v9}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lexpo/modules/kotlin/types/AnyType;

    if-nez v3, :cond_2

    .line 484
    sget-object v3, Lexpo/modules/video/VideoModuleKt$VideoViewComponent$$inlined$Prop$3;->INSTANCE:Lexpo/modules/video/VideoModuleKt$VideoViewComponent$$inlined$Prop$3;

    check-cast v3, Lkotlin/jvm/functions/Function0;

    .line 487
    new-instance v9, Lexpo/modules/kotlin/types/AnyType;

    .line 488
    new-instance v11, Lexpo/modules/kotlin/types/LazyKType;

    const-class v12, Lexpo/modules/video/enums/ContentFit;

    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v12

    invoke-direct {v11, v12, v2, v3}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v11, Lkotlin/reflect/KType;

    .line 487
    invoke-direct {v9, v11, v10}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    move-object v3, v9

    .line 480
    :cond_2
    const-string v9, "contentFit"

    invoke-direct {v8, v9, v3, v0}, Lexpo/modules/kotlin/views/ConcreteViewProp;-><init>(Ljava/lang/String;Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function2;)V

    invoke-interface {v1, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    sget-object v0, Lexpo/modules/video/VideoModuleKt$VideoViewComponent$4;->INSTANCE:Lexpo/modules/video/VideoModuleKt$VideoViewComponent$4;

    check-cast v0, Lkotlin/jvm/functions/Function2;

    .line 498
    invoke-virtual {p0}, Lexpo/modules/kotlin/views/ViewDefinitionBuilder;->getProps()Ljava/util/Map;

    move-result-object v1

    new-instance v3, Lexpo/modules/kotlin/views/ConcreteViewProp;

    .line 502
    sget-object v8, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .line 503
    new-instance v9, Lkotlin/Pair;

    const-class v11, Ljava/lang/Boolean;

    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    invoke-direct {v9, v11, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 504
    invoke-virtual {v8}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lexpo/modules/kotlin/types/AnyType;

    if-nez v8, :cond_3

    .line 502
    sget-object v8, Lexpo/modules/video/VideoModuleKt$VideoViewComponent$$inlined$Prop$4;->INSTANCE:Lexpo/modules/video/VideoModuleKt$VideoViewComponent$$inlined$Prop$4;

    check-cast v8, Lkotlin/jvm/functions/Function0;

    .line 505
    new-instance v9, Lexpo/modules/kotlin/types/AnyType;

    .line 506
    new-instance v11, Lexpo/modules/kotlin/types/LazyKType;

    const-class v12, Ljava/lang/Boolean;

    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v12

    invoke-direct {v11, v12, v4, v8}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v11, Lkotlin/reflect/KType;

    .line 505
    invoke-direct {v9, v11, v10}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    move-object v8, v9

    .line 498
    :cond_3
    const-string v9, "startsPictureInPictureAutomatically"

    invoke-direct {v3, v9, v8, v0}, Lexpo/modules/kotlin/views/ConcreteViewProp;-><init>(Ljava/lang/String;Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function2;)V

    invoke-interface {v1, v9, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    sget-object v0, Lexpo/modules/video/VideoModuleKt$VideoViewComponent$5;->INSTANCE:Lexpo/modules/video/VideoModuleKt$VideoViewComponent$5;

    check-cast v0, Lkotlin/jvm/functions/Function2;

    .line 516
    invoke-virtual {p0}, Lexpo/modules/kotlin/views/ViewDefinitionBuilder;->getProps()Ljava/util/Map;

    move-result-object v1

    new-instance v3, Lexpo/modules/kotlin/views/ConcreteViewProp;

    .line 520
    sget-object v8, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .line 521
    new-instance v9, Lkotlin/Pair;

    const-class v11, Lexpo/modules/video/records/FullscreenOptions;

    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    invoke-direct {v9, v11, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 522
    invoke-virtual {v8}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lexpo/modules/kotlin/types/AnyType;

    if-nez v8, :cond_4

    .line 520
    sget-object v8, Lexpo/modules/video/VideoModuleKt$VideoViewComponent$$inlined$Prop$5;->INSTANCE:Lexpo/modules/video/VideoModuleKt$VideoViewComponent$$inlined$Prop$5;

    check-cast v8, Lkotlin/jvm/functions/Function0;

    .line 523
    new-instance v9, Lexpo/modules/kotlin/types/AnyType;

    .line 524
    new-instance v11, Lexpo/modules/kotlin/types/LazyKType;

    const-class v12, Lexpo/modules/video/records/FullscreenOptions;

    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v12

    invoke-direct {v11, v12, v4, v8}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v11, Lkotlin/reflect/KType;

    .line 523
    invoke-direct {v9, v11, v10}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    move-object v8, v9

    .line 516
    :cond_4
    const-string v9, "fullscreenOptions"

    invoke-direct {v3, v9, v8, v0}, Lexpo/modules/kotlin/views/ConcreteViewProp;-><init>(Ljava/lang/String;Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function2;)V

    invoke-interface {v1, v9, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    sget-object v0, Lexpo/modules/video/VideoModuleKt$VideoViewComponent$6;->INSTANCE:Lexpo/modules/video/VideoModuleKt$VideoViewComponent$6;

    check-cast v0, Lkotlin/jvm/functions/Function2;

    .line 534
    invoke-virtual {p0}, Lexpo/modules/kotlin/views/ViewDefinitionBuilder;->getProps()Ljava/util/Map;

    move-result-object v1

    new-instance v3, Lexpo/modules/kotlin/views/ConcreteViewProp;

    .line 538
    sget-object v8, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .line 539
    new-instance v9, Lkotlin/Pair;

    const-class v11, Ljava/lang/Boolean;

    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    invoke-direct {v9, v11, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 540
    invoke-virtual {v8}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lexpo/modules/kotlin/types/AnyType;

    if-nez v8, :cond_5

    .line 538
    sget-object v8, Lexpo/modules/video/VideoModuleKt$VideoViewComponent$$inlined$Prop$6;->INSTANCE:Lexpo/modules/video/VideoModuleKt$VideoViewComponent$$inlined$Prop$6;

    check-cast v8, Lkotlin/jvm/functions/Function0;

    .line 541
    new-instance v9, Lexpo/modules/kotlin/types/AnyType;

    .line 542
    new-instance v11, Lexpo/modules/kotlin/types/LazyKType;

    const-class v12, Ljava/lang/Boolean;

    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v12

    invoke-direct {v11, v12, v4, v8}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v11, Lkotlin/reflect/KType;

    .line 541
    invoke-direct {v9, v11, v10}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    move-object v8, v9

    .line 534
    :cond_5
    const-string v9, "requiresLinearPlayback"

    invoke-direct {v3, v9, v8, v0}, Lexpo/modules/kotlin/views/ConcreteViewProp;-><init>(Ljava/lang/String;Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function2;)V

    invoke-interface {v1, v9, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    sget-object v0, Lexpo/modules/video/VideoModuleKt$VideoViewComponent$7;->INSTANCE:Lexpo/modules/video/VideoModuleKt$VideoViewComponent$7;

    check-cast v0, Lkotlin/jvm/functions/Function2;

    .line 552
    invoke-virtual {p0}, Lexpo/modules/kotlin/views/ViewDefinitionBuilder;->getProps()Ljava/util/Map;

    move-result-object v1

    new-instance v3, Lexpo/modules/kotlin/views/ConcreteViewProp;

    .line 556
    sget-object v8, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .line 557
    new-instance v9, Lkotlin/Pair;

    const-class v11, Lexpo/modules/video/records/ButtonOptions;

    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    invoke-direct {v9, v11, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 558
    invoke-virtual {v8}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lexpo/modules/kotlin/types/AnyType;

    if-nez v8, :cond_6

    .line 556
    sget-object v8, Lexpo/modules/video/VideoModuleKt$VideoViewComponent$$inlined$Prop$7;->INSTANCE:Lexpo/modules/video/VideoModuleKt$VideoViewComponent$$inlined$Prop$7;

    check-cast v8, Lkotlin/jvm/functions/Function0;

    .line 559
    new-instance v9, Lexpo/modules/kotlin/types/AnyType;

    .line 560
    new-instance v11, Lexpo/modules/kotlin/types/LazyKType;

    const-class v12, Lexpo/modules/video/records/ButtonOptions;

    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v12

    invoke-direct {v11, v12, v4, v8}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v11, Lkotlin/reflect/KType;

    .line 559
    invoke-direct {v9, v11, v10}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    move-object v8, v9

    .line 552
    :cond_6
    const-string v9, "buttonOptions"

    invoke-direct {v3, v9, v8, v0}, Lexpo/modules/kotlin/views/ConcreteViewProp;-><init>(Ljava/lang/String;Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function2;)V

    invoke-interface {v1, v9, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    sget-object v0, Lexpo/modules/video/VideoModuleKt$VideoViewComponent$8;->INSTANCE:Lexpo/modules/video/VideoModuleKt$VideoViewComponent$8;

    check-cast v0, Lkotlin/jvm/functions/Function2;

    .line 570
    invoke-virtual {p0}, Lexpo/modules/kotlin/views/ViewDefinitionBuilder;->getProps()Ljava/util/Map;

    move-result-object v1

    new-instance v3, Lexpo/modules/kotlin/views/ConcreteViewProp;

    .line 574
    sget-object v8, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .line 575
    new-instance v9, Lkotlin/Pair;

    const-class v11, Ljava/lang/Boolean;

    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    invoke-direct {v9, v11, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 576
    invoke-virtual {v8}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lexpo/modules/kotlin/types/AnyType;

    if-nez v5, :cond_7

    .line 574
    sget-object v5, Lexpo/modules/video/VideoModuleKt$VideoViewComponent$$inlined$Prop$8;->INSTANCE:Lexpo/modules/video/VideoModuleKt$VideoViewComponent$$inlined$Prop$8;

    check-cast v5, Lkotlin/jvm/functions/Function0;

    .line 577
    new-instance v8, Lexpo/modules/kotlin/types/AnyType;

    .line 578
    new-instance v9, Lexpo/modules/kotlin/types/LazyKType;

    const-class v11, Ljava/lang/Boolean;

    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    invoke-direct {v9, v11, v4, v5}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v9, Lkotlin/reflect/KType;

    .line 577
    invoke-direct {v8, v9, v10}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    move-object v5, v8

    .line 570
    :cond_7
    const-string v8, "useExoShutter"

    invoke-direct {v3, v8, v5, v0}, Lexpo/modules/kotlin/views/ConcreteViewProp;-><init>(Ljava/lang/String;Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function2;)V

    invoke-interface {v1, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 588
    const-string v0, "T"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v1, Ljava/lang/Object;

    const-class v3, Lexpo/modules/kotlin/Promise;

    const-string v5, "enterFullscreen"

    if-ne v1, v3, :cond_8

    .line 589
    new-instance v1, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;

    new-array v3, v2, [Lexpo/modules/kotlin/types/AnyType;

    .line 595
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v8, Lexpo/modules/video/VideoModuleKt$VideoViewComponent$$inlined$AsyncFunction$1;

    invoke-direct {v8}, Lexpo/modules/video/VideoModuleKt$VideoViewComponent$$inlined$AsyncFunction$1;-><init>()V

    check-cast v8, Lkotlin/jvm/functions/Function2;

    .line 589
    invoke-direct {v1, v5, v3, v8}, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function2;)V

    check-cast v1, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto/16 :goto_1

    .line 598
    :cond_8
    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v1, Ljava/lang/Object;

    check-cast v1, Ljava/lang/Class;

    .line 602
    new-array v1, v4, [Lexpo/modules/kotlin/types/AnyType;

    .line 603
    sget-object v3, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .line 604
    new-instance v8, Lkotlin/Pair;

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v9, Ljava/lang/Object;

    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-direct {v8, v9, v12}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 605
    invoke-virtual {v3}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lexpo/modules/kotlin/types/AnyType;

    if-nez v3, :cond_9

    .line 603
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    sget-object v3, Lexpo/modules/video/VideoModuleKt$VideoViewComponent$$inlined$AsyncFunction$2;->INSTANCE:Lexpo/modules/video/VideoModuleKt$VideoViewComponent$$inlined$AsyncFunction$2;

    check-cast v3, Lkotlin/jvm/functions/Function0;

    .line 606
    new-instance v8, Lexpo/modules/kotlin/types/AnyType;

    .line 607
    new-instance v9, Lexpo/modules/kotlin/types/LazyKType;

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v12, Ljava/lang/Object;

    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v12

    .line 609
    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    .line 607
    invoke-direct {v9, v12, v11, v3}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v9, Lkotlin/reflect/KType;

    .line 606
    invoke-direct {v8, v9, v10}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    move-object v3, v8

    .line 603
    :cond_9
    aput-object v3, v1, v2

    .line 591
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v3, Lexpo/modules/video/VideoModuleKt$VideoViewComponent$$inlined$AsyncFunction$3;

    invoke-direct {v3}, Lexpo/modules/video/VideoModuleKt$VideoViewComponent$$inlined$AsyncFunction$3;-><init>()V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    .line 618
    const-class v8, Lkotlin/Unit;

    move-object v9, v8

    check-cast v9, Ljava/lang/Class;

    .line 619
    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 622
    new-instance v8, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;

    invoke-direct {v8, v5, v1, v3}, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v8, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    :goto_0
    move-object v1, v8

    goto :goto_1

    .line 624
    :cond_a
    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 626
    new-instance v8, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;

    invoke-direct {v8, v5, v1, v3}, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v8, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_0

    .line 628
    :cond_b
    sget-object v9, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 630
    new-instance v8, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;

    invoke-direct {v8, v5, v1, v3}, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v8, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_0

    .line 632
    :cond_c
    sget-object v9, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 634
    new-instance v8, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;

    invoke-direct {v8, v5, v1, v3}, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v8, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_0

    .line 636
    :cond_d
    const-class v9, Ljava/lang/String;

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 638
    new-instance v8, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;

    invoke-direct {v8, v5, v1, v3}, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v8, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_0

    .line 640
    :cond_e
    new-instance v8, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;

    invoke-direct {v8, v5, v1, v3}, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v8, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_0

    .line 595
    :goto_1
    move-object v3, v1

    check-cast v3, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    .line 641
    invoke-virtual {p0}, Lexpo/modules/kotlin/views/ViewDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    sget-object v3, Lexpo/modules/kotlin/functions/Queues;->MAIN:Lexpo/modules/kotlin/functions/Queues;

    invoke-virtual {v1, v3}, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;->runOnQueue(Lexpo/modules/kotlin/functions/Queues;)Lexpo/modules/kotlin/functions/BaseAsyncFunctionComponent;

    .line 643
    new-array v1, v2, [Lexpo/modules/kotlin/types/AnyType;

    new-instance v3, Lexpo/modules/video/VideoModuleKt$VideoViewComponent$$inlined$AsyncFunctionWithoutArgs$1;

    invoke-direct {v3}, Lexpo/modules/video/VideoModuleKt$VideoViewComponent$$inlined$AsyncFunctionWithoutArgs$1;-><init>()V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    .line 645
    new-instance v5, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;

    const-string v8, "exitFullscreen"

    invoke-direct {v5, v8, v1, v3}, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v5, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    .line 646
    invoke-virtual {p0}, Lexpo/modules/kotlin/views/ViewDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 648
    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v1, Ljava/lang/Object;

    const-class v3, Lexpo/modules/kotlin/Promise;

    const-string v5, "startPictureInPicture"

    if-ne v1, v3, :cond_f

    .line 649
    new-instance v0, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;

    new-array v1, v2, [Lexpo/modules/kotlin/types/AnyType;

    .line 655
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v3, Lexpo/modules/video/VideoModuleKt$VideoViewComponent$$inlined$AsyncFunction$4;

    invoke-direct {v3}, Lexpo/modules/video/VideoModuleKt$VideoViewComponent$$inlined$AsyncFunction$4;-><init>()V

    check-cast v3, Lkotlin/jvm/functions/Function2;

    .line 649
    invoke-direct {v0, v5, v1, v3}, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function2;)V

    check-cast v0, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto/16 :goto_3

    .line 658
    :cond_f
    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v1, Ljava/lang/Object;

    check-cast v1, Ljava/lang/Class;

    .line 662
    new-array v1, v4, [Lexpo/modules/kotlin/types/AnyType;

    .line 663
    sget-object v3, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .line 664
    new-instance v4, Lkotlin/Pair;

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v8, Ljava/lang/Object;

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-direct {v4, v8, v11}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 665
    invoke-virtual {v3}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lexpo/modules/kotlin/types/AnyType;

    if-nez v3, :cond_10

    .line 663
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    sget-object v3, Lexpo/modules/video/VideoModuleKt$VideoViewComponent$$inlined$AsyncFunction$5;->INSTANCE:Lexpo/modules/video/VideoModuleKt$VideoViewComponent$$inlined$AsyncFunction$5;

    check-cast v3, Lkotlin/jvm/functions/Function0;

    .line 666
    new-instance v4, Lexpo/modules/kotlin/types/AnyType;

    .line 667
    new-instance v8, Lexpo/modules/kotlin/types/LazyKType;

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v7, Ljava/lang/Object;

    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v7

    .line 669
    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    .line 667
    invoke-direct {v8, v7, v9, v3}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v8, Lkotlin/reflect/KType;

    .line 666
    invoke-direct {v4, v8, v10}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;Lexpo/modules/kotlin/types/TypeConverterProvider;)V

    move-object v3, v4

    .line 663
    :cond_10
    aput-object v3, v1, v2

    .line 651
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v0, Lexpo/modules/video/VideoModuleKt$VideoViewComponent$$inlined$AsyncFunction$6;

    invoke-direct {v0}, Lexpo/modules/video/VideoModuleKt$VideoViewComponent$$inlined$AsyncFunction$6;-><init>()V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 678
    const-class v3, Lkotlin/Unit;

    move-object v4, v3

    check-cast v4, Ljava/lang/Class;

    .line 679
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 682
    new-instance v3, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;

    invoke-direct {v3, v5, v1, v0}, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v3, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    :goto_2
    move-object v0, v3

    goto :goto_3

    .line 684
    :cond_11
    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 686
    new-instance v3, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;

    invoke-direct {v3, v5, v1, v0}, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v3, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_2

    .line 688
    :cond_12
    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 690
    new-instance v3, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;

    invoke-direct {v3, v5, v1, v0}, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v3, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_2

    .line 692
    :cond_13
    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 694
    new-instance v3, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;

    invoke-direct {v3, v5, v1, v0}, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v3, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_2

    .line 696
    :cond_14
    const-class v4, Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 698
    new-instance v3, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;

    invoke-direct {v3, v5, v1, v0}, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v3, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_2

    .line 700
    :cond_15
    new-instance v3, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;

    invoke-direct {v3, v5, v1, v0}, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v3, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    goto :goto_2

    .line 655
    :goto_3
    move-object v1, v0

    check-cast v1, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    .line 701
    invoke-virtual {p0}, Lexpo/modules/kotlin/views/ViewDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 703
    new-array v0, v2, [Lexpo/modules/kotlin/types/AnyType;

    new-instance v1, Lexpo/modules/video/VideoModuleKt$VideoViewComponent$$inlined$AsyncFunctionWithoutArgs$2;

    invoke-direct {v1}, Lexpo/modules/video/VideoModuleKt$VideoViewComponent$$inlined$AsyncFunctionWithoutArgs$2;-><init>()V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 705
    new-instance v2, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;

    const-string v3, "stopPictureInPicture"

    invoke-direct {v2, v3, v0, v1}, Lexpo/modules/kotlin/functions/UntypedAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v2, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    .line 706
    invoke-virtual {p0}, Lexpo/modules/kotlin/views/ViewDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 708
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v0, Lexpo/modules/video/VideoModuleKt$VideoViewComponent$$inlined$OnViewDestroys$1;

    invoke-direct {v0}, Lexpo/modules/video/VideoModuleKt$VideoViewComponent$$inlined$OnViewDestroys$1;-><init>()V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p0, v0}, Lexpo/modules/kotlin/views/ViewDefinitionBuilder;->setOnViewDestroys(Lkotlin/jvm/functions/Function1;)V

    .line 712
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v0, Lexpo/modules/video/VideoModuleKt$VideoViewComponent$$inlined$OnViewDidUpdateProps$1;

    invoke-direct {v0}, Lexpo/modules/video/VideoModuleKt$VideoViewComponent$$inlined$OnViewDidUpdateProps$1;-><init>()V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p0, v0}, Lexpo/modules/kotlin/views/ViewDefinitionBuilder;->setOnViewDidUpdateProps(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method
