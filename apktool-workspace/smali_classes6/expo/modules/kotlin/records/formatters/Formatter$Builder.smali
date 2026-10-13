.class public final Lexpo/modules/kotlin/records/formatters/Formatter$Builder;
.super Ljava/lang/Object;
.source "Formatter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexpo/modules/kotlin/records/formatters/Formatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<RecordType::",
        "Lexpo/modules/kotlin/records/Record;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u0000*\u0008\u0008\u0001\u0010\u0001*\u00020\u00022\u00020\u0003B\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J6\u0010\r\u001a\u0018\u0012\u0004\u0012\u0002H\u000f0\u000eR\u000e\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u0002H\u000f0\u0008\"\u0004\u0008\u0002\u0010\u000f2\u0012\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u0002H\u000f0\u0011J:\u0010\r\u001a\u0018\u0012\u0004\u0012\u0002H\u000f0\u0012R\u000e\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u0002H\u000f0\u0008\"\u0008\u0008\u0002\u0010\u000f*\u00020\u00022\u0012\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u0002H\u000f0\u0011J\u0013\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u0014H\u0000\u00a2\u0006\u0002\u0008\u0015R*\u0010\u0006\u001a\u0012\u0012\u000e\u0012\u000c\u0012\u0004\u0012\u00028\u0001\u0012\u0002\u0008\u00030\u00080\u0007X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u0016"
    }
    d2 = {
        "Lexpo/modules/kotlin/records/formatters/Formatter$Builder;",
        "RecordType",
        "Lexpo/modules/kotlin/records/Record;",
        "",
        "<init>",
        "()V",
        "selectors",
        "",
        "Lexpo/modules/kotlin/records/formatters/PropertySelector;",
        "getSelectors$expo_modules_core_release",
        "()Ljava/util/List;",
        "setSelectors$expo_modules_core_release",
        "(Ljava/util/List;)V",
        "property",
        "Lexpo/modules/kotlin/records/formatters/PropertySelector$ActionBuilder;",
        "PropertyType",
        "propertyRef",
        "Lkotlin/reflect/KProperty1;",
        "Lexpo/modules/kotlin/records/formatters/PropertySelector$ActionBuilderForRecord;",
        "build",
        "Lexpo/modules/kotlin/records/formatters/Formatter;",
        "build$expo_modules_core_release",
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
.field private selectors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lexpo/modules/kotlin/records/formatters/PropertySelector<",
            "TRecordType;*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$-1-148YEahNs_brkHtNkEmuauUQ(Lkotlin/reflect/KProperty1;Lkotlin/reflect/KProperty1;)Z
    .locals 0

    invoke-static {p0, p1}, Lexpo/modules/kotlin/records/formatters/Formatter$Builder;->property$lambda$0(Lkotlin/reflect/KProperty1;Lkotlin/reflect/KProperty1;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$H5sbqtq3ygnYEHnrNlzmK8xGEJI(Lkotlin/reflect/KProperty1;Lkotlin/reflect/KProperty1;)Z
    .locals 0

    invoke-static {p0, p1}, Lexpo/modules/kotlin/records/formatters/Formatter$Builder;->property$lambda$1(Lkotlin/reflect/KProperty1;Lkotlin/reflect/KProperty1;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lexpo/modules/kotlin/records/formatters/Formatter$Builder;->selectors:Ljava/util/List;

    return-void
.end method

.method private static final property$lambda$0(Lkotlin/reflect/KProperty1;Lkotlin/reflect/KProperty1;)Z
    .locals 1

    const-string v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static final property$lambda$1(Lkotlin/reflect/KProperty1;Lkotlin/reflect/KProperty1;)Z
    .locals 2

    const-string v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-interface {p1}, Lkotlin/reflect/KProperty1;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Lkotlin/reflect/KProperty1;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lkotlin/reflect/KProperty1;->getReturnType()Lkotlin/reflect/KType;

    move-result-object p1

    invoke-interface {p0}, Lkotlin/reflect/KProperty1;->getReturnType()Lkotlin/reflect/KType;

    move-result-object p0

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final build$expo_modules_core_release()Lexpo/modules/kotlin/records/formatters/Formatter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lexpo/modules/kotlin/records/formatters/Formatter<",
            "TRecordType;>;"
        }
    .end annotation

    .line 35
    new-instance v0, Lexpo/modules/kotlin/records/formatters/Formatter;

    iget-object v1, p0, Lexpo/modules/kotlin/records/formatters/Formatter$Builder;->selectors:Ljava/util/List;

    invoke-direct {v0, v1}, Lexpo/modules/kotlin/records/formatters/Formatter;-><init>(Ljava/util/List;)V

    return-object v0
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

    .line 13
    iget-object v0, p0, Lexpo/modules/kotlin/records/formatters/Formatter$Builder;->selectors:Ljava/util/List;

    return-object v0
.end method

.method public final property(Lkotlin/reflect/KProperty1;)Lexpo/modules/kotlin/records/formatters/PropertySelector$ActionBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<PropertyType:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/reflect/KProperty1<",
            "TRecordType;+TPropertyType;>;)",
            "Lexpo/modules/kotlin/records/formatters/PropertySelector<",
            "TRecordType;TPropertyType;>.ActionBuilder<TPropertyType;>;"
        }
    .end annotation

    const-string v0, "propertyRef"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    new-instance v0, Lexpo/modules/kotlin/records/formatters/PropertySelector;

    new-instance v1, Lexpo/modules/kotlin/records/formatters/Formatter$Builder$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lexpo/modules/kotlin/records/formatters/Formatter$Builder$$ExternalSyntheticLambda1;-><init>(Lkotlin/reflect/KProperty1;)V

    invoke-direct {v0, v1}, Lexpo/modules/kotlin/records/formatters/PropertySelector;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 19
    iget-object p1, p0, Lexpo/modules/kotlin/records/formatters/Formatter$Builder;->selectors:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    new-instance p1, Lexpo/modules/kotlin/records/formatters/PropertySelector$ActionBuilder;

    invoke-direct {p1, v0}, Lexpo/modules/kotlin/records/formatters/PropertySelector$ActionBuilder;-><init>(Lexpo/modules/kotlin/records/formatters/PropertySelector;)V

    return-object p1
.end method

.method public final property(Lkotlin/reflect/KProperty1;)Lexpo/modules/kotlin/records/formatters/PropertySelector$ActionBuilderForRecord;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<PropertyType::",
            "Lexpo/modules/kotlin/records/Record;",
            ">(",
            "Lkotlin/reflect/KProperty1<",
            "TRecordType;+TPropertyType;>;)",
            "Lexpo/modules/kotlin/records/formatters/PropertySelector<",
            "TRecordType;TPropertyType;>.ActionBuilderForRecord<TPropertyType;>;"
        }
    .end annotation

    const-string v0, "propertyRef"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    new-instance v0, Lexpo/modules/kotlin/records/formatters/PropertySelector;

    new-instance v1, Lexpo/modules/kotlin/records/formatters/Formatter$Builder$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lexpo/modules/kotlin/records/formatters/Formatter$Builder$$ExternalSyntheticLambda0;-><init>(Lkotlin/reflect/KProperty1;)V

    invoke-direct {v0, v1}, Lexpo/modules/kotlin/records/formatters/PropertySelector;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 30
    iget-object p1, p0, Lexpo/modules/kotlin/records/formatters/Formatter$Builder;->selectors:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    new-instance p1, Lexpo/modules/kotlin/records/formatters/PropertySelector$ActionBuilderForRecord;

    invoke-direct {p1, v0}, Lexpo/modules/kotlin/records/formatters/PropertySelector$ActionBuilderForRecord;-><init>(Lexpo/modules/kotlin/records/formatters/PropertySelector;)V

    return-object p1
.end method

.method public final setSelectors$expo_modules_core_release(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lexpo/modules/kotlin/records/formatters/PropertySelector<",
            "TRecordType;*>;>;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iput-object p1, p0, Lexpo/modules/kotlin/records/formatters/Formatter$Builder;->selectors:Ljava/util/List;

    return-void
.end method
