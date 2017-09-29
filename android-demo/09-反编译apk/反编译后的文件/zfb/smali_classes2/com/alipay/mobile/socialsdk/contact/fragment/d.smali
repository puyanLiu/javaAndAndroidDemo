.class final Lcom/alipay/mobile/socialsdk/contact/fragment/d;
.super Lcom/googlecode/androidannotations/api/BackgroundExecutor$Task;
.source "ChatRoomSelectPeopleFragment_.java"


# instance fields
.field final synthetic a:Landroid/database/Cursor;

.field final synthetic b:Lcom/alipay/mobile/socialsdk/contact/fragment/ChatRoomSelectPeopleFragment_;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/contact/fragment/ChatRoomSelectPeopleFragment_;Ljava/lang/String;Ljava/lang/String;Landroid/database/Cursor;)V
    .locals 1

    .prologue
    .line 139
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/d;->b:Lcom/alipay/mobile/socialsdk/contact/fragment/ChatRoomSelectPeopleFragment_;

    iput-object p4, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/d;->a:Landroid/database/Cursor;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p3}, Lcom/googlecode/androidannotations/api/BackgroundExecutor$Task;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final execute()V
    .locals 3

    .prologue
    .line 144
    :try_start_0
    new-instance v0, Lcom/alipay/mobile/socialsdk/contact/fragment/e;

    const-string/jumbo v1, ""

    const-string/jumbo v2, ""

    invoke-direct {v0, p0, v1, v2}, Lcom/alipay/mobile/socialsdk/contact/fragment/e;-><init>(Lcom/alipay/mobile/socialsdk/contact/fragment/d;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Lcom/googlecode/androidannotations/api/BackgroundExecutor$Task;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    :goto_0
    return-void

    .line 156
    :catch_0
    move-exception v0

    .line 157
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
