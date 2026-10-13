.class public final Lexpo/modules/ui/convertibles/KeyframesSpecParams;
.super Ljava/lang/Object;
.source "AnimationSpecParams.kt"

# interfaces
.implements Lexpo/modules/kotlin/records/Record;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010$\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0008\u0081\u0008\u0018\u00002\u00020\u0001B\u001b\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u001c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000e2\u000e\u0010\u0010\u001a\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u0011J\t\u0010\u0012\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0013\u001a\u00020\u0003H\u00c6\u0003J\u001d\u0010\u0014\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\u0015\u001a\u00020\u00162\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u00d6\u0003J\t\u0010\u0019\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u001a\u001a\u00020\u001bH\u00d6\u0001R\u001c\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\t\u0010\nR\u001c\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u000b\u0010\u0008\u001a\u0004\u0008\u000c\u0010\n\u00a8\u0006\u001c"
    }
    d2 = {
        "Lexpo/modules/ui/convertibles/KeyframesSpecParams;",
        "Lexpo/modules/kotlin/records/Record;",
        "durationMillis",
        "",
        "delayMillis",
        "<init>",
        "(II)V",
        "getDurationMillis$annotations",
        "()V",
        "getDurationMillis",
        "()I",
        "getDelayMillis$annotations",
        "getDelayMillis",
        "toAnimationSpec",
        "Landroidx/compose/animation/core/AnimationSpec;",
        "",
        "raw",
        "",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "toString",
        "",
        "expo-ui_release"
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
.field public static final $stable:I


# instance fields
.field private final delayMillis:I

.field private final durationMillis:I


# direct methods
.method public static synthetic $r8$lambda$tJDP_hdUVbuWWtZb5LH37hY8a7M(Lexpo/modules/ui/convertibles/KeyframesSpecParams;Ljava/util/Map;Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lexpo/modules/ui/convertibles/KeyframesSpecParams;->toAnimationSpec$lambda$0(Lexpo/modules/ui/convertibles/KeyframesSpecParams;Ljava/util/Map;Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v2, v0, v1}, Lexpo/modules/ui/convertibles/KeyframesSpecParams;-><init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput p1, p0, Lexpo/modules/ui/convertibles/KeyframesSpecParams;->durationMillis:I

    .line 67
    iput p2, p0, Lexpo/modules/ui/convertibles/KeyframesSpecParams;->delayMillis:I

    return-void
.end method

.method public synthetic constructor <init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/16 p1, 0x12c

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/4 p2, 0x0

    .line 65
    :cond_1
    invoke-direct {p0, p1, p2}, Lexpo/modules/ui/convertibles/KeyframesSpecParams;-><init>(II)V

    return-void
.end method

.method public static synthetic copy$default(Lexpo/modules/ui/convertibles/KeyframesSpecParams;IIILjava/lang/Object;)Lexpo/modules/ui/convertibles/KeyframesSpecParams;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget p1, p0, Lexpo/modules/ui/convertibles/KeyframesSpecParams;->durationMillis:I

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget p2, p0, Lexpo/modules/ui/convertibles/KeyframesSpecParams;->delayMillis:I

    :cond_1
    invoke-virtual {p0, p1, p2}, Lexpo/modules/ui/convertibles/KeyframesSpecParams;->copy(II)Lexpo/modules/ui/convertibles/KeyframesSpecParams;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getDelayMillis$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getDurationMillis$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method private static final toAnimationSpec$lambda$0(Lexpo/modules/ui/convertibles/KeyframesSpecParams;Ljava/util/Map;Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;)Lkotlin/Unit;
    .locals 1

    const-string v0, "$this$keyframes"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    iget v0, p0, Lexpo/modules/ui/convertibles/KeyframesSpecParams;->durationMillis:I

    invoke-virtual {p2, v0}, Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;->setDurationMillis(I)V

    .line 74
    iget p0, p0, Lexpo/modules/ui/convertibles/KeyframesSpecParams;->delayMillis:I

    invoke-virtual {p2, p0}, Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;->setDelayMillis(I)V

    .line 75
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    .line 76
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, p1, v0}, Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;->at(Ljava/lang/Object;I)Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity;

    goto :goto_0

    .line 78
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lexpo/modules/ui/convertibles/KeyframesSpecParams;->durationMillis:I

    return v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lexpo/modules/ui/convertibles/KeyframesSpecParams;->delayMillis:I

    return v0
.end method

.method public final copy(II)Lexpo/modules/ui/convertibles/KeyframesSpecParams;
    .locals 1

    new-instance v0, Lexpo/modules/ui/convertibles/KeyframesSpecParams;

    invoke-direct {v0, p1, p2}, Lexpo/modules/ui/convertibles/KeyframesSpecParams;-><init>(II)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lexpo/modules/ui/convertibles/KeyframesSpecParams;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lexpo/modules/ui/convertibles/KeyframesSpecParams;

    iget v1, p0, Lexpo/modules/ui/convertibles/KeyframesSpecParams;->durationMillis:I

    iget v3, p1, Lexpo/modules/ui/convertibles/KeyframesSpecParams;->durationMillis:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lexpo/modules/ui/convertibles/KeyframesSpecParams;->delayMillis:I

    iget p1, p1, Lexpo/modules/ui/convertibles/KeyframesSpecParams;->delayMillis:I

    if-eq v1, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getDelayMillis()I
    .locals 1

    .line 67
    iget v0, p0, Lexpo/modules/ui/convertibles/KeyframesSpecParams;->delayMillis:I

    return v0
.end method

.method public final getDurationMillis()I
    .locals 1

    .line 66
    iget v0, p0, Lexpo/modules/ui/convertibles/KeyframesSpecParams;->durationMillis:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lexpo/modules/ui/convertibles/KeyframesSpecParams;->durationMillis:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lexpo/modules/ui/convertibles/KeyframesSpecParams;->delayMillis:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final toAnimationSpec(Ljava/util/Map;)Landroidx/compose/animation/core/AnimationSpec;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;)",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    const-string v0, "raw"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    const-string v0, "keyframes"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/util/Map;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p1

    .line 72
    :cond_1
    new-instance v0, Lexpo/modules/ui/convertibles/KeyframesSpecParams$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lexpo/modules/ui/convertibles/KeyframesSpecParams$$ExternalSyntheticLambda0;-><init>(Lexpo/modules/ui/convertibles/KeyframesSpecParams;Ljava/util/Map;)V

    invoke-static {v0}, Landroidx/compose/animation/core/AnimationSpecKt;->keyframes(Lkotlin/jvm/functions/Function1;)Landroidx/compose/animation/core/KeyframesSpec;

    move-result-object p1

    check-cast p1, Landroidx/compose/animation/core/AnimationSpec;

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget v0, p0, Lexpo/modules/ui/convertibles/KeyframesSpecParams;->durationMillis:I

    iget v1, p0, Lexpo/modules/ui/convertibles/KeyframesSpecParams;->delayMillis:I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "KeyframesSpecParams(durationMillis="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", delayMillis="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
