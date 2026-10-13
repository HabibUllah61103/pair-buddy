.class public final Lexpo/modules/kotlin/types/ValueOrUndefined$Companion;
.super Ljava/lang/Object;
.source "ValueOrUndefined.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexpo/modules/kotlin/types/ValueOrUndefined;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nValueOrUndefined.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ValueOrUndefined.kt\nexpo/modules/kotlin/types/ValueOrUndefined$Companion\n*L\n1#1,46:1\n29#1:47\n*S KotlinDebug\n*F\n+ 1 ValueOrUndefined.kt\nexpo/modules/kotlin/types/ValueOrUndefined$Companion\n*L\n32#1:47\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010\u0004\u001a\u00020\u0001H\u0007J\u0017\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u0002H\u00060\u0005\"\u0006\u0008\u0001\u0010\u0006\u0018\u0001H\u0086\u0008J\u0017\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u0002H\u00060\u0005\"\u0006\u0008\u0001\u0010\u0006\u0018\u0001H\u0086\u0008\u00a8\u0006\u0008"
    }
    d2 = {
        "Lexpo/modules/kotlin/types/ValueOrUndefined$Companion;",
        "",
        "<init>",
        "()V",
        "getUndefined",
        "Lexpo/modules/kotlin/types/ValueOrUndefined;",
        "T",
        "Undefined",
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


# static fields
.field static final synthetic $$INSTANCE:Lexpo/modules/kotlin/types/ValueOrUndefined$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lexpo/modules/kotlin/types/ValueOrUndefined$Companion;

    invoke-direct {v0}, Lexpo/modules/kotlin/types/ValueOrUndefined$Companion;-><init>()V

    sput-object v0, Lexpo/modules/kotlin/types/ValueOrUndefined$Companion;->$$INSTANCE:Lexpo/modules/kotlin/types/ValueOrUndefined$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic Undefined()Lexpo/modules/kotlin/types/ValueOrUndefined;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lexpo/modules/kotlin/types/ValueOrUndefined<",
            "TT;>;"
        }
    .end annotation

    .line 47
    sget-object v0, Lexpo/modules/kotlin/types/ValueOrUndefined$Undefined;->INSTANCE:Lexpo/modules/kotlin/types/ValueOrUndefined$Undefined;

    const-string v1, "null cannot be cast to non-null type expo.modules.kotlin.types.ValueOrUndefined<T of expo.modules.kotlin.types.ValueOrUndefined.Companion.getUndefined>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lexpo/modules/kotlin/types/ValueOrUndefined;

    return-object v0
.end method

.method public final synthetic getUndefined()Lexpo/modules/kotlin/types/ValueOrUndefined;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lexpo/modules/kotlin/types/ValueOrUndefined<",
            "TT;>;"
        }
    .end annotation

    .line 29
    sget-object v0, Lexpo/modules/kotlin/types/ValueOrUndefined$Undefined;->INSTANCE:Lexpo/modules/kotlin/types/ValueOrUndefined$Undefined;

    const-string v1, "null cannot be cast to non-null type expo.modules.kotlin.types.ValueOrUndefined<T of expo.modules.kotlin.types.ValueOrUndefined.Companion.getUndefined>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lexpo/modules/kotlin/types/ValueOrUndefined;

    return-object v0
.end method

.method public final getUndefined()Ljava/lang/Object;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 26
    sget-object v0, Lexpo/modules/kotlin/types/ValueOrUndefined$Undefined;->INSTANCE:Lexpo/modules/kotlin/types/ValueOrUndefined$Undefined;

    return-object v0
.end method
