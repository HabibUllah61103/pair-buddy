.class public final Lexpo/modules/ui/ExposedDropdownMenuBoxComposableScopeKt;
.super Ljava/lang/Object;
.source "ExposedDropdownMenuBoxComposableScope.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\"\u001f\u0010\u0000\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "LocalExposedDropdownMenuBoxScope",
        "Landroidx/compose/runtime/ProvidableCompositionLocal;",
        "Landroidx/compose/material3/ExposedDropdownMenuBoxScope;",
        "getLocalExposedDropdownMenuBoxScope$annotations",
        "()V",
        "getLocalExposedDropdownMenuBoxScope",
        "()Landroidx/compose/runtime/ProvidableCompositionLocal;",
        "expo-ui_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final LocalExposedDropdownMenuBoxScope:Landroidx/compose/runtime/ProvidableCompositionLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/ProvidableCompositionLocal<",
            "Landroidx/compose/material3/ExposedDropdownMenuBoxScope;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$Foy5jVVd4Zluj42DzYZ5bn8rFxQ()Landroidx/compose/material3/ExposedDropdownMenuBoxScope;
    .locals 1

    invoke-static {}, Lexpo/modules/ui/ExposedDropdownMenuBoxComposableScopeKt;->LocalExposedDropdownMenuBoxScope$lambda$0()Landroidx/compose/material3/ExposedDropdownMenuBoxScope;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 8
    new-instance v0, Lexpo/modules/ui/ExposedDropdownMenuBoxComposableScopeKt$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lexpo/modules/ui/ExposedDropdownMenuBoxComposableScopeKt$$ExternalSyntheticLambda0;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v2, v0, v1, v2}, Landroidx/compose/runtime/CompositionLocalKt;->compositionLocalOf$default(Landroidx/compose/runtime/SnapshotMutationPolicy;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    sput-object v0, Lexpo/modules/ui/ExposedDropdownMenuBoxComposableScopeKt;->LocalExposedDropdownMenuBoxScope:Landroidx/compose/runtime/ProvidableCompositionLocal;

    return-void
.end method

.method private static final LocalExposedDropdownMenuBoxScope$lambda$0()Landroidx/compose/material3/ExposedDropdownMenuBoxScope;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public static final getLocalExposedDropdownMenuBoxScope()Landroidx/compose/runtime/ProvidableCompositionLocal;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/runtime/ProvidableCompositionLocal<",
            "Landroidx/compose/material3/ExposedDropdownMenuBoxScope;",
            ">;"
        }
    .end annotation

    .line 7
    sget-object v0, Lexpo/modules/ui/ExposedDropdownMenuBoxComposableScopeKt;->LocalExposedDropdownMenuBoxScope:Landroidx/compose/runtime/ProvidableCompositionLocal;

    return-object v0
.end method

.method public static synthetic getLocalExposedDropdownMenuBoxScope$annotations()V
    .locals 0

    return-void
.end method
