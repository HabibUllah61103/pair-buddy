.class public final Lexpo/modules/kotlin/records/formatters/Formatter;
.super Ljava/lang/Object;
.source "Formatter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/kotlin/records/formatters/Formatter$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<RecordType::",
        "Lexpo/modules/kotlin/records/Record;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFormatter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Formatter.kt\nexpo/modules/kotlin/records/formatters/Formatter\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,51:1\n1#2:52\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u0000*\u0008\u0008\u0000\u0010\u0001*\u00020\u00022\u00020\u0003:\u0001\u0015B\u001f\u0012\u0016\u0010\u0004\u001a\u0012\u0012\u000e\u0012\u000c\u0012\u0004\u0012\u00028\u0000\u0012\u0002\u0008\u00030\u00060\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u001c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u000c2\u0006\u0010\r\u001a\u00028\u0000H\u0086\u0002\u00a2\u0006\u0002\u0010\u000eJ\u0019\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u000c2\u0006\u0010\r\u001a\u00028\u0000\u00a2\u0006\u0002\u0010\u000eJ7\u0010\u0010\u001a\u001a\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0018\u00010\u00112\u0010\u0010\u0012\u001a\u000c\u0012\u0004\u0012\u00020\u0002\u0012\u0002\u0008\u00030\u0013H\u0000\u00a2\u0006\u0002\u0008\u0014R$\u0010\u0004\u001a\u0012\u0012\u000e\u0012\u000c\u0012\u0004\u0012\u00028\u0000\u0012\u0002\u0008\u00030\u00060\u0005X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u0016"
    }
    d2 = {
        "Lexpo/modules/kotlin/records/formatters/Formatter;",
        "RecordType",
        "Lexpo/modules/kotlin/records/Record;",
        "",
        "selectors",
        "",
        "Lexpo/modules/kotlin/records/formatters/PropertySelector;",
        "<init>",
        "(Ljava/util/List;)V",
        "getSelectors$expo_modules_core_release",
        "()Ljava/util/List;",
        "invoke",
        "Lexpo/modules/kotlin/records/formatters/FormattedRecord;",
        "record",
        "(Lexpo/modules/kotlin/records/Record;)Lexpo/modules/kotlin/records/formatters/FormattedRecord;",
        "format",
        "getAction",
        "Lkotlin/Function2;",
        "property",
        "Lkotlin/reflect/KProperty1;",
        "getAction$expo_modules_core_release",
        "Builder",
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
.field public static final $stable:I = 0x8


# instance fields
.field private final selectors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lexpo/modules/kotlin/records/formatters/PropertySelector<",
            "TRecordType;*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lexpo/modules/kotlin/records/formatters/PropertySelector<",
            "TRecordType;*>;>;)V"
        }
    .end annotation

    const-string v0, "selectors"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lexpo/modules/kotlin/records/formatters/Formatter;->selectors:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final format(Lexpo/modules/kotlin/records/Record;)Lexpo/modules/kotlin/records/formatters/FormattedRecord;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TRecordType;)",
            "Lexpo/modules/kotlin/records/formatters/FormattedRecord<",
            "TRecordType;>;"
        }
    .end annotation

    const-string v0, "record"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    new-instance v0, Lexpo/modules/kotlin/records/formatters/FormattedRecord;

    invoke-direct {v0, p1, p0}, Lexpo/modules/kotlin/records/formatters/FormattedRecord;-><init>(Lexpo/modules/kotlin/records/Record;Lexpo/modules/kotlin/records/formatters/Formatter;)V

    return-object v0
.end method

.method public final getAction$expo_modules_core_release(Lkotlin/reflect/KProperty1;)Lkotlin/jvm/functions/Function2;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/KProperty1<",
            "Lexpo/modules/kotlin/records/Record;",
            "*>;)",
            "Lkotlin/jvm/functions/Function2<",
            "Lexpo/modules/kotlin/records/Record;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lexpo/modules/kotlin/records/formatters/Formatter;->selectors:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lexpo/modules/kotlin/records/formatters/PropertySelector;

    invoke-virtual {v3}, Lexpo/modules/kotlin/records/formatters/PropertySelector;->getSelector$expo_modules_core_release()Lkotlin/jvm/functions/Function1;

    move-result-object v3

    invoke-interface {v3, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    check-cast v1, Lexpo/modules/kotlin/records/formatters/PropertySelector;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lexpo/modules/kotlin/records/formatters/PropertySelector;->getAction$expo_modules_core_release()Lkotlin/jvm/functions/Function2;

    move-result-object v2

    :cond_2
    const/4 p1, 0x2

    invoke-static {v2, p1}, Lkotlin/jvm/internal/TypeIntrinsics;->beforeCheckcastToFunctionOfArity(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/jvm/functions/Function2;

    return-object p1
.end method

.method public final getSelectors$expo_modules_core_release()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lexpo/modules/kotlin/records/formatters/PropertySelector<",
            "TRecordType;*>;>;"
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lexpo/modules/kotlin/records/formatters/Formatter;->selectors:Ljava/util/List;

    return-object v0
.end method

.method public final invoke(Lexpo/modules/kotlin/records/Record;)Lexpo/modules/kotlin/records/formatters/FormattedRecord;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TRecordType;)",
            "Lexpo/modules/kotlin/records/formatters/FormattedRecord<",
            "TRecordType;>;"
        }
    .end annotation

    const-string v0, "record"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    new-instance v0, Lexpo/modules/kotlin/records/formatters/FormattedRecord;

    invoke-direct {v0, p1, p0}, Lexpo/modules/kotlin/records/formatters/FormattedRecord;-><init>(Lexpo/modules/kotlin/records/Record;Lexpo/modules/kotlin/records/formatters/Formatter;)V

    return-object v0
.end method
