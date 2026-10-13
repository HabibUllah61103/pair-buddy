.class public final Lexpo/modules/kotlin/records/formatters/FormatterKt;
.super Ljava/lang/Object;
.source "Formatter.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u001a7\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0008\u0008\u0000\u0010\u0002*\u00020\u00032\u001f\u0008\u0001\u0010\u0004\u001a\u0019\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005\u00a2\u0006\u0002\u0008\u0008\u00a8\u0006\t"
    }
    d2 = {
        "formatter",
        "Lexpo/modules/kotlin/records/formatters/Formatter;",
        "RecordType",
        "Lexpo/modules/kotlin/records/Record;",
        "body",
        "Lkotlin/Function1;",
        "Lexpo/modules/kotlin/records/formatters/Formatter$Builder;",
        "",
        "Lkotlin/ExtensionFunctionType;",
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
.method public static final formatter(Lkotlin/jvm/functions/Function1;)Lexpo/modules/kotlin/records/formatters/Formatter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<RecordType::",
            "Lexpo/modules/kotlin/records/Record;",
            ">(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lexpo/modules/kotlin/records/formatters/Formatter$Builder<",
            "TRecordType;>;",
            "Lkotlin/Unit;",
            ">;)",
            "Lexpo/modules/kotlin/records/formatters/Formatter<",
            "TRecordType;>;"
        }
    .end annotation

    const-string v0, "body"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    new-instance v0, Lexpo/modules/kotlin/records/formatters/Formatter$Builder;

    invoke-direct {v0}, Lexpo/modules/kotlin/records/formatters/Formatter$Builder;-><init>()V

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lexpo/modules/kotlin/records/formatters/Formatter$Builder;->build$expo_modules_core_release()Lexpo/modules/kotlin/records/formatters/Formatter;

    move-result-object p0

    return-object p0
.end method
