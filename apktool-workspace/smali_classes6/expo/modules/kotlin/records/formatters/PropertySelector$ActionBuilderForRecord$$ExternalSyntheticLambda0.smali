.class public final synthetic Lexpo/modules/kotlin/records/formatters/PropertySelector$ActionBuilderForRecord$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lexpo/modules/kotlin/records/formatters/PropertySelector$ActionBuilderForRecord$$ExternalSyntheticLambda0;->f$0:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lexpo/modules/kotlin/records/formatters/PropertySelector$ActionBuilderForRecord$$ExternalSyntheticLambda0;->f$0:Lkotlin/jvm/functions/Function1;

    check-cast p1, Lexpo/modules/kotlin/records/Record;

    invoke-static {v0, p1}, Lexpo/modules/kotlin/records/formatters/PropertySelector$ActionBuilderForRecord;->$r8$lambda$pbO7Fsv_g-PfIw2OblSMZ-vnc1Y(Lkotlin/jvm/functions/Function1;Lexpo/modules/kotlin/records/Record;)Lexpo/modules/kotlin/records/formatters/FormattedRecord;

    move-result-object p1

    return-object p1
.end method
