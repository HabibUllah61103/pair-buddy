.class final Lexpo/modules/kotlin/records/RecordTypeConverter$PropertyDescriptor;
.super Ljava/lang/Object;
.source "RecordTypeConverter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexpo/modules/kotlin/records/RecordTypeConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PropertyDescriptor"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u000e\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0082\u0008\u0018\u00002\u00020\u0001B#\u0012\n\u0010\u0002\u001a\u0006\u0012\u0002\u0008\u00030\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\r\u0010\u000f\u001a\u0006\u0012\u0002\u0008\u00030\u0003H\u00c6\u0003J\t\u0010\u0010\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0011\u001a\u00020\u0007H\u00c6\u0003J+\u0010\u0012\u001a\u00020\u00002\u000c\u0008\u0002\u0010\u0002\u001a\u0006\u0012\u0002\u0008\u00030\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007H\u00c6\u0001J\u0013\u0010\u0013\u001a\u00020\u00072\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0015\u001a\u00020\u0016H\u00d6\u0001J\t\u0010\u0017\u001a\u00020\u0018H\u00d6\u0001R\u0015\u0010\u0002\u001a\u0006\u0012\u0002\u0008\u00030\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u000e\u00a8\u0006\u0019"
    }
    d2 = {
        "Lexpo/modules/kotlin/records/RecordTypeConverter$PropertyDescriptor;",
        "",
        "typeConverter",
        "Lexpo/modules/kotlin/types/TypeConverter;",
        "fieldAnnotation",
        "Lexpo/modules/kotlin/records/Field;",
        "isRequired",
        "",
        "<init>",
        "(Lexpo/modules/kotlin/types/TypeConverter;Lexpo/modules/kotlin/records/Field;Z)V",
        "getTypeConverter",
        "()Lexpo/modules/kotlin/types/TypeConverter;",
        "getFieldAnnotation",
        "()Lexpo/modules/kotlin/records/Field;",
        "()Z",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "other",
        "hashCode",
        "",
        "toString",
        "",
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
.field private final fieldAnnotation:Lexpo/modules/kotlin/records/Field;

.field private final isRequired:Z

.field private final typeConverter:Lexpo/modules/kotlin/types/TypeConverter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lexpo/modules/kotlin/types/TypeConverter<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lexpo/modules/kotlin/types/TypeConverter;Lexpo/modules/kotlin/records/Field;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexpo/modules/kotlin/types/TypeConverter<",
            "*>;",
            "Lexpo/modules/kotlin/records/Field;",
            "Z)V"
        }
    .end annotation

    const-string v0, "typeConverter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fieldAnnotation"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    iput-object p1, p0, Lexpo/modules/kotlin/records/RecordTypeConverter$PropertyDescriptor;->typeConverter:Lexpo/modules/kotlin/types/TypeConverter;

    .line 152
    iput-object p2, p0, Lexpo/modules/kotlin/records/RecordTypeConverter$PropertyDescriptor;->fieldAnnotation:Lexpo/modules/kotlin/records/Field;

    .line 153
    iput-boolean p3, p0, Lexpo/modules/kotlin/records/RecordTypeConverter$PropertyDescriptor;->isRequired:Z

    return-void
.end method

.method public static synthetic copy$default(Lexpo/modules/kotlin/records/RecordTypeConverter$PropertyDescriptor;Lexpo/modules/kotlin/types/TypeConverter;Lexpo/modules/kotlin/records/Field;ZILjava/lang/Object;)Lexpo/modules/kotlin/records/RecordTypeConverter$PropertyDescriptor;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lexpo/modules/kotlin/records/RecordTypeConverter$PropertyDescriptor;->typeConverter:Lexpo/modules/kotlin/types/TypeConverter;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lexpo/modules/kotlin/records/RecordTypeConverter$PropertyDescriptor;->fieldAnnotation:Lexpo/modules/kotlin/records/Field;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-boolean p3, p0, Lexpo/modules/kotlin/records/RecordTypeConverter$PropertyDescriptor;->isRequired:Z

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lexpo/modules/kotlin/records/RecordTypeConverter$PropertyDescriptor;->copy(Lexpo/modules/kotlin/types/TypeConverter;Lexpo/modules/kotlin/records/Field;Z)Lexpo/modules/kotlin/records/RecordTypeConverter$PropertyDescriptor;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lexpo/modules/kotlin/types/TypeConverter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lexpo/modules/kotlin/types/TypeConverter<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lexpo/modules/kotlin/records/RecordTypeConverter$PropertyDescriptor;->typeConverter:Lexpo/modules/kotlin/types/TypeConverter;

    return-object v0
.end method

.method public final component2()Lexpo/modules/kotlin/records/Field;
    .locals 1

    iget-object v0, p0, Lexpo/modules/kotlin/records/RecordTypeConverter$PropertyDescriptor;->fieldAnnotation:Lexpo/modules/kotlin/records/Field;

    return-object v0
.end method

.method public final component3()Z
    .locals 1

    iget-boolean v0, p0, Lexpo/modules/kotlin/records/RecordTypeConverter$PropertyDescriptor;->isRequired:Z

    return v0
.end method

.method public final copy(Lexpo/modules/kotlin/types/TypeConverter;Lexpo/modules/kotlin/records/Field;Z)Lexpo/modules/kotlin/records/RecordTypeConverter$PropertyDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexpo/modules/kotlin/types/TypeConverter<",
            "*>;",
            "Lexpo/modules/kotlin/records/Field;",
            "Z)",
            "Lexpo/modules/kotlin/records/RecordTypeConverter$PropertyDescriptor;"
        }
    .end annotation

    const-string v0, "typeConverter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fieldAnnotation"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lexpo/modules/kotlin/records/RecordTypeConverter$PropertyDescriptor;

    invoke-direct {v0, p1, p2, p3}, Lexpo/modules/kotlin/records/RecordTypeConverter$PropertyDescriptor;-><init>(Lexpo/modules/kotlin/types/TypeConverter;Lexpo/modules/kotlin/records/Field;Z)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lexpo/modules/kotlin/records/RecordTypeConverter$PropertyDescriptor;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lexpo/modules/kotlin/records/RecordTypeConverter$PropertyDescriptor;

    iget-object v1, p0, Lexpo/modules/kotlin/records/RecordTypeConverter$PropertyDescriptor;->typeConverter:Lexpo/modules/kotlin/types/TypeConverter;

    iget-object v3, p1, Lexpo/modules/kotlin/records/RecordTypeConverter$PropertyDescriptor;->typeConverter:Lexpo/modules/kotlin/types/TypeConverter;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lexpo/modules/kotlin/records/RecordTypeConverter$PropertyDescriptor;->fieldAnnotation:Lexpo/modules/kotlin/records/Field;

    iget-object v3, p1, Lexpo/modules/kotlin/records/RecordTypeConverter$PropertyDescriptor;->fieldAnnotation:Lexpo/modules/kotlin/records/Field;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lexpo/modules/kotlin/records/RecordTypeConverter$PropertyDescriptor;->isRequired:Z

    iget-boolean p1, p1, Lexpo/modules/kotlin/records/RecordTypeConverter$PropertyDescriptor;->isRequired:Z

    if-eq v1, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getFieldAnnotation()Lexpo/modules/kotlin/records/Field;
    .locals 1

    .line 152
    iget-object v0, p0, Lexpo/modules/kotlin/records/RecordTypeConverter$PropertyDescriptor;->fieldAnnotation:Lexpo/modules/kotlin/records/Field;

    return-object v0
.end method

.method public final getTypeConverter()Lexpo/modules/kotlin/types/TypeConverter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lexpo/modules/kotlin/types/TypeConverter<",
            "*>;"
        }
    .end annotation

    .line 151
    iget-object v0, p0, Lexpo/modules/kotlin/records/RecordTypeConverter$PropertyDescriptor;->typeConverter:Lexpo/modules/kotlin/types/TypeConverter;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lexpo/modules/kotlin/records/RecordTypeConverter$PropertyDescriptor;->typeConverter:Lexpo/modules/kotlin/types/TypeConverter;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lexpo/modules/kotlin/records/RecordTypeConverter$PropertyDescriptor;->fieldAnnotation:Lexpo/modules/kotlin/records/Field;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lexpo/modules/kotlin/records/RecordTypeConverter$PropertyDescriptor;->isRequired:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final isRequired()Z
    .locals 1

    .line 153
    iget-boolean v0, p0, Lexpo/modules/kotlin/records/RecordTypeConverter$PropertyDescriptor;->isRequired:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lexpo/modules/kotlin/records/RecordTypeConverter$PropertyDescriptor;->typeConverter:Lexpo/modules/kotlin/types/TypeConverter;

    iget-object v1, p0, Lexpo/modules/kotlin/records/RecordTypeConverter$PropertyDescriptor;->fieldAnnotation:Lexpo/modules/kotlin/records/Field;

    iget-boolean v2, p0, Lexpo/modules/kotlin/records/RecordTypeConverter$PropertyDescriptor;->isRequired:Z

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "PropertyDescriptor(typeConverter="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", fieldAnnotation="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isRequired="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
