.class final Lcom/alipay/mobile/socialsdk/contact/fragment/af;
.super Lcom/googlecode/androidannotations/api/BackgroundExecutor$Task;
.source "GroupListMainPage_.java"


# instance fields
.field final synthetic a:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

.field final synthetic b:Lcom/alipay/mobile/socialsdk/contact/model/AppExtra;

.field final synthetic c:Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage_;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage_;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;Lcom/alipay/mobile/socialsdk/contact/model/AppExtra;)V
    .locals 1

    .prologue
    .line 178
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/af;->c:Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage_;

    iput-object p4, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/af;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    iput-object p5, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/af;->b:Lcom/alipay/mobile/socialsdk/contact/model/AppExtra;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p3}, Lcom/googlecode/androidannotations/api/BackgroundExecutor$Task;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final execute()V
    .locals 3

    .prologue
    .line 183
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/af;->c:Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage_;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/af;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/af;->b:Lcom/alipay/mobile/socialsdk/contact/model/AppExtra;

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage_;->access$601(Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage_;Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;Lcom/alipay/mobile/socialsdk/contact/model/AppExtra;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    :goto_0
    return-void

    .line 184
    :catch_0
    move-exception v0

    .line 185
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
