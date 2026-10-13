.class public final Landroidx/compose/material3/ModalBottomSheetProperties;
.super Ljava/lang/Object;
.source "ModalBottomSheet.android.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0010\u0008\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B\t\u0008\u0016\u00a2\u0006\u0004\u0008\u0002\u0010\u0003B\u001d\u0008\u0016\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0002\u0010\u0007B\'\u0008\u0016\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0002\u0010\nB7\u0008\u0016\u0012\u0006\u0010\u000b\u001a\u00020\u0005\u0012\u0006\u0010\u000c\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0002\u0010\rJ\u0013\u0010\u0016\u001a\u00020\u00052\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\u0008\u0010\u0018\u001a\u00020\u0019H\u0016R\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0013\u0010\u0006\u001a\u00020\u00058\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0011R\u0018\u0010\u000b\u001a\u0004\u0018\u00010\u0005X\u0080\u0004\u00a2\u0006\n\n\u0002\u0010\u0014\u001a\u0004\u0008\u0012\u0010\u0013R\u0018\u0010\u000c\u001a\u0004\u0018\u00010\u0005X\u0080\u0004\u00a2\u0006\n\n\u0002\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0013\u00a8\u0006\u001a"
    }
    d2 = {
        "Landroidx/compose/material3/ModalBottomSheetProperties;",
        "",
        "<init>",
        "()V",
        "shouldDismissOnBackPress",
        "",
        "shouldDismissOnClickOutside",
        "(ZZ)V",
        "securePolicy",
        "Landroidx/compose/ui/window/SecureFlagPolicy;",
        "(Landroidx/compose/ui/window/SecureFlagPolicy;ZZ)V",
        "isAppearanceLightStatusBars",
        "isAppearanceLightNavigationBars",
        "(ZZLandroidx/compose/ui/window/SecureFlagPolicy;ZZ)V",
        "getSecurePolicy",
        "()Landroidx/compose/ui/window/SecureFlagPolicy;",
        "getShouldDismissOnBackPress",
        "()Z",
        "isAppearanceLightStatusBars$material3",
        "()Ljava/lang/Boolean;",
        "Ljava/lang/Boolean;",
        "isAppearanceLightNavigationBars$material3",
        "equals",
        "other",
        "hashCode",
        "",
        "material3"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I


# instance fields
.field private final isAppearanceLightNavigationBars:Ljava/lang/Boolean;

.field private final isAppearanceLightStatusBars:Ljava/lang/Boolean;

.field private final securePolicy:Landroidx/compose/ui/window/SecureFlagPolicy;

.field private final shouldDismissOnBackPress:Z

.field private final shouldDismissOnClickOutside:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    sget-object v0, Landroidx/compose/ui/window/SecureFlagPolicy;->Inherit:Landroidx/compose/ui/window/SecureFlagPolicy;

    iput-object v0, p0, Landroidx/compose/material3/ModalBottomSheetProperties;->securePolicy:Landroidx/compose/ui/window/SecureFlagPolicy;

    const/4 v0, 0x1

    .line 103
    iput-boolean v0, p0, Landroidx/compose/material3/ModalBottomSheetProperties;->shouldDismissOnBackPress:Z

    .line 104
    iput-boolean v0, p0, Landroidx/compose/material3/ModalBottomSheetProperties;->shouldDismissOnClickOutside:Z

    const/4 v0, 0x0

    .line 105
    iput-object v0, p0, Landroidx/compose/material3/ModalBottomSheetProperties;->isAppearanceLightStatusBars:Ljava/lang/Boolean;

    .line 106
    iput-object v0, p0, Landroidx/compose/material3/ModalBottomSheetProperties;->isAppearanceLightNavigationBars:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/window/SecureFlagPolicy;ZZ)V
    .locals 0

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    iput-object p1, p0, Landroidx/compose/material3/ModalBottomSheetProperties;->securePolicy:Landroidx/compose/ui/window/SecureFlagPolicy;

    .line 133
    iput-boolean p2, p0, Landroidx/compose/material3/ModalBottomSheetProperties;->shouldDismissOnBackPress:Z

    .line 134
    iput-boolean p3, p0, Landroidx/compose/material3/ModalBottomSheetProperties;->shouldDismissOnClickOutside:Z

    const/4 p1, 0x0

    .line 135
    iput-object p1, p0, Landroidx/compose/material3/ModalBottomSheetProperties;->isAppearanceLightNavigationBars:Ljava/lang/Boolean;

    .line 136
    iput-object p1, p0, Landroidx/compose/material3/ModalBottomSheetProperties;->isAppearanceLightStatusBars:Ljava/lang/Boolean;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/window/SecureFlagPolicy;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    .line 128
    sget-object p1, Landroidx/compose/ui/window/SecureFlagPolicy;->Inherit:Landroidx/compose/ui/window/SecureFlagPolicy;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x1

    if-eqz p5, :cond_1

    move p2, v0

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    move p3, v0

    .line 127
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/material3/ModalBottomSheetProperties;-><init>(Landroidx/compose/ui/window/SecureFlagPolicy;ZZ)V

    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 1

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    sget-object v0, Landroidx/compose/ui/window/SecureFlagPolicy;->Inherit:Landroidx/compose/ui/window/SecureFlagPolicy;

    iput-object v0, p0, Landroidx/compose/material3/ModalBottomSheetProperties;->securePolicy:Landroidx/compose/ui/window/SecureFlagPolicy;

    .line 111
    iput-boolean p1, p0, Landroidx/compose/material3/ModalBottomSheetProperties;->shouldDismissOnBackPress:Z

    .line 112
    iput-boolean p2, p0, Landroidx/compose/material3/ModalBottomSheetProperties;->shouldDismissOnClickOutside:Z

    const/4 p1, 0x0

    .line 113
    iput-object p1, p0, Landroidx/compose/material3/ModalBottomSheetProperties;->isAppearanceLightNavigationBars:Ljava/lang/Boolean;

    .line 114
    iput-object p1, p0, Landroidx/compose/material3/ModalBottomSheetProperties;->isAppearanceLightStatusBars:Ljava/lang/Boolean;

    return-void
.end method

.method public synthetic constructor <init>(ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x1

    if-eqz p4, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    move p2, v0

    .line 109
    :cond_1
    invoke-direct {p0, p1, p2}, Landroidx/compose/material3/ModalBottomSheetProperties;-><init>(ZZ)V

    return-void
.end method

.method public constructor <init>(ZZLandroidx/compose/ui/window/SecureFlagPolicy;ZZ)V
    .locals 0

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    iput-boolean p4, p0, Landroidx/compose/material3/ModalBottomSheetProperties;->shouldDismissOnBackPress:Z

    .line 166
    iput-boolean p5, p0, Landroidx/compose/material3/ModalBottomSheetProperties;->shouldDismissOnClickOutside:Z

    .line 167
    iput-object p3, p0, Landroidx/compose/material3/ModalBottomSheetProperties;->securePolicy:Landroidx/compose/ui/window/SecureFlagPolicy;

    .line 168
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/material3/ModalBottomSheetProperties;->isAppearanceLightStatusBars:Ljava/lang/Boolean;

    .line 169
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/material3/ModalBottomSheetProperties;->isAppearanceLightNavigationBars:Ljava/lang/Boolean;

    return-void
.end method

.method public synthetic constructor <init>(ZZLandroidx/compose/ui/window/SecureFlagPolicy;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_0

    .line 161
    sget-object p3, Landroidx/compose/ui/window/SecureFlagPolicy;->Inherit:Landroidx/compose/ui/window/SecureFlagPolicy;

    :cond_0
    move-object v3, p3

    and-int/lit8 p3, p6, 0x8

    const/4 p7, 0x1

    if-eqz p3, :cond_1

    move v4, p7

    goto :goto_0

    :cond_1
    move v4, p4

    :goto_0
    and-int/lit8 p3, p6, 0x10

    if-eqz p3, :cond_2

    move v5, p7

    goto :goto_1

    :cond_2
    move v5, p5

    :goto_1
    move-object v0, p0

    move v1, p1

    move v2, p2

    .line 158
    invoke-direct/range {v0 .. v5}, Landroidx/compose/material3/ModalBottomSheetProperties;-><init>(ZZLandroidx/compose/ui/window/SecureFlagPolicy;ZZ)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 174
    :cond_0
    instance-of v1, p1, Landroidx/compose/material3/ModalBottomSheetProperties;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 175
    :cond_1
    iget-object v1, p0, Landroidx/compose/material3/ModalBottomSheetProperties;->securePolicy:Landroidx/compose/ui/window/SecureFlagPolicy;

    check-cast p1, Landroidx/compose/material3/ModalBottomSheetProperties;

    iget-object v3, p1, Landroidx/compose/material3/ModalBottomSheetProperties;->securePolicy:Landroidx/compose/ui/window/SecureFlagPolicy;

    if-eq v1, v3, :cond_2

    return v2

    .line 176
    :cond_2
    iget-object v1, p0, Landroidx/compose/material3/ModalBottomSheetProperties;->isAppearanceLightStatusBars:Ljava/lang/Boolean;

    iget-object v3, p1, Landroidx/compose/material3/ModalBottomSheetProperties;->isAppearanceLightStatusBars:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 177
    :cond_3
    iget-object v1, p0, Landroidx/compose/material3/ModalBottomSheetProperties;->isAppearanceLightNavigationBars:Ljava/lang/Boolean;

    iget-object v3, p1, Landroidx/compose/material3/ModalBottomSheetProperties;->isAppearanceLightNavigationBars:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 178
    :cond_4
    iget-boolean v1, p0, Landroidx/compose/material3/ModalBottomSheetProperties;->shouldDismissOnClickOutside:Z

    iget-boolean v3, p1, Landroidx/compose/material3/ModalBottomSheetProperties;->shouldDismissOnClickOutside:Z

    if-eq v1, v3, :cond_5

    return v2

    .line 179
    :cond_5
    iget-boolean v1, p0, Landroidx/compose/material3/ModalBottomSheetProperties;->shouldDismissOnBackPress:Z

    iget-boolean p1, p1, Landroidx/compose/material3/ModalBottomSheetProperties;->shouldDismissOnBackPress:Z

    if-eq v1, p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getSecurePolicy()Landroidx/compose/ui/window/SecureFlagPolicy;
    .locals 1

    .line 89
    iget-object v0, p0, Landroidx/compose/material3/ModalBottomSheetProperties;->securePolicy:Landroidx/compose/ui/window/SecureFlagPolicy;

    return-object v0
.end method

.method public final getShouldDismissOnBackPress()Z
    .locals 1

    .line 90
    iget-boolean v0, p0, Landroidx/compose/material3/ModalBottomSheetProperties;->shouldDismissOnBackPress:Z

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 184
    iget-object v0, p0, Landroidx/compose/material3/ModalBottomSheetProperties;->securePolicy:Landroidx/compose/ui/window/SecureFlagPolicy;

    invoke-virtual {v0}, Landroidx/compose/ui/window/SecureFlagPolicy;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 185
    iget-boolean v1, p0, Landroidx/compose/material3/ModalBottomSheetProperties;->shouldDismissOnBackPress:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 186
    iget-object v1, p0, Landroidx/compose/material3/ModalBottomSheetProperties;->isAppearanceLightStatusBars:Ljava/lang/Boolean;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 187
    iget-object v1, p0, Landroidx/compose/material3/ModalBottomSheetProperties;->isAppearanceLightNavigationBars:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    :cond_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 188
    iget-boolean v1, p0, Landroidx/compose/material3/ModalBottomSheetProperties;->shouldDismissOnClickOutside:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final isAppearanceLightNavigationBars$material3()Ljava/lang/Boolean;
    .locals 1

    .line 93
    iget-object v0, p0, Landroidx/compose/material3/ModalBottomSheetProperties;->isAppearanceLightNavigationBars:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final isAppearanceLightStatusBars$material3()Ljava/lang/Boolean;
    .locals 1

    .line 92
    iget-object v0, p0, Landroidx/compose/material3/ModalBottomSheetProperties;->isAppearanceLightStatusBars:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final shouldDismissOnClickOutside()Z
    .locals 1

    .line 91
    iget-boolean v0, p0, Landroidx/compose/material3/ModalBottomSheetProperties;->shouldDismissOnClickOutside:Z

    return v0
.end method
