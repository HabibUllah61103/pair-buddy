.class public final Lexpo/modules/imagepicker/ExpoCropImageActivity;
.super Lcom/canhub/cropper/CropImageActivity;
.source "ExpoCropImageActivity.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nExpoCropImageActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExpoCropImageActivity.kt\nexpo/modules/imagepicker/ExpoCropImageActivity\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,173:1\n1#2:174\n327#3,4:175\n311#3:179\n327#3,4:180\n312#3:184\n*S KotlinDebug\n*F\n+ 1 ExpoCropImageActivity.kt\nexpo/modules/imagepicker/ExpoCropImageActivity\n*L\n75#1:175,4\n145#1:179\n145#1:180,4\n145#1:184\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0012\u0010\u0008\u001a\u00020\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0016J\u0008\u0010\u000c\u001a\u00020\tH\u0014J\u0010\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\u0010\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\u0010\u0010\u0012\u001a\u00020\t2\u0006\u0010\u0013\u001a\u00020\u0007H\u0016J\u0018\u0010\u0014\u001a\u00020\t2\u0006\u0010\u0015\u001a\u00020\u000e2\u0006\u0010\u0016\u001a\u00020\u0017H\u0002J\n\u0010\u0018\u001a\u0004\u0018\u00010\u0017H\u0002J\u001d\u0010\u0019\u001a\u0010\u0012\u000c\u0012\n \u001c*\u0004\u0018\u00010\u001b0\u001b0\u001aH\u0002\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u0010\u0010\u001f\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\u0010H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006 "
    }
    d2 = {
        "Lexpo/modules/imagepicker/ExpoCropImageActivity;",
        "Lcom/canhub/cropper/CropImageActivity;",
        "<init>",
        "()V",
        "currentIconColor",
        "",
        "cropImageViewRef",
        "Lcom/canhub/cropper/CropImageView;",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onDestroy",
        "onCreateOptionsMenu",
        "",
        "menu",
        "Landroid/view/Menu;",
        "onPrepareOptionsMenu",
        "setCropImageView",
        "cropImageView",
        "applyCustomization",
        "isNight",
        "options",
        "Lcom/canhub/cropper/CropImageOptions;",
        "getCropOptions",
        "invokeSetCustomizations",
        "Lkotlin/Result;",
        "",
        "kotlin.jvm.PlatformType",
        "invokeSetCustomizations-d1pmJ48",
        "()Ljava/lang/Object;",
        "tintAllMenuItems",
        "expo-image-picker_release"
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
.field private cropImageViewRef:Lcom/canhub/cropper/CropImageView;

.field private currentIconColor:I


# direct methods
.method public static synthetic $r8$lambda$MkQz1crjDAvMJLUZlzKEc3_SYxM(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 0

    invoke-static {p0, p1}, Lexpo/modules/imagepicker/ExpoCropImageActivity;->setCropImageView$lambda$3(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$bn4najCnvcVhyv-FAI0aT8l3oXM(Landroid/view/View;Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 0

    invoke-static {p0, p1, p2}, Lexpo/modules/imagepicker/ExpoCropImageActivity;->applyCustomization$lambda$8$lambda$7(Landroid/view/View;Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Lcom/canhub/cropper/CropImageActivity;-><init>()V

    const/high16 v0, -0x1000000

    .line 27
    iput v0, p0, Lexpo/modules/imagepicker/ExpoCropImageActivity;->currentIconColor:I

    return-void
.end method

.method private final applyCustomization(ZLcom/canhub/cropper/CropImageOptions;)V
    .locals 11

    const/high16 v0, -0x1000000

    const/4 v1, -0x1

    if-eqz p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz p1, :cond_1

    move v0, v1

    .line 90
    :cond_1
    sget-object v3, Lexpo/modules/imagepicker/ExpoCropImageUtils;->INSTANCE:Lexpo/modules/imagepicker/ExpoCropImageUtils;

    invoke-virtual {p0}, Lexpo/modules/imagepicker/ExpoCropImageActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    const-string v5, "getTheme(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v6, Lexpo/modules/imagepicker/R$attr;->expoCropBackButtonIconColor:I

    invoke-virtual {v3, v4, v6}, Lexpo/modules/imagepicker/ExpoCropImageUtils;->getThemeColor(Landroid/content/res/Resources$Theme;I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "getResources(...)"

    if-nez v3, :cond_2

    .line 91
    sget-object v3, Lexpo/modules/imagepicker/ExpoCropImageUtils;->INSTANCE:Lexpo/modules/imagepicker/ExpoCropImageUtils;

    invoke-virtual {p0}, Lexpo/modules/imagepicker/ExpoCropImageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v7, Lexpo/modules/imagepicker/R$color;->expoCropBackButtonIconColor:I

    invoke-virtual {v3, v6, v7}, Lexpo/modules/imagepicker/ExpoCropImageUtils;->getColorResource(Landroid/content/res/Resources;I)Ljava/lang/Integer;

    move-result-object v3

    .line 92
    :cond_2
    sget-object v6, Lexpo/modules/imagepicker/ExpoCropImageUtils;->INSTANCE:Lexpo/modules/imagepicker/ExpoCropImageUtils;

    invoke-virtual {p0}, Lexpo/modules/imagepicker/ExpoCropImageActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    invoke-static {v7, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v8, Lexpo/modules/imagepicker/R$attr;->expoCropBackgroundColor:I

    invoke-virtual {v6, v7, v8}, Lexpo/modules/imagepicker/ExpoCropImageUtils;->getThemeColor(Landroid/content/res/Resources$Theme;I)Ljava/lang/Integer;

    move-result-object v6

    if-nez v6, :cond_3

    .line 93
    sget-object v6, Lexpo/modules/imagepicker/ExpoCropImageUtils;->INSTANCE:Lexpo/modules/imagepicker/ExpoCropImageUtils;

    invoke-virtual {p0}, Lexpo/modules/imagepicker/ExpoCropImageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-static {v7, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v8, Lexpo/modules/imagepicker/R$color;->expoCropBackgroundColor:I

    invoke-virtual {v6, v7, v8}, Lexpo/modules/imagepicker/ExpoCropImageUtils;->getColorResource(Landroid/content/res/Resources;I)Ljava/lang/Integer;

    move-result-object v6

    .line 94
    :cond_3
    sget-object v7, Lexpo/modules/imagepicker/ExpoCropImageUtils;->INSTANCE:Lexpo/modules/imagepicker/ExpoCropImageUtils;

    invoke-virtual {p0}, Lexpo/modules/imagepicker/ExpoCropImageActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    invoke-static {v8, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v9, Lexpo/modules/imagepicker/R$attr;->expoCropToolbarActionTextColor:I

    invoke-virtual {v7, v8, v9}, Lexpo/modules/imagepicker/ExpoCropImageUtils;->getThemeColor(Landroid/content/res/Resources$Theme;I)Ljava/lang/Integer;

    move-result-object v7

    if-nez v7, :cond_4

    .line 95
    sget-object v7, Lexpo/modules/imagepicker/ExpoCropImageUtils;->INSTANCE:Lexpo/modules/imagepicker/ExpoCropImageUtils;

    invoke-virtual {p0}, Lexpo/modules/imagepicker/ExpoCropImageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-static {v8, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v9, Lexpo/modules/imagepicker/R$color;->expoCropToolbarActionTextColor:I

    invoke-virtual {v7, v8, v9}, Lexpo/modules/imagepicker/ExpoCropImageUtils;->getColorResource(Landroid/content/res/Resources;I)Ljava/lang/Integer;

    move-result-object v7

    .line 96
    :cond_4
    sget-object v8, Lexpo/modules/imagepicker/ExpoCropImageUtils;->INSTANCE:Lexpo/modules/imagepicker/ExpoCropImageUtils;

    invoke-virtual {p0}, Lexpo/modules/imagepicker/ExpoCropImageActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v9

    invoke-static {v9, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v10, Lexpo/modules/imagepicker/R$attr;->expoCropToolbarColor:I

    invoke-virtual {v8, v9, v10}, Lexpo/modules/imagepicker/ExpoCropImageUtils;->getThemeColor(Landroid/content/res/Resources$Theme;I)Ljava/lang/Integer;

    move-result-object v8

    if-nez v8, :cond_5

    .line 97
    sget-object v8, Lexpo/modules/imagepicker/ExpoCropImageUtils;->INSTANCE:Lexpo/modules/imagepicker/ExpoCropImageUtils;

    invoke-virtual {p0}, Lexpo/modules/imagepicker/ExpoCropImageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-static {v9, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v10, Lexpo/modules/imagepicker/R$color;->expoCropToolbarColor:I

    invoke-virtual {v8, v9, v10}, Lexpo/modules/imagepicker/ExpoCropImageUtils;->getColorResource(Landroid/content/res/Resources;I)Ljava/lang/Integer;

    move-result-object v8

    .line 98
    :cond_5
    sget-object v9, Lexpo/modules/imagepicker/ExpoCropImageUtils;->INSTANCE:Lexpo/modules/imagepicker/ExpoCropImageUtils;

    invoke-virtual {p0}, Lexpo/modules/imagepicker/ExpoCropImageActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v10

    invoke-static {v10, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v5, Lexpo/modules/imagepicker/R$attr;->expoCropToolbarIconColor:I

    invoke-virtual {v9, v10, v5}, Lexpo/modules/imagepicker/ExpoCropImageUtils;->getThemeColor(Landroid/content/res/Resources$Theme;I)Ljava/lang/Integer;

    move-result-object v5

    if-nez v5, :cond_6

    .line 99
    sget-object v5, Lexpo/modules/imagepicker/ExpoCropImageUtils;->INSTANCE:Lexpo/modules/imagepicker/ExpoCropImageUtils;

    invoke-virtual {p0}, Lexpo/modules/imagepicker/ExpoCropImageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-static {v9, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v4, Lexpo/modules/imagepicker/R$color;->expoCropToolbarIconColor:I

    invoke-virtual {v5, v9, v4}, Lexpo/modules/imagepicker/ExpoCropImageUtils;->getColorResource(Landroid/content/res/Resources;I)Ljava/lang/Integer;

    move-result-object v5

    :cond_6
    if-eqz v6, :cond_7

    .line 101
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_1

    :cond_7
    move v4, v2

    :goto_1
    if-eqz v8, :cond_8

    .line 102
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :cond_8
    if-eqz v5, :cond_9

    .line 103
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_2

    :cond_9
    move v5, v0

    .line 106
    :goto_2
    iput v5, p0, Lexpo/modules/imagepicker/ExpoCropImageActivity;->currentIconColor:I

    .line 109
    invoke-virtual {p0}, Lexpo/modules/imagepicker/ExpoCropImageActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v6

    if-eqz v6, :cond_a

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Landroidx/appcompat/app/ActionBar;->setElevation(F)V

    .line 111
    :cond_a
    iput v4, p2, Lcom/canhub/cropper/CropImageOptions;->activityBackgroundColor:I

    .line 112
    iput v5, p2, Lcom/canhub/cropper/CropImageOptions;->activityMenuIconColor:I

    if-nez v7, :cond_b

    .line 113
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    :cond_b
    iput-object v7, p2, Lcom/canhub/cropper/CropImageOptions;->activityMenuTextColor:Ljava/lang/Integer;

    if-nez v3, :cond_c

    .line 114
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :cond_c
    iput-object v3, p2, Lcom/canhub/cropper/CropImageOptions;->toolbarBackButtonColor:Ljava/lang/Integer;

    .line 115
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p2, Lcom/canhub/cropper/CropImageOptions;->toolbarColor:Ljava/lang/Integer;

    .line 116
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p2, Lcom/canhub/cropper/CropImageOptions;->toolbarTitleColor:Ljava/lang/Integer;

    .line 118
    invoke-virtual {p0}, Lexpo/modules/imagepicker/ExpoCropImageActivity;->getWindow()Landroid/view/Window;

    move-result-object p2

    .line 120
    new-instance v0, Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 123
    invoke-static {p2}, Landroidx/core/view/WindowCompat;->enableEdgeToEdge(Landroid/view/Window;)V

    .line 126
    new-instance v2, Landroidx/core/view/WindowInsetsControllerCompat;

    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-direct {v2, p2, v3}, Landroidx/core/view/WindowInsetsControllerCompat;-><init>(Landroid/view/Window;Landroid/view/View;)V

    xor-int/lit8 v3, p1, 0x1

    .line 127
    invoke-virtual {v2, v3}, Landroidx/core/view/WindowInsetsControllerCompat;->setAppearanceLightStatusBars(Z)V

    xor-int/lit8 p1, p1, 0x1

    .line 128
    invoke-virtual {v2, p1}, Landroidx/core/view/WindowInsetsControllerCompat;->setAppearanceLightNavigationBars(Z)V

    .line 132
    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 137
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, 0x0

    invoke-direct {p1, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 135
    invoke-virtual {p2, v0, p1}, Landroid/view/Window;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    new-instance p2, Lexpo/modules/imagepicker/ExpoCropImageActivity$$ExternalSyntheticLambda0;

    invoke-direct {p2, v0}, Lexpo/modules/imagepicker/ExpoCropImageActivity$$ExternalSyntheticLambda0;-><init>(Landroid/view/View;)V

    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    return-void
.end method

.method private static final applyCustomization$lambda$8$lambda$7(Landroid/view/View;Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 1

    const-string v0, "<unused var>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "insets"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->statusBars()I

    move-result p1

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->displayCutout()I

    move-result v0

    or-int/2addr p1, v0

    .line 142
    invoke-virtual {p2, p1}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object p1

    const-string v0, "getInsets(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 145
    iget p1, p1, Landroidx/core/graphics/Insets;->top:I

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 182
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p2

    .line 180
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type android.view.ViewGroup.LayoutParams"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final getCropOptions()Lcom/canhub/cropper/CropImageOptions;
    .locals 3

    const/4 v0, 0x0

    .line 153
    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v1, p0

    check-cast v1, Lexpo/modules/imagepicker/ExpoCropImageActivity;

    .line 154
    const-class v1, Lcom/canhub/cropper/CropImageActivity;

    const-string v2, "cropImageOptions"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    .line 155
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 156
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 154
    instance-of v2, v1, Lcom/canhub/cropper/CropImageOptions;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/canhub/cropper/CropImageOptions;

    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 153
    :goto_0
    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 157
    :goto_1
    invoke-static {v1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_2

    :cond_1
    move-object v0, v1

    :goto_2
    check-cast v0, Lcom/canhub/cropper/CropImageOptions;

    return-object v0
.end method

.method private final invokeSetCustomizations-d1pmJ48()Ljava/lang/Object;
    .locals 4

    .line 160
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    check-cast v0, Lexpo/modules/imagepicker/ExpoCropImageActivity;

    .line 161
    const-class v0, Lcom/canhub/cropper/CropImageActivity;

    const-string v1, "setCustomizations"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    .line 162
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 163
    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 160
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static final setCropImageView$lambda$3(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 6

    const-string v0, "view"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "insets"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    move-result v0

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->displayCutout()I

    move-result v1

    or-int/2addr v0, v1

    .line 71
    invoke-virtual {p1, v0}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object v0

    const-string v1, "getInsets(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_0

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    check-cast v1, Landroid/view/ViewGroup$LayoutParams;

    .line 176
    move-object v2, v1

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 76
    iget v3, v0, Landroidx/core/graphics/Insets;->left:I

    iget v4, v0, Landroidx/core/graphics/Insets;->top:I

    iget v5, v0, Landroidx/core/graphics/Insets;->right:I

    iget v0, v0, Landroidx/core/graphics/Insets;->bottom:I

    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 177
    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p1

    .line 175
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final tintAllMenuItems(Landroid/view/Menu;)V
    .locals 4

    .line 167
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 168
    invoke-interface {p1, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_0

    iget v3, p0, Lexpo/modules/imagepicker/ExpoCropImageActivity;->currentIconColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 32
    invoke-super {p0, p1}, Lcom/canhub/cropper/CropImageActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    invoke-direct {p0}, Lexpo/modules/imagepicker/ExpoCropImageActivity;->getCropOptions()Lcom/canhub/cropper/CropImageOptions;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 36
    invoke-virtual {p0}, Lexpo/modules/imagepicker/ExpoCropImageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 37
    :goto_0
    invoke-direct {p0, v0, p1}, Lexpo/modules/imagepicker/ExpoCropImageActivity;->applyCustomization(ZLcom/canhub/cropper/CropImageOptions;)V

    .line 38
    invoke-direct {p0}, Lexpo/modules/imagepicker/ExpoCropImageActivity;->invokeSetCustomizations-d1pmJ48()Ljava/lang/Object;

    .line 39
    invoke-virtual {p0}, Lexpo/modules/imagepicker/ExpoCropImageActivity;->invalidateOptionsMenu()V

    :cond_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-super {p0, p1}, Lcom/canhub/cropper/CropImageActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    .line 54
    invoke-direct {p0, p1}, Lexpo/modules/imagepicker/ExpoCropImageActivity;->tintAllMenuItems(Landroid/view/Menu;)V

    return v0
.end method

.method protected onDestroy()V
    .locals 2

    .line 44
    invoke-virtual {p0}, Lexpo/modules/imagepicker/ExpoCropImageActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    .line 46
    iget-object v0, p0, Lexpo/modules/imagepicker/ExpoCropImageActivity;->cropImageViewRef:Lcom/canhub/cropper/CropImageView;

    if-eqz v0, :cond_0

    check-cast v0, Landroid/view/View;

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    .line 47
    :cond_0
    iput-object v1, p0, Lexpo/modules/imagepicker/ExpoCropImageActivity;->cropImageViewRef:Lcom/canhub/cropper/CropImageView;

    .line 49
    invoke-super {p0}, Lcom/canhub/cropper/CropImageActivity;->onDestroy()V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-super {p0, p1}, Lcom/canhub/cropper/CropImageActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    .line 60
    invoke-direct {p0, p1}, Lexpo/modules/imagepicker/ExpoCropImageActivity;->tintAllMenuItems(Landroid/view/Menu;)V

    return v0
.end method

.method public setCropImageView(Lcom/canhub/cropper/CropImageView;)V
    .locals 1

    const-string v0, "cropImageView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-super {p0, p1}, Lcom/canhub/cropper/CropImageActivity;->setCropImageView(Lcom/canhub/cropper/CropImageView;)V

    .line 67
    iput-object p1, p0, Lexpo/modules/imagepicker/ExpoCropImageActivity;->cropImageViewRef:Lcom/canhub/cropper/CropImageView;

    .line 70
    check-cast p1, Landroid/view/View;

    new-instance v0, Lexpo/modules/imagepicker/ExpoCropImageActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lexpo/modules/imagepicker/ExpoCropImageActivity$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    return-void
.end method
