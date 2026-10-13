.class public final Lexpo/modules/kotlin/records/formatters/RecordExtensionKt;
.super Ljava/lang/Object;
.source "RecordExtension.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a-\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0008\u0008\u0000\u0010\u0002*\u00020\u0003*\u0002H\u00022\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0005\u00a2\u0006\u0002\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "format",
        "Lexpo/modules/kotlin/records/formatters/FormattedRecord;",
        "R",
        "Lexpo/modules/kotlin/records/Record;",
        "formatter",
        "Lexpo/modules/kotlin/records/formatters/Formatter;",
        "(Lexpo/modules/kotlin/records/Record;Lexpo/modules/kotlin/records/formatters/Formatter;)Lexpo/modules/kotlin/records/formatters/FormattedRecord;",
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
.method public static final format(Lexpo/modules/kotlin/records/Record;Lexpo/modules/kotlin/records/formatters/Formatter;)Lexpo/modules/kotlin/records/formatters/FormattedRecord;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Lexpo/modules/kotlin/records/Record;",
            ">(TR;",
            "Lexpo/modules/kotlin/records/formatters/Formatter<",
            "TR;>;)",
            "Lexpo/modules/kotlin/records/formatters/FormattedRecord<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "formatter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance v0, Lexpo/modules/kotlin/records/formatters/FormattedRecord;

    invoke-direct {v0, p0, p1}, Lexpo/modules/kotlin/records/formatters/FormattedRecord;-><init>(Lexpo/modules/kotlin/records/Record;Lexpo/modules/kotlin/records/formatters/Formatter;)V

    return-object v0
.end method
