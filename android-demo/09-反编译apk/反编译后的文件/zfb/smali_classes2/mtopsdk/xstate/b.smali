.class final Lmtopsdk/xstate/b;
.super Lmtopsdk/xstate/aidl/IXState$Stub;
.source "XStateService.java"


# instance fields
.field final synthetic a:Lmtopsdk/xstate/XStateService;


# direct methods
.method public constructor <init>(Lmtopsdk/xstate/XStateService;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lmtopsdk/xstate/b;->a:Lmtopsdk/xstate/XStateService;

    invoke-direct {p0}, Lmtopsdk/xstate/aidl/IXState$Stub;-><init>()V

    .line 51
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    invoke-static {p1}, Lmtopsdk/xstate/XStateDelegate;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a()V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lmtopsdk/xstate/b;->a:Lmtopsdk/xstate/XStateService;

    invoke-virtual {v0}, Lmtopsdk/xstate/XStateService;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lmtopsdk/xstate/XStateDelegate;->a(Landroid/content/Context;)V

    .line 66
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 60
    invoke-static {p1, p2}, Lmtopsdk/xstate/XStateDelegate;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    invoke-static {p1}, Lmtopsdk/xstate/XStateDelegate;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 70
    invoke-static {}, Lmtopsdk/xstate/XStateDelegate;->a()V

    .line 71
    return-void
.end method
