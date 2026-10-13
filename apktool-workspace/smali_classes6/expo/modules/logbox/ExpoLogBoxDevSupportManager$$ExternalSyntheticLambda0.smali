.class public final synthetic Lexpo/modules/logbox/ExpoLogBoxDevSupportManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lexpo/modules/logbox/ExpoLogBoxDevSupportManager;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:[Lcom/facebook/react/devsupport/interfaces/StackFrame;


# direct methods
.method public synthetic constructor <init>(Lexpo/modules/logbox/ExpoLogBoxDevSupportManager;Ljava/lang/String;[Lcom/facebook/react/devsupport/interfaces/StackFrame;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lexpo/modules/logbox/ExpoLogBoxDevSupportManager$$ExternalSyntheticLambda0;->f$0:Lexpo/modules/logbox/ExpoLogBoxDevSupportManager;

    iput-object p2, p0, Lexpo/modules/logbox/ExpoLogBoxDevSupportManager$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lexpo/modules/logbox/ExpoLogBoxDevSupportManager$$ExternalSyntheticLambda0;->f$2:[Lcom/facebook/react/devsupport/interfaces/StackFrame;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lexpo/modules/logbox/ExpoLogBoxDevSupportManager$$ExternalSyntheticLambda0;->f$0:Lexpo/modules/logbox/ExpoLogBoxDevSupportManager;

    iget-object v1, p0, Lexpo/modules/logbox/ExpoLogBoxDevSupportManager$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lexpo/modules/logbox/ExpoLogBoxDevSupportManager$$ExternalSyntheticLambda0;->f$2:[Lcom/facebook/react/devsupport/interfaces/StackFrame;

    invoke-static {v0, v1, v2}, Lexpo/modules/logbox/ExpoLogBoxDevSupportManager;->$r8$lambda$yJjlgvgjp7kGXCpBOHYkUMDlAFE(Lexpo/modules/logbox/ExpoLogBoxDevSupportManager;Ljava/lang/String;[Lcom/facebook/react/devsupport/interfaces/StackFrame;)V

    return-void
.end method
