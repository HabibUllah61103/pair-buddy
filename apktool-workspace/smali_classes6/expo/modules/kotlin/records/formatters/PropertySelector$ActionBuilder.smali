.class public Lexpo/modules/kotlin/records/formatters/PropertySelector$ActionBuilder;
.super Ljava/lang/Object;
.source "PropertySelector.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexpo/modules/kotlin/records/formatters/PropertySelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ActionBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<InputType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0096\u0004\u0018\u0000*\u0004\u0008\u0002\u0010\u00012\u00020\u0002B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004Jf\u0010\u0005\u001a\u0018\u0012\u0004\u0012\u0002H\u00060\u0000R\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0007\"\u0004\u0008\u0003\u0010\u0006\"\u0004\u0008\u0004\u0010\u00082\u001e\u0008\u0002\u0010\t\u001a\u0018\u0012\u0004\u0012\u0002H\u00060\u0000R\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00072\u001a\u0010\u0005\u001a\u0016\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00020\nH\u0002J8\u0010\u000b\u001a\u0018\u0012\u0004\u0012\u00028\u00020\u0000R\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00072\u0018\u0010\u000c\u001a\u0014\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00020\r0\nH\u0002J6\u0010\u000e\u001a\u0018\u0012\u0004\u0012\u00028\u00020\u0000R\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0007\"\u0004\u0008\u0003\u0010\u000f2\u0012\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u0002H\u000f0\u0011J<\u0010\u000e\u001a\u0018\u0012\u0004\u0012\u00028\u00020\u0000R\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0007\"\u0004\u0008\u0003\u0010\u000f2\u0018\u0010\u0010\u001a\u0014\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u0002H\u000f0\nJA\u0010\u0012\u001a\u0018\u0012\u0004\u0012\u00028\u00020\u0000R\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00072#\u0008\u0002\u0010\u0013\u001a\u001d\u0012\u0013\u0012\u00118\u0002\u00a2\u0006\u000c\u0008\u0014\u0012\u0008\u0008\u0015\u0012\u0004\u0008\u0008(\u0016\u0012\u0004\u0012\u00020\r0\u0011J*\u0010\u0012\u001a\u0018\u0012\u0004\u0012\u00028\u00020\u0000R\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00072\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00028\u00020\u0017JT\u0010\u0012\u001a\u0018\u0012\u0004\u0012\u00028\u00020\u0000R\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u000726\u0010\u0013\u001a2\u0012\u0013\u0012\u00118\u0000\u00a2\u0006\u000c\u0008\u0014\u0012\u0008\u0008\u0015\u0012\u0004\u0008\u0008(\u0018\u0012\u0013\u0012\u00118\u0002\u00a2\u0006\u000c\u0008\u0014\u0012\u0008\u0008\u0015\u0012\u0004\u0008\u0008(\u0016\u0012\u0004\u0012\u00020\r0\n\u00a8\u0006\u0019"
    }
    d2 = {
        "Lexpo/modules/kotlin/records/formatters/PropertySelector$ActionBuilder;",
        "InputType",
        "",
        "<init>",
        "(Lexpo/modules/kotlin/records/formatters/PropertySelector;)V",
        "nextAction",
        "T",
        "Lexpo/modules/kotlin/records/formatters/PropertySelector;",
        "R",
        "nextBuilder",
        "Lkotlin/Function2;",
        "defaultSkipAction",
        "shouldSkip",
        "",
        "map",
        "ResultType",
        "mapper",
        "Lkotlin/Function1;",
        "skip",
        "valueSelector",
        "Lkotlin/ParameterName;",
        "name",
        "value",
        "Lexpo/modules/kotlin/records/formatters/ValueSelector;",
        "record",
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
.method public static synthetic $r8$lambda$2k_s_bu6rI8kemxQaYlf7ddvseI(Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0}, Lexpo/modules/kotlin/records/formatters/PropertySelector$ActionBuilder;->skip$lambda$4(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$9h-YLWugto1L_dHOZyTgy23AVII(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lexpo/modules/kotlin/records/Record;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lexpo/modules/kotlin/records/formatters/PropertySelector$ActionBuilder;->nextAction$lambda$0(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lexpo/modules/kotlin/records/Record;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ARmlaLO3JDDLFkJsFVMWMpI8geg(Lkotlin/jvm/functions/Function2;Lexpo/modules/kotlin/records/Record;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2}, Lexpo/modules/kotlin/records/formatters/PropertySelector$ActionBuilder;->map$lambda$3(Lkotlin/jvm/functions/Function2;Lexpo/modules/kotlin/records/Record;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$F5xUpZAyawhAsFqfJWj9KSlXxCY(Lexpo/modules/kotlin/records/formatters/ValueSelector;Lexpo/modules/kotlin/records/Record;Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lexpo/modules/kotlin/records/formatters/PropertySelector$ActionBuilder;->skip$lambda$6(Lexpo/modules/kotlin/records/formatters/ValueSelector;Lexpo/modules/kotlin/records/Record;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$RWdyRQ60iKEgo6rQlQno27_GXts(Lkotlin/jvm/functions/Function2;Lexpo/modules/kotlin/records/Record;Ljava/lang/Object;)Lexpo/modules/kotlin/records/formatters/ValueOrSkip;
    .locals 0

    invoke-static {p0, p1, p2}, Lexpo/modules/kotlin/records/formatters/PropertySelector$ActionBuilder;->defaultSkipAction$lambda$1(Lkotlin/jvm/functions/Function2;Lexpo/modules/kotlin/records/Record;Ljava/lang/Object;)Lexpo/modules/kotlin/records/formatters/ValueOrSkip;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$RwdiiKorG66C07vqIImEGqxZA6I(Lkotlin/jvm/functions/Function1;Lexpo/modules/kotlin/records/Record;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2}, Lexpo/modules/kotlin/records/formatters/PropertySelector$ActionBuilder;->map$lambda$2(Lkotlin/jvm/functions/Function1;Lexpo/modules/kotlin/records/Record;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$TRKnM_RAigtWUJ9FkxesAHIz_Jw(Lkotlin/jvm/functions/Function2;Lexpo/modules/kotlin/records/Record;Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lexpo/modules/kotlin/records/formatters/PropertySelector$ActionBuilder;->skip$lambda$7(Lkotlin/jvm/functions/Function2;Lexpo/modules/kotlin/records/Record;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$s0ltnk-5rkFCfgDU6y8T_cLWPlI(Lkotlin/jvm/functions/Function1;Lexpo/modules/kotlin/records/Record;Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lexpo/modules/kotlin/records/formatters/PropertySelector$ActionBuilder;->skip$lambda$5(Lkotlin/jvm/functions/Function1;Lexpo/modules/kotlin/records/Record;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lexpo/modules/kotlin/records/formatters/PropertySelector;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 11
    iput-object p1, p0, Lexpo/modules/kotlin/records/formatters/PropertySelector$ActionBuilder;->this$0:Lexpo/modules/kotlin/records/formatters/PropertySelector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final defaultSkipAction(Lkotlin/jvm/functions/Function2;)Lexpo/modules/kotlin/records/formatters/PropertySelector$ActionBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-TRecordType;-TInputType;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lexpo/modules/kotlin/records/formatters/PropertySelector<",
            "TRecordType;TPropertyType;>.ActionBuilder<TInputType;>;"
        }
    .end annotation

    .line 44
    new-instance v0, Lexpo/modules/kotlin/records/formatters/PropertySelector$ActionBuilder$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lexpo/modules/kotlin/records/formatters/PropertySelector$ActionBuilder$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/functions/Function2;)V

    .line 52
    new-instance p1, Lexpo/modules/kotlin/records/formatters/PropertySelector$ActionBuilder;

    iget-object v1, p0, Lexpo/modules/kotlin/records/formatters/PropertySelector$ActionBuilder;->this$0:Lexpo/modules/kotlin/records/formatters/PropertySelector;

    invoke-direct {p1, v1}, Lexpo/modules/kotlin/records/formatters/PropertySelector$ActionBuilder;-><init>(Lexpo/modules/kotlin/records/formatters/PropertySelector;)V

    .line 53
    invoke-direct {p0, p1, v0}, Lexpo/modules/kotlin/records/formatters/PropertySelector$ActionBuilder;->nextAction(Lexpo/modules/kotlin/records/formatters/PropertySelector$ActionBuilder;Lkotlin/jvm/functions/Function2;)Lexpo/modules/kotlin/records/formatters/PropertySelector$ActionBuilder;

    move-result-object p1

    return-object p1
.end method

.method private static final defaultSkipAction$lambda$1(Lkotlin/jvm/functions/Function2;Lexpo/modules/kotlin/records/Record;Ljava/lang/Object;)Lexpo/modules/kotlin/records/formatters/ValueOrSkip;
    .locals 1

    const-string v0, "record"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-interface {p0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 46
    sget-object p0, Lexpo/modules/kotlin/records/formatters/ValueOrSkip$Skip;->INSTANCE:Lexpo/modules/kotlin/records/formatters/ValueOrSkip$Skip;

    check-cast p0, Lexpo/modules/kotlin/records/formatters/ValueOrSkip;

    return-object p0

    .line 48
    :cond_0
    new-instance p0, Lexpo/modules/kotlin/records/formatters/ValueOrSkip$Value;

    invoke-direct {p0, p2}, Lexpo/modules/kotlin/records/formatters/ValueOrSkip$Value;-><init>(Ljava/lang/Object;)V

    check-cast p0, Lexpo/modules/kotlin/records/formatters/ValueOrSkip;

    return-object p0
.end method

.method private static final map$lambda$2(Lkotlin/jvm/functions/Function1;Lexpo/modules/kotlin/records/Record;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const-string v0, "<unused var>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-interface {p0, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static final map$lambda$3(Lkotlin/jvm/functions/Function2;Lexpo/modules/kotlin/records/Record;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const-string v0, "record"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-interface {p0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final nextAction(Lexpo/modules/kotlin/records/formatters/PropertySelector$ActionBuilder;Lkotlin/jvm/functions/Function2;)Lexpo/modules/kotlin/records/formatters/PropertySelector$ActionBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lexpo/modules/kotlin/records/formatters/PropertySelector<",
            "TRecordType;TPropertyType;>.ActionBuilder<TT;>;",
            "Lkotlin/jvm/functions/Function2<",
            "-TRecordType;-TInputType;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lexpo/modules/kotlin/records/formatters/PropertySelector<",
            "TRecordType;TPropertyType;>.ActionBuilder<TT;>;"
        }
    .end annotation

    .line 17
    const-string v0, "null cannot be cast to non-null type kotlin.Function2<RecordType of expo.modules.kotlin.records.formatters.PropertySelector, kotlin.Any?, kotlin.Any?>"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/TypeIntrinsics;->beforeCheckcastToFunctionOfArity(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lkotlin/jvm/functions/Function2;

    .line 19
    iget-object v0, p0, Lexpo/modules/kotlin/records/formatters/PropertySelector$ActionBuilder;->this$0:Lexpo/modules/kotlin/records/formatters/PropertySelector;

    invoke-virtual {v0}, Lexpo/modules/kotlin/records/formatters/PropertySelector;->getAction$expo_modules_core_release()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    .line 20
    iget-object v1, p0, Lexpo/modules/kotlin/records/formatters/PropertySelector$ActionBuilder;->this$0:Lexpo/modules/kotlin/records/formatters/PropertySelector;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Lexpo/modules/kotlin/records/formatters/PropertySelector$ActionBuilder$$ExternalSyntheticLambda7;

    invoke-direct {v2, v0, p2}, Lexpo/modules/kotlin/records/formatters/PropertySelector$ActionBuilder$$ExternalSyntheticLambda7;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)V

    move-object p2, v2

    :goto_0
    invoke-virtual {v1, p2}, Lexpo/modules/kotlin/records/formatters/PropertySelector;->setAction$expo_modules_core_release(Lkotlin/jvm/functions/Function2;)V

    return-object p1
.end method

.method static synthetic nextAction$default(Lexpo/modules/kotlin/records/formatters/PropertySelector$ActionBuilder;Lexpo/modules/kotlin/records/formatters/PropertySelector$ActionBuilder;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lexpo/modules/kotlin/records/formatters/PropertySelector$ActionBuilder;
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    .line 13
    new-instance p1, Lexpo/modules/kotlin/records/formatters/PropertySelector$ActionBuilder;

    iget-object p3, p0, Lexpo/modules/kotlin/records/formatters/PropertySelector$ActionBuilder;->this$0:Lexpo/modules/kotlin/records/formatters/PropertySelector;

    invoke-direct {p1, p3}, Lexpo/modules/kotlin/records/formatters/PropertySelector$ActionBuilder;-><init>(Lexpo/modules/kotlin/records/formatters/PropertySelector;)V

    .line 12
    :cond_0
    invoke-direct {p0, p1, p2}, Lexpo/modules/kotlin/records/formatters/PropertySelector$ActionBuilder;->nextAction(Lexpo/modules/kotlin/records/formatters/PropertySelector$ActionBuilder;Lkotlin/jvm/functions/Function2;)Lexpo/modules/kotlin/records/formatters/PropertySelector$ActionBuilder;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: nextAction"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static final nextAction$lambda$0(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lexpo/modules/kotlin/records/Record;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const-string v0, "record"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-interface {p0, p2, p3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 26
    instance-of p3, p0, Lexpo/modules/kotlin/records/formatters/ValueOrSkip;

    if-eqz p3, :cond_2

    .line 27
    move-object p3, p0

    check-cast p3, Lexpo/modules/kotlin/records/formatters/ValueOrSkip;

    .line 28
    instance-of v0, p3, Lexpo/modules/kotlin/records/formatters/ValueOrSkip$Value;

    if-eqz v0, :cond_0

    check-cast p0, Lexpo/modules/kotlin/records/formatters/ValueOrSkip$Value;

    invoke-virtual {p0}, Lexpo/modules/kotlin/records/formatters/ValueOrSkip$Value;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1, p2, p0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 29
    :cond_0
    sget-object p0, Lexpo/modules/kotlin/records/formatters/ValueOrSkip$Skip;->INSTANCE:Lexpo/modules/kotlin/records/formatters/ValueOrSkip$Skip;

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lexpo/modules/kotlin/records/formatters/ValueOrSkip$Skip;->INSTANCE:Lexpo/modules/kotlin/records/formatters/ValueOrSkip$Skip;

    return-object p0

    .line 27
    :cond_1
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    .line 32
    :cond_2
    invoke-interface {p1, p2, p0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic skip$default(Lexpo/modules/kotlin/records/formatters/PropertySelector$ActionBuilder;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lexpo/modules/kotlin/records/formatters/PropertySelector$ActionBuilder;
    .locals 0

    if-nez p3, :cond_1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 62
    new-instance p1, Lexpo/modules/kotlin/records/formatters/PropertySelector$ActionBuilder$$ExternalSyntheticLambda2;

    invoke-direct {p1}, Lexpo/modules/kotlin/records/formatters/PropertySelector$ActionBuilder$$ExternalSyntheticLambda2;-><init>()V

    :cond_0
    invoke-virtual {p0, p1}, Lexpo/modules/kotlin/records/formatters/PropertySelector$ActionBuilder;->skip(Lkotlin/jvm/functions/Function1;)Lexpo/modules/kotlin/records/formatters/PropertySelector$ActionBuilder;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: skip"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static final skip$lambda$4(Ljava/lang/Object;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private static final skip$lambda$5(Lkotlin/jvm/functions/Function1;Lexpo/modules/kotlin/records/Record;Ljava/lang/Object;)Z
    .locals 1

    const-string v0, "<unused var>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    invoke-interface {p0, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static final skip$lambda$6(Lexpo/modules/kotlin/records/formatters/ValueSelector;Lexpo/modules/kotlin/records/Record;Ljava/lang/Object;)Z
    .locals 1

    const-string v0, "<unused var>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    invoke-interface {p0, p2}, Lexpo/modules/kotlin/records/formatters/ValueSelector;->invoke(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static final skip$lambda$7(Lkotlin/jvm/functions/Function2;Lexpo/modules/kotlin/records/Record;Ljava/lang/Object;)Z
    .locals 1

    const-string v0, "record"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    invoke-interface {p0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final map(Lkotlin/jvm/functions/Function1;)Lexpo/modules/kotlin/records/formatters/PropertySelector$ActionBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResultType:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function1<",
            "-TInputType;+TResultType;>;)",
            "Lexpo/modules/kotlin/records/formatters/PropertySelector<",
            "TRecordType;TPropertyType;>.ActionBuilder<TInputType;>;"
        }
    .end annotation

    const-string v0, "mapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    new-instance v0, Lexpo/modules/kotlin/records/formatters/PropertySelector$ActionBuilder$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1}, Lexpo/modules/kotlin/records/formatters/PropertySelector$ActionBuilder$$ExternalSyntheticLambda4;-><init>(Lkotlin/jvm/functions/Function1;)V

    const/4 p1, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1, v1}, Lexpo/modules/kotlin/records/formatters/PropertySelector$ActionBuilder;->nextAction$default(Lexpo/modules/kotlin/records/formatters/PropertySelector$ActionBuilder;Lexpo/modules/kotlin/records/formatters/PropertySelector$ActionBuilder;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lexpo/modules/kotlin/records/formatters/PropertySelector$ActionBuilder;

    move-result-object p1

    return-object p1
.end method

.method public final map(Lkotlin/jvm/functions/Function2;)Lexpo/modules/kotlin/records/formatters/PropertySelector$ActionBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResultType:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function2<",
            "-TRecordType;-TInputType;+TResultType;>;)",
            "Lexpo/modules/kotlin/records/formatters/PropertySelector<",
            "TRecordType;TPropertyType;>.ActionBuilder<TInputType;>;"
        }
    .end annotation

    const-string v0, "mapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    new-instance v0, Lexpo/modules/kotlin/records/formatters/PropertySelector$ActionBuilder$$ExternalSyntheticLambda5;

    invoke-direct {v0, p1}, Lexpo/modules/kotlin/records/formatters/PropertySelector$ActionBuilder$$ExternalSyntheticLambda5;-><init>(Lkotlin/jvm/functions/Function2;)V

    const/4 p1, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1, v1}, Lexpo/modules/kotlin/records/formatters/PropertySelector$ActionBuilder;->nextAction$default(Lexpo/modules/kotlin/records/formatters/PropertySelector$ActionBuilder;Lexpo/modules/kotlin/records/formatters/PropertySelector$ActionBuilder;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lexpo/modules/kotlin/records/formatters/PropertySelector$ActionBuilder;

    move-result-object p1

    return-object p1
.end method

.method public final skip(Lexpo/modules/kotlin/records/formatters/ValueSelector;)Lexpo/modules/kotlin/records/formatters/PropertySelector$ActionBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexpo/modules/kotlin/records/formatters/ValueSelector<",
            "TInputType;>;)",
            "Lexpo/modules/kotlin/records/formatters/PropertySelector<",
            "TRecordType;TPropertyType;>.ActionBuilder<TInputType;>;"
        }
    .end annotation

    const-string v0, "valueSelector"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    new-instance v0, Lexpo/modules/kotlin/records/formatters/PropertySelector$ActionBuilder$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1}, Lexpo/modules/kotlin/records/formatters/PropertySelector$ActionBuilder$$ExternalSyntheticLambda3;-><init>(Lexpo/modules/kotlin/records/formatters/ValueSelector;)V

    invoke-direct {p0, v0}, Lexpo/modules/kotlin/records/formatters/PropertySelector$ActionBuilder;->defaultSkipAction(Lkotlin/jvm/functions/Function2;)Lexpo/modules/kotlin/records/formatters/PropertySelector$ActionBuilder;

    move-result-object p1

    return-object p1
.end method

.method public final skip(Lkotlin/jvm/functions/Function1;)Lexpo/modules/kotlin/records/formatters/PropertySelector$ActionBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-TInputType;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lexpo/modules/kotlin/records/formatters/PropertySelector<",
            "TRecordType;TPropertyType;>.ActionBuilder<TInputType;>;"
        }
    .end annotation

    const-string v0, "valueSelector"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    new-instance v0, Lexpo/modules/kotlin/records/formatters/PropertySelector$ActionBuilder$$ExternalSyntheticLambda6;

    invoke-direct {v0, p1}, Lexpo/modules/kotlin/records/formatters/PropertySelector$ActionBuilder$$ExternalSyntheticLambda6;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-direct {p0, v0}, Lexpo/modules/kotlin/records/formatters/PropertySelector$ActionBuilder;->defaultSkipAction(Lkotlin/jvm/functions/Function2;)Lexpo/modules/kotlin/records/formatters/PropertySelector$ActionBuilder;

    move-result-object p1

    return-object p1
.end method

.method public final skip(Lkotlin/jvm/functions/Function2;)Lexpo/modules/kotlin/records/formatters/PropertySelector$ActionBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-TRecordType;-TInputType;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lexpo/modules/kotlin/records/formatters/PropertySelector<",
            "TRecordType;TPropertyType;>.ActionBuilder<TInputType;>;"
        }
    .end annotation

    const-string v0, "valueSelector"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    new-instance v0, Lexpo/modules/kotlin/records/formatters/PropertySelector$ActionBuilder$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lexpo/modules/kotlin/records/formatters/PropertySelector$ActionBuilder$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function2;)V

    invoke-direct {p0, v0}, Lexpo/modules/kotlin/records/formatters/PropertySelector$ActionBuilder;->defaultSkipAction(Lkotlin/jvm/functions/Function2;)Lexpo/modules/kotlin/records/formatters/PropertySelector$ActionBuilder;

    move-result-object p1

    return-object p1
.end method
