.class final Lcom/alipay/mobile/socialsdk/contact/fragment/ag;
.super Lcom/googlecode/androidannotations/api/BackgroundExecutor$Task;
.source "GroupListMainPage_.java"


# instance fields
.field final synthetic a:Landroid/database/Cursor;

.field final synthetic b:Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage_;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage_;Ljava/lang/String;Ljava/lang/String;Landroid/database/Cursor;)V
    .locals 1

    .prologue
    .line 194
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ag;->b:Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage_;

    iput-object p4, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ag;->a:Landroid/database/Cursor;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p3}, Lcom/googlecode/androidannotations/api/BackgroundExecutor$Task;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final execute()V
    .locals 3

    .prologue
    .line 199
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ag;->b:Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage_;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ag;->a:Landroid/database/Cursor;

    invoke-static {v0, v1}, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage_;->access$701(Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage_;Landroid/database/Cursor;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    :goto_0
    return-void

    .line 200
    :catch_0
    move-exception v0

    .line 201
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
