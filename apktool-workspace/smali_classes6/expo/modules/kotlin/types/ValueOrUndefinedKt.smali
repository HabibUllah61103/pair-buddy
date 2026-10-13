.class public final Lexpo/modules/kotlin/types/ValueOrUndefinedKt;
.super Ljava/lang/Object;
.source "ValueOrUndefined.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nValueOrUndefined.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ValueOrUndefined.kt\nexpo/modules/kotlin/types/ValueOrUndefinedKt\n+ 2 ValueOrUndefined.kt\nexpo/modules/kotlin/types/ValueOrUndefined$Companion\n*L\n1#1,46:1\n29#2:47\n*S KotlinDebug\n*F\n+ 1 ValueOrUndefined.kt\nexpo/modules/kotlin/types/ValueOrUndefinedKt\n*L\n43#1:47\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u001aK\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\u0008\u0000\u0010\u0003\"\u0006\u0008\u0001\u0010\u0002\u0018\u0001*\u0008\u0012\u0004\u0012\u0002H\u00030\u00012\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u0002H\u0003\u0012\u0004\u0012\u0002H\u00020\u0005H\u0086\u0008\u00f8\u0001\u0000\u0082\u0002\n\n\u0008\u0008\u0001\u0012\u0002\u0010\u0001 \u0000\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u0006\u0006"
    }
    d2 = {
        "map",
        "Lexpo/modules/kotlin/types/ValueOrUndefined;",
        "R",
        "T",
        "transform",
        "Lkotlin/Function1;",
        "expo-modules-core_release"
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
.method public static final synthetic map(Lexpo/modules/kotlin/types/ValueOrUndefined;Lkotlin/jvm/functions/Function1;)Lexpo/modules/kotlin/types/ValueOrUndefined;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lexpo/modules/kotlin/types/ValueOrUndefined<",
            "TT;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;+TR;>;)",
            "Lexpo/modules/kotlin/types/ValueOrUndefined<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transform"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    instance-of v0, p0, Lexpo/modules/kotlin/types/ValueOrUndefined$Value;

    if-eqz v0, :cond_0

    new-instance v0, Lexpo/modules/kotlin/types/ValueOrUndefined$Value;

    check-cast p0, Lexpo/modules/kotlin/types/ValueOrUndefined$Value;

    invoke-virtual {p0}, Lexpo/modules/kotlin/types/ValueOrUndefined$Value;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, p0}, Lexpo/modules/kotlin/types/ValueOrUndefined$Value;-><init>(Ljava/lang/Object;)V

    check-cast v0, Lexpo/modules/kotlin/types/ValueOrUndefined;

    return-object v0

    .line 43
    :cond_0
    instance-of p0, p0, Lexpo/modules/kotlin/types/ValueOrUndefined$Undefined;

    if-eqz p0, :cond_1

    sget-object p0, Lexpo/modules/kotlin/types/ValueOrUndefined;->Companion:Lexpo/modules/kotlin/types/ValueOrUndefined$Companion;

    .line 47
    sget-object p0, Lexpo/modules/kotlin/types/ValueOrUndefined$Undefined;->INSTANCE:Lexpo/modules/kotlin/types/ValueOrUndefined$Undefined;

    const-string p1, "null cannot be cast to non-null type expo.modules.kotlin.types.ValueOrUndefined<T of expo.modules.kotlin.types.ValueOrUndefined.Companion.getUndefined>"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lexpo/modules/kotlin/types/ValueOrUndefined;

    return-object p0

    .line 41
    :cond_1
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method
