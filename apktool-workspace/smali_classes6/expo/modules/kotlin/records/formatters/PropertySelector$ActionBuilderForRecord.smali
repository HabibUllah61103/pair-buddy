.class public final Lexpo/modules/kotlin/records/formatters/PropertySelector$ActionBuilderForRecord;
.super Lexpo/modules/kotlin/records/formatters/PropertySelector$ActionBuilder;
.source "PropertySelector.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexpo/modules/kotlin/records/formatters/PropertySelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ActionBuilderForRecord"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<InputType::",
        "Lexpo/modules/kotlin/records/Record;",
        ">",
        "Lexpo/modules/kotlin/records/formatters/PropertySelector<",
        "TRecordType;TPropertyType;>.ActionBuilder<TInputType;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0004\u0018\u0000*\u0008\u0008\u0002\u0010\u0001*\u00020\u00022\u0018\u0012\u0004\u0012\u0002H\u00010\u0003R\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0004B\u0007\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J*\u0010\u0007\u001a\u0018\u0012\u0004\u0012\u00028\u00020\u0003R\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00042\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00028\u00020\tJ;\u0010\u0007\u001a\u0018\u0012\u0004\u0012\u00028\u00020\u0003R\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00042\u001d\u0010\n\u001a\u0019\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00020\u000c\u0012\u0004\u0012\u00020\r0\u000b\u00a2\u0006\u0002\u0008\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Lexpo/modules/kotlin/records/formatters/PropertySelector$ActionBuilderForRecord;",
        "InputType",
        "Lexpo/modules/kotlin/records/Record;",
        "Lexpo/modules/kotlin/records/formatters/PropertySelector$ActionBuilder;",
        "Lexpo/modules/kotlin/records/formatters/PropertySelector;",
        "<init>",
        "(Lexpo/modules/kotlin/records/formatters/PropertySelector;)V",
        "format",
        "formatter",
        "Lexpo/modules/kotlin/records/formatters/Formatter;",
        "builder",
        "Lkotlin/Function1;",
        "Lexpo/modules/kotlin/records/formatters/Formatter$Builder;",
        "",
        "Lkotlin/ExtensionFunctionType;",
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


# instance fields
.field final synthetic this$0:Lexpo/modules/kotlin/records/formatters/PropertySelector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lexpo/modules/kotlin/records/formatters/PropertySelector<",
            "TRecordType;TPropertyType;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$8qgmWuZPu3K-Zz9sGMb4Cwf2qEw(Lexpo/modules/kotlin/records/formatters/Formatter;Lexpo/modules/kotlin/records/Record;)Lexpo/modules/kotlin/records/formatters/FormattedRecord;
    .locals 0

    invoke-static {p0, p1}, Lexpo/modules/kotlin/records/formatters/PropertySelector$ActionBuilderForRecord;->format$lambda$0(Lexpo/modules/kotlin/records/formatters/Formatter;Lexpo/modules/kotlin/records/Record;)Lexpo/modules/kotlin/records/formatters/FormattedRecord;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$pbO7Fsv_g-PfIw2OblSMZ-vnc1Y(Lkotlin/jvm/functions/Function1;Lexpo/modules/kotlin/records/Record;)Lexpo/modules/kotlin/records/formatters/FormattedRecord;
    .locals 0

    invoke-static {p0, p1}, Lexpo/modules/kotlin/records/formatters/PropertySelector$ActionBuilderForRecord;->format$lambda$1(Lkotlin/jvm/functions/Function1;Lexpo/modules/kotlin/records/Record;)Lexpo/modules/kotlin/records/formatters/FormattedRecord;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lexpo/modules/kotlin/records/formatters/PropertySelector;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 72
    iput-object p1, p0, Lexpo/modules/kotlin/records/formatters/PropertySelector$ActionBuilderForRecord;->this$0:Lexpo/modules/kotlin/records/formatters/PropertySelector;

    invoke-direct {p0, p1}, Lexpo/modules/kotlin/records/formatters/PropertySelector$ActionBuilder;-><init>(Lexpo/modules/kotlin/records/formatters/PropertySelector;)V

    return-void
.end method

.method private static final format$lambda$0(Lexpo/modules/kotlin/records/formatters/Formatter;Lexpo/modules/kotlin/records/Record;)Lexpo/modules/kotlin/records/formatters/FormattedRecord;
    .locals 1

    const-string v0, "record"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0, p1}, Lexpo/modules/kotlin/records/formatters/Formatter;->format(Lexpo/modules/kotlin/records/Record;)Lexpo/modules/kotlin/records/formatters/FormattedRecord;

    move-result-object p0

    return-object p0
.end method

.method private static final format$lambda$1(Lkotlin/jvm/functions/Function1;Lexpo/modules/kotlin/records/Record;)Lexpo/modules/kotlin/records/formatters/FormattedRecord;
    .locals 1

    const-string v0, "record"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    invoke-static {p0}, Lexpo/modules/kotlin/records/formatters/FormatterKt;->formatter(Lkotlin/jvm/functions/Function1;)Lexpo/modules/kotlin/records/formatters/Formatter;

    move-result-object p0

    invoke-virtual {p0, p1}, Lexpo/modules/kotlin/records/formatters/Formatter;->format(Lexpo/modules/kotlin/records/Record;)Lexpo/modules/kotlin/records/formatters/FormattedRecord;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final format(Lexpo/modules/kotlin/records/formatters/Formatter;)Lexpo/modules/kotlin/records/formatters/PropertySelector$ActionBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexpo/modules/kotlin/records/formatters/Formatter<",
            "TInputType;>;)",
            "Lexpo/modules/kotlin/records/formatters/PropertySelector<",
            "TRecordType;TPropertyType;>.ActionBuilder<TInputType;>;"
        }
    .end annotation

    const-string v0, "formatter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    new-instance v0, Lexpo/modules/kotlin/records/formatters/PropertySelector$ActionBuilderForRecord$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lexpo/modules/kotlin/records/formatters/PropertySelector$ActionBuilderForRecord$$ExternalSyntheticLambda1;-><init>(Lexpo/modules/kotlin/records/formatters/Formatter;)V

    invoke-virtual {p0, v0}, Lexpo/modules/kotlin/records/formatters/PropertySelector$ActionBuilderForRecord;->map(Lkotlin/jvm/functions/Function1;)Lexpo/modules/kotlin/records/formatters/PropertySelector$ActionBuilder;

    move-result-object p1

    return-object p1
.end method

.method public final format(Lkotlin/jvm/functions/Function1;)Lexpo/modules/kotlin/records/formatters/PropertySelector$ActionBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lexpo/modules/kotlin/records/formatters/Formatter$Builder<",
            "TInputType;>;",
            "Lkotlin/Unit;",
            ">;)",
            "Lexpo/modules/kotlin/records/formatters/PropertySelector<",
            "TRecordType;TPropertyType;>.ActionBuilder<TInputType;>;"
        }
    .end annotation

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    new-instance v0, Lexpo/modules/kotlin/records/formatters/PropertySelector$ActionBuilderForRecord$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lexpo/modules/kotlin/records/formatters/PropertySelector$ActionBuilderForRecord$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p0, v0}, Lexpo/modules/kotlin/records/formatters/PropertySelector$ActionBuilderForRecord;->map(Lkotlin/jvm/functions/Function1;)Lexpo/modules/kotlin/records/formatters/PropertySelector$ActionBuilder;

    move-result-object p1

    return-object p1
.end method
