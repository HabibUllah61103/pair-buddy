.class public final Lexpo/modules/ui/ToggleableParams;
.super Ljava/lang/Object;
.source "ModifierRegistry.kt"

# interfaces
.implements Lexpo/modules/kotlin/records/Record;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0081\u0008\u0018\u00002\u00020\u0001B\u001d\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\t\u0010\u000f\u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010\u0010\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u001f\u0010\u0011\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u00c6\u0001J\u0013\u0010\u0012\u001a\u00020\u00032\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u00d6\u0003J\t\u0010\u0015\u001a\u00020\u0016H\u00d6\u0001J\t\u0010\u0017\u001a\u00020\u0018H\u00d6\u0001R\u001c\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\n\u0010\u000bR\u001e\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u000c\u0010\t\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0019"
    }
    d2 = {
        "Lexpo/modules/ui/ToggleableParams;",
        "Lexpo/modules/kotlin/records/Record;",
        "value",
        "",
        "role",
        "Lexpo/modules/ui/SemanticRoleType;",
        "<init>",
        "(ZLexpo/modules/ui/SemanticRoleType;)V",
        "getValue$annotations",
        "()V",
        "getValue",
        "()Z",
        "getRole$annotations",
        "getRole",
        "()Lexpo/modules/ui/SemanticRoleType;",
        "component1",
        "component2",
        "copy",
        "equals",
        "other",
        "",
        "hashCode",
        "",
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
.field private final role:Lexpo/modules/ui/SemanticRoleType;

.field private final value:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1, v0}, Lexpo/modules/ui/ToggleableParams;-><init>(ZLexpo/modules/ui/SemanticRoleType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ZLexpo/modules/ui/SemanticRoleType;)V
    .locals 0

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 202
    iput-boolean p1, p0, Lexpo/modules/ui/ToggleableParams;->value:Z

    .line 203
    iput-object p2, p0, Lexpo/modules/ui/ToggleableParams;->role:Lexpo/modules/ui/SemanticRoleType;

    return-void
.end method

.method public synthetic constructor <init>(ZLexpo/modules/ui/SemanticRoleType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/4 p2, 0x0

    .line 201
    :cond_1
    invoke-direct {p0, p1, p2}, Lexpo/modules/ui/ToggleableParams;-><init>(ZLexpo/modules/ui/SemanticRoleType;)V

    return-void
.end method

.method public static synthetic copy$default(Lexpo/modules/ui/ToggleableParams;ZLexpo/modules/ui/SemanticRoleType;ILjava/lang/Object;)Lexpo/modules/ui/ToggleableParams;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-boolean p1, p0, Lexpo/modules/ui/ToggleableParams;->value:Z

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lexpo/modules/ui/ToggleableParams;->role:Lexpo/modules/ui/SemanticRoleType;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lexpo/modules/ui/ToggleableParams;->copy(ZLexpo/modules/ui/SemanticRoleType;)Lexpo/modules/ui/ToggleableParams;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getRole$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getValue$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method


# virtual methods
.method public final component1()Z
    .locals 1

    iget-boolean v0, p0, Lexpo/modules/ui/ToggleableParams;->value:Z

    return v0
.end method

.method public final component2()Lexpo/modules/ui/SemanticRoleType;
    .locals 1

    iget-object v0, p0, Lexpo/modules/ui/ToggleableParams;->role:Lexpo/modules/ui/SemanticRoleType;

    return-object v0
.end method

.method public final copy(ZLexpo/modules/ui/SemanticRoleType;)Lexpo/modules/ui/ToggleableParams;
    .locals 1

    new-instance v0, Lexpo/modules/ui/ToggleableParams;

    invoke-direct {v0, p1, p2}, Lexpo/modules/ui/ToggleableParams;-><init>(ZLexpo/modules/ui/SemanticRoleType;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lexpo/modules/ui/ToggleableParams;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lexpo/modules/ui/ToggleableParams;

    iget-boolean v1, p0, Lexpo/modules/ui/ToggleableParams;->value:Z

    iget-boolean v3, p1, Lexpo/modules/ui/ToggleableParams;->value:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lexpo/modules/ui/ToggleableParams;->role:Lexpo/modules/ui/SemanticRoleType;

    iget-object p1, p1, Lexpo/modules/ui/ToggleableParams;->role:Lexpo/modules/ui/SemanticRoleType;

    if-eq v1, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getRole()Lexpo/modules/ui/SemanticRoleType;
    .locals 1

    .line 203
    iget-object v0, p0, Lexpo/modules/ui/ToggleableParams;->role:Lexpo/modules/ui/SemanticRoleType;

    return-object v0
.end method

.method public final getValue()Z
    .locals 1

    .line 202
    iget-boolean v0, p0, Lexpo/modules/ui/ToggleableParams;->value:Z

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-boolean v0, p0, Lexpo/modules/ui/ToggleableParams;->value:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lexpo/modules/ui/ToggleableParams;->role:Lexpo/modules/ui/SemanticRoleType;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lexpo/modules/ui/SemanticRoleType;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-boolean v0, p0, Lexpo/modules/ui/ToggleableParams;->value:Z

    iget-object v1, p0, Lexpo/modules/ui/ToggleableParams;->role:Lexpo/modules/ui/SemanticRoleType;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ToggleableParams(value="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", role="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
