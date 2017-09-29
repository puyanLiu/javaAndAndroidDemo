.class final Lcom/alipay/mobile/socialsdk/contact/ui/bg;
.super Lcom/googlecode/androidannotations/api/BackgroundExecutor$Task;
.source "RealNameSettingActivity_.java"


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/alipay/mobile/socialsdk/contact/ui/RealNameSettingActivity_;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/contact/ui/RealNameSettingActivity_;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 88
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/bg;->b:Lcom/alipay/mobile/socialsdk/contact/ui/RealNameSettingActivity_;

    iput-boolean p4, p0, Lcom/alipay/mobile/socialsdk/contact/ui/bg;->a:Z

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p3}, Lcom/googlecode/androidannotations/api/BackgroundExecutor$Task;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final execute()V
    .locals 3

    .prologue
    .line 93
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/bg;->b:Lcom/alipay/mobile/socialsdk/contact/ui/RealNameSettingActivity_;

    iget-boolean v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/bg;->a:Z

    invoke-static {v0, v1}, Lcom/alipay/mobile/socialsdk/contact/ui/RealNameSettingActivity_;->a(Lcom/alipay/mobile/socialsdk/contact/ui/RealNameSettingActivity_;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :goto_0
    return-void

    .line 94
    :catch_0
    move-exception v0

    .line 95
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
