.class public final Lcom/superwall/sdk/contrib/threeteen/AmountFormats$PredicateFormat;
.super Ljava/lang/Object;
.source "AmountFormats.kt"

# interfaces
.implements Lcom/superwall/sdk/contrib/threeteen/AmountFormats$UnitFormat;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/superwall/sdk/contrib/threeteen/AmountFormats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PredicateFormat"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAmountFormats.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AmountFormats.kt\ncom/superwall/sdk/contrib/threeteen/AmountFormats$PredicateFormat\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 4 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,791:1\n1#2:792\n11165#3:793\n11500#3,3:794\n37#4,2:797\n*S KotlinDebug\n*F\n+ 1 AmountFormats.kt\ncom/superwall/sdk/contrib/threeteen/AmountFormats$PredicateFormat\n*L\n697#1:793\n697#1:794,3\n699#1:797,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\'\u0012\u000e\u0010\u0002\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u0003\u0012\u000e\u0010\u0005\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u0003\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0010\u0010\u000c\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u0004H\u0002J\u001c\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\n\u0010\u0012\u001a\u00060\u0013j\u0002`\u0014H\u0016R\u0016\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0003X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\nR\u0018\u0010\u0005\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u0003X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u000b\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/superwall/sdk/contrib/threeteen/AmountFormats$PredicateFormat;",
        "Lcom/superwall/sdk/contrib/threeteen/AmountFormats$UnitFormat;",
        "predicateStrs",
        "",
        "",
        "text",
        "<init>",
        "([Ljava/lang/String;[Ljava/lang/String;)V",
        "predicates",
        "Lcom/superwall/sdk/contrib/threeteen/AmountFormats$IntPredicate;",
        "[Lcom/superwall/sdk/contrib/threeteen/AmountFormats$IntPredicate;",
        "[Ljava/lang/String;",
        "findPredicate",
        "predicateStr",
        "formatTo",
        "",
        "value",
        "",
        "buf",
        "Ljava/lang/StringBuilder;",
        "Lkotlin/text/StringBuilder;",
        "superwall_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final predicates:[Lcom/superwall/sdk/contrib/threeteen/AmountFormats$IntPredicate;

.field private final text:[Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 5

    const-string v0, "predicateStrs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "text"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 686
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 694
    array-length v0, p1

    add-int/lit8 v0, v0, 0x1

    array-length v1, p2

    if-ne v0, v1, :cond_1

    .line 793
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 794
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, p1, v3

    .line 698
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, v4}, Lcom/superwall/sdk/contrib/threeteen/AmountFormats$PredicateFormat;->findPredicate(Ljava/lang/String;)Lcom/superwall/sdk/contrib/threeteen/AmountFormats$IntPredicate;

    move-result-object v4

    .line 795
    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 796
    :cond_0
    check-cast v0, Ljava/util/List;

    .line 793
    check-cast v0, Ljava/util/Collection;

    .line 798
    new-array p1, v2, [Lcom/superwall/sdk/contrib/threeteen/AmountFormats$IntPredicate;

    invoke-interface {v0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/superwall/sdk/contrib/threeteen/AmountFormats$IntPredicate;

    .line 695
    iput-object p1, p0, Lcom/superwall/sdk/contrib/threeteen/AmountFormats$PredicateFormat;->predicates:[Lcom/superwall/sdk/contrib/threeteen/AmountFormats$IntPredicate;

    .line 700
    iput-object p2, p0, Lcom/superwall/sdk/contrib/threeteen/AmountFormats$PredicateFormat;->text:[Ljava/lang/String;

    return-void

    .line 694
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Invalid word-based resource"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final findPredicate(Ljava/lang/String;)Lcom/superwall/sdk/contrib/threeteen/AmountFormats$IntPredicate;
    .locals 2

    .line 704
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x64c0d903

    if-eq v0, v1, :cond_1

    const v1, -0x632396a2

    if-eq v0, v1, :cond_0

    const v1, 0x13646

    if-ne v0, v1, :cond_2

    const-string v0, "One"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 705
    invoke-static {}, Lcom/superwall/sdk/contrib/threeteen/AmountFormats;->access$getPREDICATE_1$p()Lcom/superwall/sdk/contrib/threeteen/AmountFormats$IntPredicate;

    move-result-object p1

    return-object p1

    .line 704
    :cond_0
    const-string v0, "End234NotTeens"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 706
    invoke-static {}, Lcom/superwall/sdk/contrib/threeteen/AmountFormats;->access$getPREDICATE_END234_NOTTEENS$p()Lcom/superwall/sdk/contrib/threeteen/AmountFormats$IntPredicate;

    move-result-object p1

    return-object p1

    .line 704
    :cond_1
    const-string v0, "End1Not11"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 707
    invoke-static {}, Lcom/superwall/sdk/contrib/threeteen/AmountFormats;->access$getPREDICATE_END1_NOT11$p()Lcom/superwall/sdk/contrib/threeteen/AmountFormats$IntPredicate;

    move-result-object p1

    return-object p1

    .line 708
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Invalid word-based resource"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public formatTo(ILjava/lang/StringBuilder;)V
    .locals 3

    const-string v0, "buf"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 715
    iget-object v0, p0, Lcom/superwall/sdk/contrib/threeteen/AmountFormats$PredicateFormat;->predicates:[Lcom/superwall/sdk/contrib/threeteen/AmountFormats$IntPredicate;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 716
    iget-object v2, p0, Lcom/superwall/sdk/contrib/threeteen/AmountFormats$PredicateFormat;->predicates:[Lcom/superwall/sdk/contrib/threeteen/AmountFormats$IntPredicate;

    aget-object v2, v2, v1

    invoke-interface {v2, p1}, Lcom/superwall/sdk/contrib/threeteen/AmountFormats$IntPredicate;->test(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 717
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/superwall/sdk/contrib/threeteen/AmountFormats$PredicateFormat;->text:[Ljava/lang/String;

    aget-object p2, p2, v1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 721
    :cond_1
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/superwall/sdk/contrib/threeteen/AmountFormats$PredicateFormat;->text:[Ljava/lang/String;

    iget-object v0, p0, Lcom/superwall/sdk/contrib/threeteen/AmountFormats$PredicateFormat;->predicates:[Lcom/superwall/sdk/contrib/threeteen/AmountFormats$IntPredicate;

    array-length v0, v0

    aget-object p2, p2, v0

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method
