.class final Lexpo/modules/ui/ComposableSingletons$ExpoUIModuleKt$lambda$945131637$1;
.super Ljava/lang/Object;
.source "ExpoUIModule.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexpo/modules/ui/ComposableSingletons$ExpoUIModuleKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function4<",
        "Lexpo/modules/kotlin/views/FunctionalComposableScope;",
        "Lexpo/modules/ui/menu/DropdownMenuProps;",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nExpoUIModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExpoUIModule.kt\nexpo/modules/ui/ComposableSingletons$ExpoUIModuleKt$lambda$945131637$1\n+ 2 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 3 ExpoComposeView.kt\nexpo/modules/kotlin/views/FunctionalComposableScope\n+ 4 ViewEventDelegate.kt\nexpo/modules/kotlin/viewevent/ViewEventDelegateKt\n*L\n1#1,494:1\n1128#2,3:495\n1131#2,3:501\n1128#2,6:504\n234#3,2:498\n36#4:500\n27#4:510\n*S KotlinDebug\n*F\n+ 1 ExpoUIModule.kt\nexpo/modules/ui/ComposableSingletons$ExpoUIModuleKt$lambda$945131637$1\n*L\n254#1:495,3\n254#1:501,3\n255#1:504,6\n254#1:498,2\n254#1:500\n254#1:510\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlin/reflect/KProperty<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final INSTANCE:Lexpo/modules/ui/ComposableSingletons$ExpoUIModuleKt$lambda$945131637$1;


# direct methods
.method public static synthetic $r8$lambda$BtRFt-meXh5490FTVX_LSBhrxwQ(Lexpo/modules/kotlin/viewevent/ViewEventDelegate;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lexpo/modules/ui/ComposableSingletons$ExpoUIModuleKt$lambda$945131637$1;->invoke$lambda$3$lambda$2(Lexpo/modules/kotlin/viewevent/ViewEventDelegate;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    .line 254
    new-instance v1, Lkotlin/jvm/internal/PropertyReference0Impl;

    const-string v2, "onDismissRequest"

    const-string v3, "<v#0>"

    const-class v4, Lexpo/modules/ui/ComposableSingletons$ExpoUIModuleKt$lambda$945131637$1;

    const/4 v5, 0x0

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/PropertyReference0Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/PropertyReference0;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property0(Lkotlin/jvm/internal/PropertyReference0;)Lkotlin/reflect/KProperty0;

    move-result-object v1

    aput-object v1, v0, v5

    sput-object v0, Lexpo/modules/ui/ComposableSingletons$ExpoUIModuleKt$lambda$945131637$1;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lexpo/modules/ui/ComposableSingletons$ExpoUIModuleKt$lambda$945131637$1;

    invoke-direct {v0}, Lexpo/modules/ui/ComposableSingletons$ExpoUIModuleKt$lambda$945131637$1;-><init>()V

    sput-object v0, Lexpo/modules/ui/ComposableSingletons$ExpoUIModuleKt$lambda$945131637$1;->INSTANCE:Lexpo/modules/ui/ComposableSingletons$ExpoUIModuleKt$lambda$945131637$1;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final invoke$lambda$1(Lexpo/modules/kotlin/viewevent/ViewEventDelegate;)Lexpo/modules/kotlin/viewevent/ViewEventCallback;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexpo/modules/kotlin/viewevent/ViewEventDelegate<",
            "Lkotlin/Unit;",
            ">;)",
            "Lexpo/modules/kotlin/viewevent/ViewEventCallback<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 254
    sget-object v0, Lexpo/modules/ui/ComposableSingletons$ExpoUIModuleKt$lambda$945131637$1;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 510
    invoke-virtual {p0, v0}, Lexpo/modules/kotlin/viewevent/ViewEventDelegate;->getValue(Lkotlin/reflect/KProperty;)Lexpo/modules/kotlin/viewevent/ViewEventCallback;

    move-result-object p0

    return-object p0
.end method

.method private static final invoke$lambda$3$lambda$2(Lexpo/modules/kotlin/viewevent/ViewEventDelegate;)Lkotlin/Unit;
    .locals 1

    .line 255
    invoke-static {p0}, Lexpo/modules/ui/ComposableSingletons$ExpoUIModuleKt$lambda$945131637$1;->invoke$lambda$1(Lexpo/modules/kotlin/viewevent/ViewEventDelegate;)Lexpo/modules/kotlin/viewevent/ViewEventCallback;

    move-result-object p0

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-interface {p0, v0}, Lexpo/modules/kotlin/viewevent/ViewEventCallback;->invoke(Ljava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 253
    check-cast p1, Lexpo/modules/kotlin/views/FunctionalComposableScope;

    check-cast p2, Lexpo/modules/ui/menu/DropdownMenuProps;

    check-cast p3, Landroidx/compose/runtime/Composer;

    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->intValue()I

    move-result p4

    invoke-virtual {p0, p1, p2, p3, p4}, Lexpo/modules/ui/ComposableSingletons$ExpoUIModuleKt$lambda$945131637$1;->invoke(Lexpo/modules/kotlin/views/FunctionalComposableScope;Lexpo/modules/ui/menu/DropdownMenuProps;Landroidx/compose/runtime/Composer;I)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lexpo/modules/kotlin/views/FunctionalComposableScope;Lexpo/modules/ui/menu/DropdownMenuProps;Landroidx/compose/runtime/Composer;I)V
    .locals 4

    const-string v0, "$this$ExpoUIView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "props"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "C253@8950L36,254@9020L26,254@8993L53:ExpoUIModule.kt#v15e7d"

    invoke-static {p3, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    const-string v1, "expo.modules.ui.ComposableSingletons$ExpoUIModuleKt.lambda$945131637.<anonymous> (ExpoUIModule.kt:253)"

    const v2, 0x38559075

    invoke-static {v2, p4, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    const v0, 0x6e3c21fe

    invoke-interface {p3, v0}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const-string v0, "CC(remember):ExpoUIModule.kt#9igjgp"

    invoke-static {p3, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 495
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    .line 496
    sget-object v2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v2}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_1

    .line 499
    invoke-virtual {p1}, Lexpo/modules/kotlin/views/FunctionalComposableScope;->getView()Lexpo/modules/kotlin/views/ComposeFunctionHolder;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 500
    new-instance v2, Lexpo/modules/kotlin/viewevent/ViewEventDelegate;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lexpo/modules/kotlin/viewevent/ViewEventDelegate;-><init>(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    .line 501
    invoke-interface {p3, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    move-object v1, v2

    .line 254
    :cond_1
    check-cast v1, Lexpo/modules/kotlin/viewevent/ViewEventDelegate;

    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    const v2, 0x4c5de2

    .line 255
    invoke-interface {p3, v2}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-static {p3, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-interface {p3, v1}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v0

    .line 504
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v0, :cond_2

    .line 505
    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    if-ne v2, v0, :cond_3

    .line 255
    :cond_2
    new-instance v2, Lexpo/modules/ui/ComposableSingletons$ExpoUIModuleKt$lambda$945131637$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lexpo/modules/ui/ComposableSingletons$ExpoUIModuleKt$lambda$945131637$1$$ExternalSyntheticLambda0;-><init>(Lexpo/modules/kotlin/viewevent/ViewEventDelegate;)V

    .line 507
    invoke-interface {p3, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 255
    :cond_3
    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    sget v0, Lexpo/modules/kotlin/views/FunctionalComposableScope;->$stable:I

    and-int/lit8 v1, p4, 0xe

    or-int/2addr v0, v1

    and-int/lit8 p4, p4, 0x70

    or-int/2addr p4, v0

    invoke-static {p1, p2, v2, p3, p4}, Lexpo/modules/ui/menu/DropdownMenuKt;->DropdownMenuContent(Lexpo/modules/kotlin/views/FunctionalComposableScope;Lexpo/modules/ui/menu/DropdownMenuProps;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_4
    return-void
.end method
