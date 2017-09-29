.class final Lcom/alipay/mobile/socialsdk/contact/ui/t;
.super Lcom/googlecode/androidannotations/api/BackgroundExecutor$Task;
.source "FriendVerifyActivity_.java"


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alipay/mobile/socialsdk/contact/ui/FriendVerifyActivity_;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/contact/ui/FriendVerifyActivity_;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 71
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/t;->c:Lcom/alipay/mobile/socialsdk/contact/ui/FriendVerifyActivity_;

    iput-object p4, p0, Lcom/alipay/mobile/socialsdk/contact/ui/t;->a:Ljava/lang/String;

    iput-object p5, p0, Lcom/alipay/mobile/socialsdk/contact/ui/t;->b:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p3}, Lcom/googlecode/androidannotations/api/BackgroundExecutor$Task;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final execute()V
    .locals 3

    .prologue
    .line 76
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/t;->c:Lcom/alipay/mobile/socialsdk/contact/ui/FriendVerifyActivity_;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/t;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/ui/t;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/socialsdk/contact/ui/FriendVerifyActivity_;->a(Lcom/alipay/mobile/socialsdk/contact/ui/FriendVerifyActivity_;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :goto_0
    return-void

    .line 77
    :catch_0
    move-exception v0

    .line 78
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
