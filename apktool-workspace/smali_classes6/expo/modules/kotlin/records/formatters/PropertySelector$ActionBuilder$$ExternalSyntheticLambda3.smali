.class public final synthetic Lexpo/modules/kotlin/records/formatters/PropertySelector$ActionBuilder$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Lexpo/modules/kotlin/records/formatters/ValueSelector;


# direct methods
.method public synthetic constructor <init>(Lexpo/modules/kotlin/records/formatters/ValueSelector;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lexpo/modules/kotlin/records/formatters/PropertySelector$ActionBuilder$$ExternalSyntheticLambda3;->f$0:Lexpo/modules/kotlin/records/formatters/ValueSelector;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lexpo/modules/kotlin/records/formatters/PropertySelector$ActionBuilder$$ExternalSyntheticLambda3;->f$0:Lexpo/modules/kotlin/records/formatters/ValueSelector;

    check-cast p1, Lexpo/modules/kotlin/records/Record;

    invoke-static {v0, p1, p2}, Lexpo/modules/kotlin/records/formatters/PropertySelector$ActionBuilder;->$r8$lambda$F5xUpZAyawhAsFqfJWj9KSlXxCY(Lexpo/modules/kotlin/records/formatters/ValueSelector;Lexpo/modules/kotlin/records/Record;Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
