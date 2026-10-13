.class public final Landroidx/compose/material3/FloatingToolbarState$Companion;
.super Ljava/lang/Object;
.source "FloatingToolbar.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/material3/FloatingToolbarState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u001e\u0010\u0004\u001a\u000c\u0012\u0004\u0012\u00020\u0006\u0012\u0002\u0008\u00030\u0005X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Landroidx/compose/material3/FloatingToolbarState$Companion;",
        "",
        "<init>",
        "()V",
        "Saver",
        "Landroidx/compose/runtime/saveable/Saver;",
        "Landroidx/compose/material3/FloatingToolbarState;",
        "getSaver$material3",
        "()Landroidx/compose/runtime/saveable/Saver;",
        "material3"
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
.field static final synthetic $$INSTANCE:Landroidx/compose/material3/FloatingToolbarState$Companion;

.field private static final Saver:Landroidx/compose/runtime/saveable/Saver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/saveable/Saver<",
            "Landroidx/compose/material3/FloatingToolbarState;",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$Za9Jg4sX0V3tmEOH07Nx0E1ul5M(Ljava/util/List;)Landroidx/compose/material3/FloatingToolbarState;
    .locals 0

    invoke-static {p0}, Landroidx/compose/material3/FloatingToolbarState$Companion;->Saver$lambda$1(Ljava/util/List;)Landroidx/compose/material3/FloatingToolbarState;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$m8GiqhB22P3Y7DBb7JxhBMjfz7Q(Landroidx/compose/runtime/saveable/SaverScope;Landroidx/compose/material3/FloatingToolbarState;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/material3/FloatingToolbarState$Companion;->Saver$lambda$0(Landroidx/compose/runtime/saveable/SaverScope;Landroidx/compose/material3/FloatingToolbarState;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/material3/FloatingToolbarState$Companion;

    invoke-direct {v0}, Landroidx/compose/material3/FloatingToolbarState$Companion;-><init>()V

    sput-object v0, Landroidx/compose/material3/FloatingToolbarState$Companion;->$$INSTANCE:Landroidx/compose/material3/FloatingToolbarState$Companion;

    .line 1432
    new-instance v0, Landroidx/compose/material3/FloatingToolbarState$Companion$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroidx/compose/material3/FloatingToolbarState$Companion$$ExternalSyntheticLambda0;-><init>()V

    new-instance v1, Landroidx/compose/material3/FloatingToolbarState$Companion$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroidx/compose/material3/FloatingToolbarState$Companion$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v0, v1}, Landroidx/compose/runtime/saveable/ListSaverKt;->listSaver(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/saveable/Saver;

    move-result-object v0

    sput-object v0, Landroidx/compose/material3/FloatingToolbarState$Companion;->Saver:Landroidx/compose/runtime/saveable/Saver;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1429
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final Saver$lambda$0(Landroidx/compose/runtime/saveable/SaverScope;Landroidx/compose/material3/FloatingToolbarState;)Ljava/util/List;
    .locals 2

    const/4 p0, 0x3

    .line 1433
    new-array p0, p0, [Ljava/lang/Float;

    invoke-interface {p1}, Landroidx/compose/material3/FloatingToolbarState;->getOffsetLimit()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p0, v1

    invoke-interface {p1}, Landroidx/compose/material3/FloatingToolbarState;->getOffset()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p0, v1

    invoke-interface {p1}, Landroidx/compose/material3/FloatingToolbarState;->getContentOffset()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 v0, 0x2

    aput-object p1, p0, v0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static final Saver$lambda$1(Ljava/util/List;)Landroidx/compose/material3/FloatingToolbarState;
    .locals 3

    const/4 v0, 0x0

    .line 1436
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    const/4 v1, 0x1

    .line 1437
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    const/4 v2, 0x2

    .line 1438
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    .line 1435
    invoke-static {v0, v1, p0}, Landroidx/compose/material3/FloatingToolbarKt;->FloatingToolbarState(FFF)Landroidx/compose/material3/FloatingToolbarState;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getSaver$material3()Landroidx/compose/runtime/saveable/Saver;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/runtime/saveable/Saver<",
            "Landroidx/compose/material3/FloatingToolbarState;",
            "*>;"
        }
    .end annotation

    .line 1431
    sget-object v0, Landroidx/compose/material3/FloatingToolbarState$Companion;->Saver:Landroidx/compose/runtime/saveable/Saver;

    return-object v0
.end method
