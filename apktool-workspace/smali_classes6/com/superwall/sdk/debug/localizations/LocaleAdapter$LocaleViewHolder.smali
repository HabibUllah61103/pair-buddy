.class public final Lcom/superwall/sdk/debug/localizations/LocaleAdapter$LocaleViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "LocalizationAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/superwall/sdk/debug/localizations/LocaleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LocaleViewHolder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\"\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0012\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\n0\u000eR\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/superwall/sdk/debug/localizations/LocaleAdapter$LocaleViewHolder;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "itemView",
        "Landroid/view/View;",
        "<init>",
        "(Landroid/view/View;)V",
        "languageTextView",
        "Landroid/widget/TextView;",
        "countryTextView",
        "bind",
        "",
        "localizationOption",
        "Lcom/superwall/sdk/debug/localizations/LocalizationOption;",
        "onLocaleSelected",
        "Lkotlin/Function1;",
        "",
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
.field private final countryTextView:Landroid/widget/TextView;

.field private final languageTextView:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$Al18pj3Z0zGEdBDA7_V14EK5Pqc(Lkotlin/jvm/functions/Function1;Lcom/superwall/sdk/debug/localizations/LocalizationOption;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/superwall/sdk/debug/localizations/LocaleAdapter$LocaleViewHolder;->bind$lambda$0(Lkotlin/jvm/functions/Function1;Lcom/superwall/sdk/debug/localizations/LocalizationOption;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 89
    sget v0, Lcom/superwall/sdk/R$id;->language_text_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/superwall/sdk/debug/localizations/LocaleAdapter$LocaleViewHolder;->languageTextView:Landroid/widget/TextView;

    .line 90
    sget v0, Lcom/superwall/sdk/R$id;->country_text_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/superwall/sdk/debug/localizations/LocaleAdapter$LocaleViewHolder;->countryTextView:Landroid/widget/TextView;

    return-void
.end method

.method private static final bind$lambda$0(Lkotlin/jvm/functions/Function1;Lcom/superwall/sdk/debug/localizations/LocalizationOption;Landroid/view/View;)V
    .locals 0

    .line 98
    invoke-virtual {p1}, Lcom/superwall/sdk/debug/localizations/LocalizationOption;->getLocale()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final bind(Lcom/superwall/sdk/debug/localizations/LocalizationOption;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/superwall/sdk/debug/localizations/LocalizationOption;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "localizationOption"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onLocaleSelected"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/superwall/sdk/debug/localizations/LocaleAdapter$LocaleViewHolder;->languageTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/superwall/sdk/debug/localizations/LocalizationOption;->getDescription()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v0, p0, Lcom/superwall/sdk/debug/localizations/LocaleAdapter$LocaleViewHolder;->countryTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/superwall/sdk/debug/localizations/LocalizationOption;->getLocale()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    iget-object v0, p0, Lcom/superwall/sdk/debug/localizations/LocaleAdapter$LocaleViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/superwall/sdk/debug/localizations/LocaleAdapter$LocaleViewHolder$$ExternalSyntheticLambda0;

    invoke-direct {v1, p2, p1}, Lcom/superwall/sdk/debug/localizations/LocaleAdapter$LocaleViewHolder$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;Lcom/superwall/sdk/debug/localizations/LocalizationOption;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
