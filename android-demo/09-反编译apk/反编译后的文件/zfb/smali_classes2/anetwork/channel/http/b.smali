.class final Lanetwork/channel/http/b;
.super Ljava/lang/Object;
.source "NetworkSdkSetting.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lanetwork/channel/http/b;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lanetwork/channel/http/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lmtopsdk/xstate/XState;->a(Landroid/content/Context;)V

    .line 55
    return-void
.end method
