.class final Lcom/alipay/mobile/socialsdk/contact/ui/an;
.super Lcom/googlecode/androidannotations/api/BackgroundExecutor$Task;
.source "PersonalProfileActivity_.java"


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity_;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity_;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 266
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/an;->a:Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity_;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p3}, Lcom/googlecode/androidannotations/api/BackgroundExecutor$Task;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final execute()V
    .locals 3

    .prologue
    .line 271
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/an;->a:Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity_;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity_;->g(Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity_;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    :goto_0
    return-void

    .line 272
    :catch_0
    move-exception v0

    .line 273
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
