.class final Lcom/alipay/mobile/socialsdk/contact/fragment/bl;
.super Lcom/googlecode/androidannotations/api/BackgroundExecutor$Task;
.source "MultiFriendSelectFragment_.java"


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/contact/fragment/bk;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/contact/fragment/bk;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 111
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/bl;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/bk;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p3}, Lcom/googlecode/androidannotations/api/BackgroundExecutor$Task;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final execute()V
    .locals 3

    .prologue
    .line 116
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/bl;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/bk;

    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/contact/fragment/bk;->b:Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment_;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/bl;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/bk;

    iget-object v1, v1, Lcom/alipay/mobile/socialsdk/contact/fragment/bk;->a:Landroid/database/Cursor;

    invoke-static {v0, v1}, Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment_;->access$101(Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment_;Landroid/database/Cursor;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :goto_0
    return-void

    .line 117
    :catch_0
    move-exception v0

    .line 118
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
