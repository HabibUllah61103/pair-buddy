.class public final Lexpo/modules/ui/ExpoDialogProperties;
.super Ljava/lang/Object;
.source "AlertDialogView.kt"

# interfaces
.implements Lexpo/modules/kotlin/records/Record;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0016\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0087\u0008\u0018\u00002\u00020\u0001B/\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\t\u0010\u0013\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0014\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0015\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0016\u001a\u00020\u0003H\u00c6\u0003J1\u0010\u0017\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\u0018\u001a\u00020\u00032\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u00d6\u0003J\t\u0010\u001b\u001a\u00020\u001cH\u00d6\u0001J\t\u0010\u001d\u001a\u00020\u001eH\u00d6\u0001R\u001c\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u000b\u0010\u000cR\u001c\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\r\u0010\n\u001a\u0004\u0008\u000e\u0010\u000cR\u001c\u0010\u0005\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u000f\u0010\n\u001a\u0004\u0008\u0010\u0010\u000cR\u001c\u0010\u0006\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0011\u0010\n\u001a\u0004\u0008\u0012\u0010\u000c\u00a8\u0006\u001f"
    }
    d2 = {
        "Lexpo/modules/ui/ExpoDialogProperties;",
        "Lexpo/modules/kotlin/records/Record;",
        "dismissOnBackPress",
        "",
        "dismissOnClickOutside",
        "usePlatformDefaultWidth",
        "decorFitsSystemWindows",
        "<init>",
        "(ZZZZ)V",
        "getDismissOnBackPress$annotations",
        "()V",
        "getDismissOnBackPress",
        "()Z",
        "getDismissOnClickOutside$annotations",
        "getDismissOnClickOutside",
        "getUsePlatformDefaultWidth$annotations",
        "getUsePlatformDefaultWidth",
        "getDecorFitsSystemWindows$annotations",
        "getDecorFitsSystemWindows",
        "component1",
        "component2",
        "component3",
        "component4",
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
.field private final decorFitsSystemWindows:Z

.field private final dismissOnBackPress:Z

.field private final dismissOnClickOutside:Z

.field private final usePlatformDefaultWidth:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    const/16 v5, 0xf

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lexpo/modules/ui/ExpoDialogProperties;-><init>(ZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ZZZZ)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-boolean p1, p0, Lexpo/modules/ui/ExpoDialogProperties;->dismissOnBackPress:Z

    .line 23
    iput-boolean p2, p0, Lexpo/modules/ui/ExpoDialogProperties;->dismissOnClickOutside:Z

    .line 24
    iput-boolean p3, p0, Lexpo/modules/ui/ExpoDialogProperties;->usePlatformDefaultWidth:Z

    .line 25
    iput-boolean p4, p0, Lexpo/modules/ui/ExpoDialogProperties;->decorFitsSystemWindows:Z

    return-void
.end method

.method public synthetic constructor <init>(ZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x1

    const/4 v0, 0x1

    if-eqz p6, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    move p2, v0

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    move p3, v0

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    move p4, v0

    .line 21
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lexpo/modules/ui/ExpoDialogProperties;-><init>(ZZZZ)V

    return-void
.end method

.method public static synthetic copy$default(Lexpo/modules/ui/ExpoDialogProperties;ZZZZILjava/lang/Object;)Lexpo/modules/ui/ExpoDialogProperties;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-boolean p1, p0, Lexpo/modules/ui/ExpoDialogProperties;->dismissOnBackPress:Z

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-boolean p2, p0, Lexpo/modules/ui/ExpoDialogProperties;->dismissOnClickOutside:Z

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-boolean p3, p0, Lexpo/modules/ui/ExpoDialogProperties;->usePlatformDefaultWidth:Z

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-boolean p4, p0, Lexpo/modules/ui/ExpoDialogProperties;->decorFitsSystemWindows:Z

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lexpo/modules/ui/ExpoDialogProperties;->copy(ZZZZ)Lexpo/modules/ui/ExpoDialogProperties;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getDecorFitsSystemWindows$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getDismissOnBackPress$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getDismissOnClickOutside$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getUsePlatformDefaultWidth$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method


# virtual methods
.method public final component1()Z
    .locals 1

    iget-boolean v0, p0, Lexpo/modules/ui/ExpoDialogProperties;->dismissOnBackPress:Z

    return v0
.end method

.method public final component2()Z
    .locals 1

    iget-boolean v0, p0, Lexpo/modules/ui/ExpoDialogProperties;->dismissOnClickOutside:Z

    return v0
.end method

.method public final component3()Z
    .locals 1

    iget-boolean v0, p0, Lexpo/modules/ui/ExpoDialogProperties;->usePlatformDefaultWidth:Z

    return v0
.end method

.method public final component4()Z
    .locals 1

    iget-boolean v0, p0, Lexpo/modules/ui/ExpoDialogProperties;->decorFitsSystemWindows:Z

    return v0
.end method

.method public final copy(ZZZZ)Lexpo/modules/ui/ExpoDialogProperties;
    .locals 1

    new-instance v0, Lexpo/modules/ui/ExpoDialogProperties;

    invoke-direct {v0, p1, p2, p3, p4}, Lexpo/modules/ui/ExpoDialogProperties;-><init>(ZZZZ)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lexpo/modules/ui/ExpoDialogProperties;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lexpo/modules/ui/ExpoDialogProperties;

    iget-boolean v1, p0, Lexpo/modules/ui/ExpoDialogProperties;->dismissOnBackPress:Z

    iget-boolean v3, p1, Lexpo/modules/ui/ExpoDialogProperties;->dismissOnBackPress:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lexpo/modules/ui/ExpoDialogProperties;->dismissOnClickOutside:Z

    iget-boolean v3, p1, Lexpo/modules/ui/ExpoDialogProperties;->dismissOnClickOutside:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lexpo/modules/ui/ExpoDialogProperties;->usePlatformDefaultWidth:Z

    iget-boolean v3, p1, Lexpo/modules/ui/ExpoDialogProperties;->usePlatformDefaultWidth:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lexpo/modules/ui/ExpoDialogProperties;->decorFitsSystemWindows:Z

    iget-boolean p1, p1, Lexpo/modules/ui/ExpoDialogProperties;->decorFitsSystemWindows:Z

    if-eq v1, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getDecorFitsSystemWindows()Z
    .locals 1

    .line 25
    iget-boolean v0, p0, Lexpo/modules/ui/ExpoDialogProperties;->decorFitsSystemWindows:Z

    return v0
.end method

.method public final getDismissOnBackPress()Z
    .locals 1

    .line 22
    iget-boolean v0, p0, Lexpo/modules/ui/ExpoDialogProperties;->dismissOnBackPress:Z

    return v0
.end method

.method public final getDismissOnClickOutside()Z
    .locals 1

    .line 23
    iget-boolean v0, p0, Lexpo/modules/ui/ExpoDialogProperties;->dismissOnClickOutside:Z

    return v0
.end method

.method public final getUsePlatformDefaultWidth()Z
    .locals 1

    .line 24
    iget-boolean v0, p0, Lexpo/modules/ui/ExpoDialogProperties;->usePlatformDefaultWidth:Z

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-boolean v0, p0, Lexpo/modules/ui/ExpoDialogProperties;->dismissOnBackPress:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lexpo/modules/ui/ExpoDialogProperties;->dismissOnClickOutside:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lexpo/modules/ui/ExpoDialogProperties;->usePlatformDefaultWidth:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lexpo/modules/ui/ExpoDialogProperties;->decorFitsSystemWindows:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    iget-boolean v0, p0, Lexpo/modules/ui/ExpoDialogProperties;->dismissOnBackPress:Z

    iget-boolean v1, p0, Lexpo/modules/ui/ExpoDialogProperties;->dismissOnClickOutside:Z

    iget-boolean v2, p0, Lexpo/modules/ui/ExpoDialogProperties;->usePlatformDefaultWidth:Z

    iget-boolean v3, p0, Lexpo/modules/ui/ExpoDialogProperties;->decorFitsSystemWindows:Z

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ExpoDialogProperties(dismissOnBackPress="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", dismissOnClickOutside="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", usePlatformDefaultWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", decorFitsSystemWindows="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
